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
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.profile:
//            WelcomeActivity

public class RegisterActivity extends ActivityBase
{

    private TextView EmailBody;
    private TextView EmailTitile;
    private TextView emailView;
    private MyWazeNativeManager mywazeManager;
    private NativeManager nativeManager;
    private TextView nextButton;
    private TextView nickView;
    private TextView passView;
    private TextView userView;

    public RegisterActivity()
    {
        nativeManager = AppService.getNativeManager();
        mywazeManager = MyWazeNativeManager.getInstance();
    }

    public void OnResponse(boolean flag)
    {
        if (!flag)
        {
            nextButton.setEnabled(true);
            return;
        } else
        {
            NativeManager.getInstance().SignUplogAnalytics("JOIN_NEXT", null, null, true);
            setResult(3);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300be);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_PROFILE, false);
        ((TitleBar)findViewById(0x7f090058)).setUpButtonDisabled();
        ((TextView)findViewById(0x7f09055f)).setText(nativeManager.getLanguageString(DisplayStrings.DS_YOUR_DETAILS));
        ((TextView)findViewById(0x7f090041)).setText(nativeManager.getLanguageString(DisplayStrings.DS_USERNAME));
        ((TextView)findViewById(0x7f090382)).setText(nativeManager.getLanguageString(DisplayStrings.DS_PASSWORD));
        ((TextView)findViewById(0x7f090384)).setText(nativeManager.getLanguageString(DisplayStrings.DS_NICKNAME));
        ((TextView)findViewById(0x7f090563)).setText(nativeManager.getLanguageString(DisplayStrings.DS_EMAIL));
        nextButton = (TextView)findViewById(0x7f090564);
        nextButton.setText(nativeManager.getLanguageString(DisplayStrings.DS_NEXT));
        userView = (TextView)findViewById(0x7f090381);
        passView = (TextView)findViewById(0x7f090383);
        EmailTitile = (TextView)findViewById(0x7f090561);
        EmailTitile.setText(nativeManager.getLanguageString(DisplayStrings.DS_SIGN_UP_EMAIL_ADDRESS));
        nickView = (TextView)findViewById(0x7f090560);
        emailView = (TextView)findViewById(0x7f0904d0);
        EmailBody = (TextView)findViewById(0x7f090562);
        EmailBody.setText((new StringBuilder(String.valueOf(nativeManager.getLanguageString(DisplayStrings.DS_SIGN_UP_EMAIL_BODY1)))).append("\n").append(nativeManager.getLanguageString(DisplayStrings.DS_SIGN_UP_EMAIL_BODY2)).toString());
        nextButton.setOnClickListener(new android.view.View.OnClickListener() {

            final RegisterActivity this$0;

            public void onClick(View view)
            {
                String s = String.valueOf(userView.getText());
                String s1 = String.valueOf(passView.getText());
                String s2 = String.valueOf(nickView.getText());
                String s3 = String.valueOf(emailView.getText());
                if (mywazeManager.registerUser(s, s1, s1, s2, s3, false, RegisterActivity.this))
                {
                    nextButton.setEnabled(false);
                }
            }

            
            {
                this$0 = RegisterActivity.this;
                super();
            }
        });
        userView.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final RegisterActivity this$0;

            public void onFocusChange(View view, boolean flag)
            {
                if (!flag)
                {
                    String s = String.valueOf(nickView.getText());
                    if (s == null || s.length() == 0)
                    {
                        String s1 = String.valueOf(userView.getText());
                        nickView.setText(s1);
                    }
                }
            }

            
            {
                this$0 = RegisterActivity.this;
                super();
            }
        });
    }

    public void openWelcome()
    {
        AppService.showActivity(new Intent(AppService.getAppContext(), com/waze/profile/WelcomeActivity));
        finish();
    }






}
