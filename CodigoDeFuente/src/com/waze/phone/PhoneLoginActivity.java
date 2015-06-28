// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.profile.ForgotPasswordActivity;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;
import com.waze.view.text.WazeTextView;

// Referenced classes of package com.waze.phone:
//            PhoneLoginFillInField, PhoneNumberSignInActivity

public class PhoneLoginActivity extends ActivityBase
{

    private static boolean bIsBackFromFBScreen = false;
    private boolean bIsVerifyMode;
    private TextView mForgotYourText;
    private LinearLayout mLoginButton;
    private WazeTextView mLoginText;
    private LinearLayout mLoginWithFacebookButton;
    private WazeTextView mLoginWithFacebookText;
    private PhoneLoginFillInField mPasswordField;
    private PhoneLoginFillInField mPhoneNumberField;
    private PhoneLoginFillInField mUserNameField;

    public PhoneLoginActivity()
    {
        bIsVerifyMode = false;
    }

    private static float convertDpToPixels(float f, Context context)
    {
        return f * context.getResources().getDisplayMetrics().density;
    }

    private void initFieldsTexts()
    {
        ((TextView)findViewById(0x7f0904ef)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ALREADY_A_WAZER).toUpperCase());
        ((TextView)findViewById(0x7f0904f0)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SIGN_IN_TO_YOUR_ACCOUNT));
        initUserNameField();
        initPasswordField();
        initPhoneNumberField();
        mLoginWithFacebookText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CONNECT_WITH_FACEBOOK));
        mLoginText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SIGN_IN));
        mForgotYourText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_FORGOT_YOUR_PASSWORD));
    }

    private void initMembers()
    {
        mLoginButton = (LinearLayout)findViewById(0x7f0904f7);
        mForgotYourText = (TextView)findViewById(0x7f0904f5);
        mUserNameField = (PhoneLoginFillInField)findViewById(0x7f0904f3);
        mPasswordField = (PhoneLoginFillInField)findViewById(0x7f0904f4);
        mPhoneNumberField = (PhoneLoginFillInField)findViewById(0x7f0904f6);
        mLoginWithFacebookText = (WazeTextView)findViewById(0x7f0904f2);
        mLoginWithFacebookButton = (LinearLayout)findViewById(0x7f0904f1);
        mLoginText = (WazeTextView)findViewById(0x7f0904f8);
    }

    private void initPasswordField()
    {
        mPasswordField.setLabaleText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PASSWORD));
        mPasswordField.setInputHintText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_YOUR_PASSWORD));
        mPasswordField.setEditTextDpMarginTop(3F);
        mPasswordField.setFocusableInTouchMode(false);
        mPasswordField.setPasswordTextType();
        mUserNameField.setTextGravity(19);
    }

    private void initPhoneNumberField()
    {
        mPhoneNumberField.setLabaleText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PHONE));
        mPhoneNumberField.setInputHintText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_YOUR_PHONE_NUMBER));
    }

    private void initUserNameField()
    {
        mUserNameField.setLabaleText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_USERNAME));
        mUserNameField.setInputHintText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_YOUR_USERNAME));
        mUserNameField.setEditTextDpMarginBottom(3F);
        mUserNameField.setImeOptions(5);
        mUserNameField.setTextGravity(19);
    }

    private void onRemindClicked()
    {
        NativeManager.getInstance().SignUplogAnalytics("FORGOT_PASSWORD", null, null, true);
        startActivityForResult(new Intent(this, com/waze/profile/ForgotPasswordActivity), 0);
    }

    private void onSignClicked()
    {
        NativeManager.getInstance().SignUplogAnalytics("LOGIN_WAZER", null, null, true);
        if (!String.valueOf(mUserNameField.getText()).equals(""))
        {
            mLoginButton.setEnabled(false);
        }
        String s = String.valueOf(mUserNameField.getText());
        String s1 = String.valueOf(mPasswordField.getText());
        String s2 = String.valueOf(mUserNameField.getText());
        com.waze.mywaze.MyWazeNativeManager.LoginCallback logincallback = new com.waze.mywaze.MyWazeNativeManager.LoginCallback() {

            final PhoneLoginActivity this$0;

            public void onLogin(boolean flag)
            {
                NativeManager nativemanager = NativeManager.getInstance();
                String s3;
                if (flag)
                {
                    s3 = "SUCCESS";
                } else
                {
                    s3 = "FAILURE";
                }
                nativemanager.SignUplogAnalytics("LOGIN_WAZER_RESPONSE", "VAUE", s3, true);
                if (flag)
                {
                    NativeManager.getInstance().SetSocialIsFirstTime(false);
                    if (!bIsVerifyMode)
                    {
                        Intent intent = new Intent(PhoneLoginActivity.this, com/waze/phone/PhoneNumberSignInActivity);
                        intent.putExtra("type", 1);
                        intent.putExtra("report_start", false);
                        intent.putExtra("fon_shon_rea_son", "UPGRADE");
                        startActivityForResult(intent, 5000);
                    } else
                    {
                        PhoneNumberSignInActivity.bIsUpgrade = true;
                    }
                    setResult(-1);
                    finish();
                    return;
                } else
                {
                    mLoginButton.setEnabled(true);
                    return;
                }
            }

            
            {
                this$0 = PhoneLoginActivity.this;
                super();
            }
        };
        MyWazeNativeManager.getInstance().doLogin(s, s1, s2, logincallback);
    }

    private void setKeyboardVisibilityListener()
    {
        final View root = findViewById(0x7f0904d2);
        root.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final PhoneLoginActivity this$0;
            private final View val$root;

            public void onGlobalLayout()
            {
                int _tmp = root.getRootView().getHeight() - root.getHeight();
            }

            
            {
                this$0 = PhoneLoginActivity.this;
                root = view;
                super();
            }
        });
    }

    private void setOnClickListeners()
    {
        mLoginWithFacebookButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneLoginActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().SignUplogAnalytics("FB_SIGN_IN", null, null, true);
                if (PhoneLoginActivity.bIsBackFromFBScreen)
                {
                    FacebookWrapper.getInstance().authorize(PhoneLoginActivity.this, null, false);
                    return;
                } else
                {
                    com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener ionauthorizecompletedlistener = new com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener() {

                        final _cls1 this$1;

                        public void onAuthorizeCompleted(boolean flag, int i)
                        {
                            if (i == 3)
                            {
                                NativeManager.getInstance().SignUplogAnalytics("LOGIN_FB_RESPONSE", "VAUE", "FAILURE", true);
                            }
                            if (i == 0)
                            {
                                NativeManager nativemanager = NativeManager.getInstance();
                                nativemanager.SignUplogAnalytics("LOGIN_FB_RESPONSE", "VAUE", "SUCCESS", true);
                                nativemanager.SetSocialIsFirstTime(false);
                                nativemanager.OpenProgressPopup(nativemanager.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
                            }
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    };
                    FacebookWrapper.getInstance().SignIn(PhoneLoginActivity.this, ionauthorizecompletedlistener, true);
                    return;
                }
            }

            
            {
                this$0 = PhoneLoginActivity.this;
                super();
            }
        });
        mLoginButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneLoginActivity this$0;

            public void onClick(View view)
            {
                onSignClicked();
            }

            
            {
                this$0 = PhoneLoginActivity.this;
                super();
            }
        });
        mForgotYourText.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneLoginActivity this$0;

            public void onClick(View view)
            {
                onRemindClicked();
            }

            
            {
                this$0 = PhoneLoginActivity.this;
                super();
            }
        });
        mPhoneNumberField.setInputTextOnTouchListener(new android.view.View.OnTouchListener() {

            final PhoneLoginActivity this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                setResult(0);
                finish();
                return true;
            }

            
            {
                this$0 = PhoneLoginActivity.this;
                super();
            }
        });
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j != 0) goto _L2; else goto _L1
_L1:
        NativeManager.getInstance().CloseProgressPopup();
_L4:
        super.onActivityResult(i, j, intent);
        return;
_L2:
        if (i == 5000 && j == -1)
        {
            setResult(-1);
            finish();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onBackPressed()
    {
        NativeManager.getInstance().SignUplogAnalytics("LOGIN_BACK", null, null, true);
        super.onBackPressed();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRequestedOrientation(1);
        setContentView(0x7f0300a3);
        initMembers();
        mForgotYourText.setPaintFlags(8 | mForgotYourText.getPaintFlags());
        NativeManager.getInstance().SignUplogAnalytics("LOGIN_SHOWN", null, null, true);
        if (getIntent().getExtras() != null && getIntent().getExtras().getInt("verifyMode") > 0)
        {
            bIsVerifyMode = true;
        }
    }

    public void onFacebookTokenSet()
    {
        NativeManager.getInstance().CloseProgressPopup();
        if (!bIsVerifyMode)
        {
            Intent intent = new Intent(this, com/waze/phone/PhoneNumberSignInActivity);
            intent.putExtra("type", 1);
            intent.putExtra("report_start", false);
            intent.putExtra("fon_shon_rea_son", "UPGRADE");
            startActivityForResult(intent, 5000);
        } else
        {
            PhoneNumberSignInActivity.bIsUpgrade = true;
        }
        setResult(-1);
        finish();
    }

    protected void onResume()
    {
        super.onResume();
        setOnClickListeners();
        initFieldsTexts();
        setKeyboardVisibilityListener();
    }






}
