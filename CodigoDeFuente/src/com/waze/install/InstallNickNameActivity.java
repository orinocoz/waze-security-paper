// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.profile.ProfileLauncher;
import com.waze.profile.WelcomeDoneActivity;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

public class InstallNickNameActivity extends ActivityBase
    implements com.waze.mywaze.MyWazeNativeManager.ProfileCallback
{

    private boolean allowping;
    private MyWazeNativeManager mywazeManager;
    private NativeManager nativeManager;
    private TextView nickView;
    private String nickname;
    private String password;
    private String username;

    public InstallNickNameActivity()
    {
        nativeManager = AppService.getNativeManager();
        mywazeManager = MyWazeNativeManager.getInstance();
        MyWazeNativeManager.getInstance().getProfileSettings(this);
    }

    public void onBackPressed()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030099);
        android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

            final InstallNickNameActivity this$0;

            public void onClick(View view1)
            {
                Intent intent = new Intent(InstallNickNameActivity.this, com/waze/profile/WelcomeDoneActivity);
                startActivityForResult(intent, 0);
                NativeManager.getInstance().SignUplogAnalytics("NICKNAME_NEXT", null, null, false);
                setResult(3);
                finish();
            }

            
            {
                this$0 = InstallNickNameActivity.this;
                super();
            }
        };
        if (nativeManager.getLanguageRtl())
        {
            ViewGroup viewgroup = (ViewGroup)findViewById(0x7f0904bb);
            View view = viewgroup.findViewById(0x7f090384);
            viewgroup.removeView(view);
            viewgroup.addView(view);
        }
        ((TitleBar)findViewById(0x7f09003f)).setOnClickCloseListener(onclicklistener);
        ((TitleBar)findViewById(0x7f09003f)).init(this, nativeManager.getLanguageString(DisplayStrings.DS_NICKNAME), nativeManager.getLanguageString(DisplayStrings.DS_NEXT));
        ((TitleBar)findViewById(0x7f09003f)).setUpButtonDisabled();
        ((TextView)findViewById(0x7f090384)).setText(nativeManager.getLanguageString(DisplayStrings.DS_NICKNAME));
        ((TextView)findViewById(0x7f0904bc)).setText(nativeManager.getLanguageString(DisplayStrings.DS_HOW_YOUR_NICKNAME_IS_DISPLAYED_TO_OTHERS));
        ((TextView)findViewById(0x7f0904bd)).setText(nativeManager.getLanguageString(DisplayStrings.DS_YOUR_NICKNAME_EXPLAINED));
        ((TextView)findViewById(0x7f0904be)).setText(nativeManager.getLanguageString(DisplayStrings.DS_REMEMBER_WAZE_GETS_A_WHOLE_LOT_MORE_FUN));
        nickView = (TextView)findViewById(0x7f090385);
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            nickname = bundle1.getString("com.waze.mywaze.nickname");
            if (nickname != null)
            {
                nickView.setText(nickname);
            }
            username = bundle1.getString("com.waze.mywaze.username");
            password = bundle1.getString("com.waze.mywaze.password");
            bundle1.getBoolean("com.waze.mywaze.pingable");
        }
        nickView.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final InstallNickNameActivity this$0;

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
                this$0 = InstallNickNameActivity.this;
                super();
            }
        });
    }

    protected void onDestroy()
    {
        nickname = String.valueOf(nickView.getText());
        com.waze.mywaze.MyWazeNativeManager.LoginCallback logincallback = new com.waze.mywaze.MyWazeNativeManager.LoginCallback() {

            final InstallNickNameActivity this$0;

            public void onLogin(boolean flag)
            {
                if (!flag)
                {
                    ProfileLauncher.launch(AppService.getAppContext(), true);
                }
            }

            
            {
                this$0 = InstallNickNameActivity.this;
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
        nickView.setText(nickname);
    }




}
