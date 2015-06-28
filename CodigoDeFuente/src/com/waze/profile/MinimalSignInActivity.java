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
import com.waze.install.InstallFacebookPrivacyActivity;
import com.waze.install.InstallNativeManager;
import com.waze.install.InstallNickNameActivity;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.profile:
//            ForgotPasswordActivity

public class MinimalSignInActivity extends ActivityBase
{

    private static boolean active = false;
    private static boolean bIsBackFromFBScreen = false;
    private static boolean bIsFacebookClicked = false;
    private static boolean bIsNew = false;
    private TextView facebookButton;
    private MyWazeNativeManager mywazeManager;
    private NativeManager nativeManager;
    private TextView passView;
    private TextView signButton;
    private TextView userView;

    public MinimalSignInActivity()
    {
        nativeManager = AppService.getNativeManager();
        mywazeManager = MyWazeNativeManager.getInstance();
        active = true;
    }

    public static boolean isActive()
    {
        return active;
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

            final MinimalSignInActivity this$0;

            public void onLogin(boolean flag)
            {
                if (flag)
                {
                    NativeManager.getInstance().SignUplogAnalytics("WAZE_SIGN_IN", null, null, false);
                    Intent intent = new Intent(MinimalSignInActivity.this, com/waze/install/InstallNickNameActivity);
                    startActivityForResult(intent, 0);
                    return;
                } else
                {
                    signButton.setEnabled(true);
                    return;
                }
            }

            
            {
                this$0 = MinimalSignInActivity.this;
                super();
            }
        };
        mywazeManager.doLogin(s, s1, s2, logincallback);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
label0:
        {
            super.onActivityResult(i, j, intent);
            bIsFacebookClicked = false;
            if (j == 0)
            {
                NativeManager.getInstance().CloseProgressPopup();
            }
            if (i == 3000)
            {
                if (j != 0)
                {
                    break label0;
                }
                NativeManager.getInstance().SignUplogAnalytics("FACEBOOK_CONNECT_BACK", null, null, true);
                bIsBackFromFBScreen = true;
            }
            return;
        }
        setResult(-1);
        finish();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030086);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_LOGIN, false);
        ((TitleBar)findViewById(0x7f090058)).setUpButtonDisabled();
        ((TextView)findViewById(0x7f0903fc)).setText(nativeManager.getLanguageString(DisplayStrings.DS_EXISTING_USERS_SIGN_IN));
        ((TextView)findViewById(0x7f090041)).setText(nativeManager.getLanguageString(DisplayStrings.DS_USERNAME));
        ((TextView)findViewById(0x7f090382)).setText(nativeManager.getLanguageString(DisplayStrings.DS_PASSWORD));
        TextView textview = (TextView)findViewById(0x7f0903fe);
        textview.setPaintFlags(8);
        textview.setText(nativeManager.getLanguageString(DisplayStrings.DS_I_FORGOT_MY_PASSWORD));
        textview.setOnClickListener(new android.view.View.OnClickListener() {

            final MinimalSignInActivity this$0;

            public void onClick(View view)
            {
                onRemindClicked();
            }

            
            {
                this$0 = MinimalSignInActivity.this;
                super();
            }
        });
        signButton = (TextView)findViewById(0x7f0903fd);
        signButton.setText(nativeManager.getLanguageString(DisplayStrings.DS_SIGN_IN));
        signButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MinimalSignInActivity this$0;

            public void onClick(View view)
            {
                onSignClicked();
            }

            
            {
                this$0 = MinimalSignInActivity.this;
                super();
            }
        });
        facebookButton = (TextView)findViewById(0x7f0903ff);
        facebookButton.setText(nativeManager.getLanguageString(DisplayStrings.DS_SIGN_UP_WITH_FACEBOOK));
        facebookButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MinimalSignInActivity this$0;

            public void onClick(View view)
            {
                MinimalSignInActivity.bIsFacebookClicked = true;
                NativeManager.getInstance().SignUplogAnalytics("FB_SIGN_IN", null, null, true);
                if (MinimalSignInActivity.bIsBackFromFBScreen)
                {
                    FacebookWrapper.getInstance().authorize(MinimalSignInActivity.this, null, false);
                    return;
                } else
                {
                    com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener ionauthorizecompletedlistener = new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

                        final _cls3 this$1;

                        public void onAuthorizeCompleted(boolean flag, int i)
                        {
                            if (i == 3)
                            {
                                NativeManager.getInstance().SignUplogAnalytics("LOGIN_FB_RESPONSE", "VAUE", "FAILURE", true);
                                NativeManager.getInstance().SignUplogAnalytics("FACEBOOK_DECLINE", null, null, true);
                            }
                            if (i == 0)
                            {
                                NativeManager nativemanager = NativeManager.getInstance();
                                nativemanager.SignUplogAnalytics("LOGIN_FB_RESPONSE", "VAUE", "SUCCESS", true);
                                nativemanager.OpenProgressPopup(nativemanager.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
                            }
                        }

            
            {
                this$1 = _cls3.this;
                super();
            }
                    };
                    FacebookWrapper.getInstance().SignIn(MinimalSignInActivity.this, ionauthorizecompletedlistener, true);
                    return;
                }
            }

            
            {
                this$0 = MinimalSignInActivity.this;
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

    public void onFacebookTokenSet()
    {
        NativeManager.getInstance().CloseProgressPopup();
        if (InstallNativeManager.IsCleanInstallation())
        {
            if (MyWazeNativeManager.getInstance().getUserTypeNTV() == 1)
            {
                Intent intent1 = new Intent(this, com/waze/install/InstallFacebookPrivacyActivity);
                intent1.putExtra("isNew", false);
                bIsNew = false;
                startActivityForResult(intent1, 3000);
                return;
            } else
            {
                Intent intent2 = new Intent(this, com/waze/install/InstallFacebookPrivacyActivity);
                intent2.putExtra("isNew", true);
                bIsNew = true;
                startActivityForResult(intent2, 3000);
                return;
            }
        } else
        {
            Intent intent = new Intent(this, com/waze/install/InstallFacebookPrivacyActivity);
            intent.putExtra("isNew", false);
            bIsNew = false;
            startActivityForResult(intent, 3000);
            return;
        }
    }






}
