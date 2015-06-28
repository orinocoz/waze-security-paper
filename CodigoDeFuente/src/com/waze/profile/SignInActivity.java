// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.install.GuidedTourActivity;
import com.waze.install.InstallNickNameActivity;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.profile:
//            RegisterActivity, ForgotPasswordActivity

public class SignInActivity extends ActivityBase
{

    private static boolean active = false;
    private MyWazeNativeManager mywazeManager;
    private NativeManager nativeManager;
    private TextView passView;
    private TextView signButton;
    private TextView userView;

    public SignInActivity()
    {
        nativeManager = AppService.getNativeManager();
        mywazeManager = MyWazeNativeManager.getInstance();
        active = true;
    }

    public static boolean isActive()
    {
        return active;
    }

    private void onJoinClicked()
    {
        NativeManager.getInstance().SignUplogAnalytics("NEW_EXISTING_JOIN", null, null, true);
        startActivityForResult(new Intent(this, com/waze/profile/RegisterActivity), 0);
    }

    private void onRemindClicked()
    {
        NativeManager.getInstance().SignUplogAnalytics("FORGOT_PASSWORD", null, null, true);
        startActivityForResult(new Intent(this, com/waze/profile/ForgotPasswordActivity), 0);
    }

    private void onSignClicked()
    {
        if (!String.valueOf(userView.getText()).equals(""))
        {
            signButton.setEnabled(false);
        }
        String s = String.valueOf(userView.getText());
        String s1 = String.valueOf(passView.getText());
        String s2 = String.valueOf(userView.getText());
        com.waze.mywaze.MyWazeNativeManager.LoginCallback logincallback = new com.waze.mywaze.MyWazeNativeManager.LoginCallback() {

            final SignInActivity this$0;

            public void onLogin(boolean flag)
            {
                if (flag)
                {
                    Intent intent = new Intent(SignInActivity.this, com/waze/install/InstallNickNameActivity);
                    intent.putExtra("IsInstallation", true);
                    startActivityForResult(intent, 0);
                    return;
                } else
                {
                    signButton.setEnabled(true);
                    return;
                }
            }

            
            {
                this$0 = SignInActivity.this;
                super();
            }
        };
        mywazeManager.doLogin(s, s1, s2, logincallback);
    }

    private void onSkipClicked()
    {
        mywazeManager.skipSignup();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03010b);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_SIGN_IN, false);
        ((TitleBar)findViewById(0x7f090058)).setUpButtonDisabled();
        ((TextView)findViewById(0x7f0906e4)).setText(nativeManager.getLanguageString(DisplayStrings.DS_NEW_TO_WAZEQ));
        ((TextView)findViewById(0x7f0903fc)).setText(nativeManager.getLanguageString(DisplayStrings.DS_ALREADY_A_WAZERQ));
        ((TextView)findViewById(0x7f0902be)).setText(nativeManager.getLanguageString(DisplayStrings.DS_REGISTERING_IS_SUPERHQUICK_AND_LETS_YOU_ENJOY_ALL_THAT_WAZE_HAS_TO_OFFER_));
        ((TextView)findViewById(0x7f090041)).setText(nativeManager.getLanguageString(DisplayStrings.DS_USERNAME));
        ((TextView)findViewById(0x7f090382)).setText(nativeManager.getLanguageString(DisplayStrings.DS_PASSWORD));
        if (AppService.getMainActivity() != null && AppService.getMainActivity().getLayoutMgr().isSplashVisible())
        {
            AppService.getMainActivity().getLayoutMgr().cancelSplash();
        }
        TextView textview = (TextView)findViewById(0x7f0906e5);
        textview.setText(nativeManager.getLanguageString(DisplayStrings.DS_SKIP));
        TextView textview1;
        TextView textview2;
        if (mywazeManager.isRandomUserNTV() && !GuidedTourActivity.IsAlreadyCreactedUser())
        {
            textview.setVisibility(8);
        } else
        {
            textview.setVisibility(0);
        }
        textview.setOnClickListener(new android.view.View.OnClickListener() {

            final SignInActivity this$0;

            public void onClick(View view)
            {
                onSkipClicked();
            }

            
            {
                this$0 = SignInActivity.this;
                super();
            }
        });
        textview1 = (TextView)findViewById(0x7f0906e6);
        textview1.setText(nativeManager.getLanguageString(DisplayStrings.DS_JOIN));
        textview1.setOnClickListener(new android.view.View.OnClickListener() {

            final SignInActivity this$0;

            public void onClick(View view)
            {
                onJoinClicked();
            }

            
            {
                this$0 = SignInActivity.this;
                super();
            }
        });
        textview2 = (TextView)findViewById(0x7f0906e7);
        textview2.setText(nativeManager.getLanguageString(DisplayStrings.DS_REMIND_ME));
        textview2.setOnClickListener(new android.view.View.OnClickListener() {

            final SignInActivity this$0;

            public void onClick(View view)
            {
                onRemindClicked();
            }

            
            {
                this$0 = SignInActivity.this;
                super();
            }
        });
        signButton = (TextView)findViewById(0x7f0903fd);
        signButton.setText(nativeManager.getLanguageString(DisplayStrings.DS_SIGN_IN));
        signButton.setOnClickListener(new android.view.View.OnClickListener() {

            final SignInActivity this$0;

            public void onClick(View view)
            {
                onSignClicked();
            }

            
            {
                this$0 = SignInActivity.this;
                super();
            }
        });
        userView = (TextView)findViewById(0x7f090381);
        passView = (TextView)findViewById(0x7f090383);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        active = false;
    }






}
