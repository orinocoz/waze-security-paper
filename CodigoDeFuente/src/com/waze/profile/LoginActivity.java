// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.button.AutoResizeTextButton;

// Referenced classes of package com.waze.profile:
//            ProfileLauncher

public class LoginActivity extends ActivityBase
{

    private boolean allowPings;
    private AutoResizeTextButton doneButton;
    private MyWazeNativeManager mywazeManager;
    private NativeManager nativeManager;
    private TextView nickView;
    private String nickname;
    private TextView passView;
    private String password;
    private TextView userView;
    private String username;

    public LoginActivity()
    {
        nativeManager = AppService.getNativeManager();
        mywazeManager = MyWazeNativeManager.getInstance();
    }

    private void conclude()
    {
        username = String.valueOf(userView.getText());
        password = String.valueOf(passView.getText());
        nickname = String.valueOf(nickView.getText());
        com.waze.mywaze.MyWazeNativeManager.LoginCallback logincallback = new com.waze.mywaze.MyWazeNativeManager.LoginCallback() {

            final LoginActivity this$0;

            public void onLogin(boolean flag)
            {
                if (!flag)
                {
                    ProfileLauncher.launch(AppService.getAppContext(), true);
                }
            }

            
            {
                this$0 = LoginActivity.this;
                super();
            }
        };
        mywazeManager.doLoginOk(username, password, nickname, allowPings, logincallback);
        setResult(-1);
        finish();
    }

    public void onBackPressed()
    {
        conclude();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03007a);
        doneButton = (AutoResizeTextButton)findViewById(0x7f090380);
        doneButton.setText(nativeManager.getLanguageString(DisplayStrings.DS_DONE));
        doneButton.setOnClickListener(new android.view.View.OnClickListener() {

            final LoginActivity this$0;

            public void onClick(View view)
            {
                conclude();
            }

            
            {
                this$0 = LoginActivity.this;
                super();
            }
        });
        ((TextView)findViewById(0x7f090283)).setText(nativeManager.getLanguageString(DisplayStrings.DS_LOG_IN));
        ((TextView)findViewById(0x7f090041)).setText(nativeManager.getLanguageString(DisplayStrings.DS_USER_NAME));
        ((TextView)findViewById(0x7f090382)).setText(nativeManager.getLanguageString(DisplayStrings.DS_PASSWORD));
        ((TextView)findViewById(0x7f090384)).setText(nativeManager.getLanguageString(DisplayStrings.DS_NICKNAME));
        userView = (TextView)findViewById(0x7f090381);
        passView = (TextView)findViewById(0x7f090383);
        nickView = (TextView)findViewById(0x7f090385);
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            nickname = bundle1.getString("com.waze.mywaze.nickname");
            if (nickname != null)
            {
                nickView.setText(nickname);
            }
            allowPings = bundle1.getBoolean("com.waze.mywaze.pingable");
        }
        nickView.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final LoginActivity this$0;

            public void onFocusChange(View view, boolean flag)
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
                this$0 = LoginActivity.this;
                super();
            }
        });
        userView.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final LoginActivity this$0;

            public void onFocusChange(View view, boolean flag)
            {
                if (!flag && (nickname == null || nickname.length() == 0))
                {
                    nickname = String.valueOf(userView.getText());
                    nickView.setText(nickname);
                }
            }

            
            {
                this$0 = LoginActivity.this;
                super();
            }
        });
    }






}
