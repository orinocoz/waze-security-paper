// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.os.Bundle;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.profile:
//            ProfileLauncher

public class ProfileActivity extends ActivityBase
    implements com.waze.mywaze.MyWazeNativeManager.ProfileCallback
{

    private boolean allowping;
    private MyWazeNativeManager mywazeManager;
    private NativeManager nativeManager;
    private String nickname;
    private TextView passView;
    private String password;
    private TextView userView;
    private String username;

    public ProfileActivity()
    {
        nativeManager = AppService.getNativeManager();
        mywazeManager = MyWazeNativeManager.getInstance();
        mywazeManager.getProfileSettings(this);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300ba);
        ((TitleBar)findViewById(0x7f09003f)).init(this, DisplayStrings.DS_PROFILE);
        ((TextView)findViewById(0x7f090041)).setText(nativeManager.getLanguageString(DisplayStrings.DS_USERNAME));
        ((TextView)findViewById(0x7f090382)).setText(nativeManager.getLanguageString(DisplayStrings.DS_PASSWORD));
        ((TextView)findViewById(0x7f090556)).setText(nativeManager.getLanguageString(DisplayStrings.DS_CREDENTIALS_EXPLAINED_TEXT));
        userView = (TextView)findViewById(0x7f090381);
        passView = (TextView)findViewById(0x7f090383);
    }

    protected void onDestroy()
    {
        username = String.valueOf(userView.getText());
        password = String.valueOf(passView.getText());
        com.waze.mywaze.MyWazeNativeManager.LoginCallback logincallback = new com.waze.mywaze.MyWazeNativeManager.LoginCallback() {

            final ProfileActivity this$0;

            public void onLogin(boolean flag)
            {
                if (!flag)
                {
                    ProfileLauncher.launch(AppService.getAppContext(), true);
                }
            }

            
            {
                this$0 = ProfileActivity.this;
                super();
            }
        };
        mywazeManager.doLoginOk(username, password, nickname, allowping, logincallback);
        super.onDestroy();
    }

    public void onProfile(com.waze.mywaze.MyWazeNativeManager.ProfileSettings profilesettings)
    {
        username = profilesettings.userName;
        password = profilesettings.password;
        nickname = profilesettings.nickName;
        allowping = profilesettings.allowPings;
        if (username != null)
        {
            userView.setText(username);
        }
        if (password != null)
        {
            passView.setText(password);
        }
    }
}
