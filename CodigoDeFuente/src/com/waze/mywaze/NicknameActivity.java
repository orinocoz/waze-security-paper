// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.profile.ProfileLauncher;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

public class NicknameActivity extends ActivityBase
    implements MyWazeNativeManager.ProfileCallback
{

    private boolean allowping;
    private String lastnickname;
    private boolean m_IsInstallation;
    private MyWazeNativeManager mywazeManager;
    private NativeManager nativeManager;
    private TextView nickView;
    private String nickname;
    private String password;
    private String username;

    public NicknameActivity()
    {
        m_IsInstallation = false;
        nativeManager = AppService.getNativeManager();
        mywazeManager = MyWazeNativeManager.getInstance();
        MyWazeNativeManager.getInstance().getProfileSettings(this);
    }

    public void onBackPressed()
    {
        if (!m_IsInstallation)
        {
            super.onBackPressed();
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030099);
        if (nativeManager.getLanguageRtl())
        {
            ViewGroup viewgroup = (ViewGroup)findViewById(0x7f0904bb);
            View view = viewgroup.findViewById(0x7f090384);
            viewgroup.removeView(view);
            viewgroup.addView(view);
        }
        ((TitleBar)findViewById(0x7f09003f)).init(this, DisplayStrings.DS_MY_NICKNAME);
        ((TextView)findViewById(0x7f090384)).setText(nativeManager.getLanguageString(DisplayStrings.DS_NICKNAME));
        ((TextView)findViewById(0x7f0904bc)).setText(nativeManager.getLanguageString(DisplayStrings.DS_HOW_YOUR_NICKNAME_IS_DISPLAYED_TO_OTHERS));
        ((TextView)findViewById(0x7f0904bd)).setText(nativeManager.getLanguageString(DisplayStrings.DS_YOUR_NICKNAME_EXPLAINED));
        ((TextView)findViewById(0x7f0904be)).setText(nativeManager.getLanguageString(DisplayStrings.DS_REMEMBER_WAZE_GETS_A_WHOLE_LOT_MORE_FUN));
        nickView = (TextView)findViewById(0x7f090385);
        m_IsInstallation = getIntent().getExtras().getBoolean("IsInstallation");
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            nickname = bundle1.getString("com.waze.mywaze.nickname");
            if (nickname != null)
            {
                nickView.setText(nickname);
                lastnickname = nickname;
            }
            username = bundle1.getString("com.waze.mywaze.username");
            password = bundle1.getString("com.waze.mywaze.password");
            bundle1.getBoolean("com.waze.mywaze.pingable");
        }
        nickView.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final NicknameActivity this$0;

            public void onFocusChange(View view1, boolean flag)
            {
                if (!flag)
                {
                    if (mywazeManager.validateNickname(String.valueOf(nickView.getText())))
                    {
                        nickname = String.valueOf(nickView.getText());
                    } else
                    if (nickname != null)
                    {
                        nickView.setText(nickname);
                        return;
                    }
                }
            }

            
            {
                this$0 = NicknameActivity.this;
                super();
            }
        });
    }

    protected void onDestroy()
    {
        nickname = String.valueOf(nickView.getText());
        MyWazeNativeManager.LoginCallback logincallback = new MyWazeNativeManager.LoginCallback() {

            final NicknameActivity this$0;

            public void onLogin(boolean flag)
            {
                if (!flag)
                {
                    ProfileLauncher.launch(AppService.getAppContext(), true);
                }
            }

            
            {
                this$0 = NicknameActivity.this;
                super();
            }
        };
        if (nickname != lastnickname)
        {
            mywazeManager.doLoginOk(username, password, nickname, allowping, logincallback);
        }
        super.onDestroy();
    }

    public void onProfile(MyWazeNativeManager.ProfileSettings profilesettings)
    {
        username = profilesettings.userName;
        password = profilesettings.password;
        nickname = profilesettings.nickName;
        allowping = profilesettings.allowPings;
        nickView.setText(nickname);
    }




}
