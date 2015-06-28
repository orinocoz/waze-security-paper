// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.MainActivity;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.settings.SettingsDialogListener;
import com.waze.settings.SettingsUtils;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.phone:
//            PhoneNumberSignInActivity, PhoneAlreadyAWazerActivity, PhoneVerifyNumberFailure

public class PhoneVerifyYourNumbersActivity extends ActivityBase
{

    private static final int RQ_CODE_ALREADY_A_WAZER = 3333;
    private static final int RQ_CODE_GIVE_UP = 3334;
    private boolean bIsResend;
    private int mAuthNumberOfRetries;
    private LinearLayout mContinueButton;
    private String mDisplayOptions[];
    private String mHash;
    private EditText mVerificationCodeEditText;
    private TextView mVerifyByPhoneCallText;

    public PhoneVerifyYourNumbersActivity()
    {
        mDisplayOptions = new String[3];
        bIsResend = false;
        mHash = null;
        mAuthNumberOfRetries = 0;
    }

    private String getVerificationCode()
    {
        return mVerificationCodeEditText.getText().toString();
    }

    private void initFieldsTexts()
    {
        ((TextView)findViewById(0x7f090515)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ENTER_VERIFICATION_CODE).toUpperCase());
        ((TextView)findViewById(0x7f090516)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_TYPE_THE_CODE_WE_SENT_YOU_BY_TEXT_MESSAGE_DIDNT_GET_THE_CODEQ));
        ((TextView)findViewById(0x7f090518)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_RESEND_THE_CODE));
        ((TextView)findViewById(0x7f09051c)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_NEXT));
    }

    private void initMembers()
    {
        mVerificationCodeEditText = (EditText)findViewById(0x7f09051a);
        mVerificationCodeEditText.setSelection(0);
        mVerificationCodeEditText.setHint(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ENTER_CODE));
        mDisplayOptions[0] = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SEND_VIA_TEXT_MESSAGE);
        mDisplayOptions[1] = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_RESEND_BY_VOICE);
        mDisplayOptions[2] = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CANCEL);
        mContinueButton = (LinearLayout)findViewById(0x7f09051b);
        mVerifyByPhoneCallText = (TextView)findViewById(0x7f090518);
        mVerifyByPhoneCallText.setPaintFlags(8 | mVerifyByPhoneCallText.getPaintFlags());
    }

    private void setListeners()
    {
        mVerificationCodeEditText.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final PhoneVerifyYourNumbersActivity this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                if (i == 4)
                {
                    mContinueButton.performClick();
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                this$0 = PhoneVerifyYourNumbersActivity.this;
                super();
            }
        });
    }

    private void setOnClickListeners()
    {
        mContinueButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneVerifyYourNumbersActivity this$0;

            public void onClick(View view)
            {
                NativeManager nativemanager = NativeManager.getInstance();
                nativemanager.SignUplogAnalytics("PHONE_CODE_CONTINUE", "VAUE", (new StringBuilder()).append(mAuthNumberOfRetries).toString(), true);
                nativemanager.OpenProgressPopup(nativemanager.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
                nativemanager.AuthPin(getVerificationCode());
            }

            
            {
                this$0 = PhoneVerifyYourNumbersActivity.this;
                super();
            }
        });
        mVerifyByPhoneCallText.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneVerifyYourNumbersActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().SignUplogAnalytics("RESEND_CODE", "VAUE", (new StringBuilder()).append(mAuthNumberOfRetries).toString(), true);
                SettingsUtils.showSubmenu(PhoneVerifyYourNumbersActivity.this, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CHOOSE_METHOD), mDisplayOptions, new SettingsDialogListener() {

                    final _cls2 this$1;

                    public void onComplete(int i)
                    {
                        int j = 0;
                        if (i != 0) goto _L2; else goto _L1
_L1:
                        NativeManager.getInstance().SignUplogAnalytics("RESEND_VIA_TEXT", "VAUE", (new StringBuilder()).append(mAuthNumberOfRetries).toString(), true);
_L6:
                        if (mAuthNumberOfRetries != 3)
                        {
                            break; /* Loop/switch isn't completed */
                        }
                        NativeManager.getInstance().SignUplogAnalytics("VERIFICATION_GIVE_UP", "VAUE", (new StringBuilder()).append(mAuthNumberOfRetries).toString(), true);
                        Intent intent = new Intent(_fld0, com/waze/phone/PhoneVerifyNumberFailure);
                        intent.putExtra("AuthNumberOfRetries", mAuthNumberOfRetries);
                        mAuthNumberOfRetries = 0;
                        startActivityForResult(intent, 3334);
_L4:
                        return;
_L2:
                        if (i != 1) goto _L4; else goto _L3
_L3:
                        NativeManager.getInstance().SignUplogAnalytics("RESEND_VIA_VOICE", "VAUE", (new StringBuilder()).append(mAuthNumberOfRetries).toString(), true);
                        j = 1;
                        if (true) goto _L6; else goto _L5
_L5:
                        NativeManager.getInstance().SignUplogAnalytics("ENTER_VERIFICATION_SHOWN", "VAUE", (new StringBuilder()).append(mAuthNumberOfRetries).toString(), true);
                        NativeManager.getInstance().AuthPhoneNumber(null, mHash, j, null);
                        bIsResend = true;
                        PhoneVerifyYourNumbersActivity phoneverifyyournumbersactivity = _fld0;
                        phoneverifyyournumbersactivity.mAuthNumberOfRetries = 1 + phoneverifyyournumbersactivity.mAuthNumberOfRetries;
                        return;
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                });
            }


            
            {
                this$0 = PhoneVerifyYourNumbersActivity.this;
                super();
            }
        });
    }

    public void AuthenticateCallback(int i)
    {
        if (i == 0)
        {
            NativeManager.getInstance().SignUplogAnalytics("PHONE_STATUS", "VAUE", "SUCCESS", true);
            MainActivity.bToOpenAccountPopup = true;
            setResult(-1);
            finish();
            return;
        }
        if (i == 6)
        {
            MyWazeNativeManager.getInstance().setContactsSignIn(false, PhoneNumberSignInActivity.bIsUpgrade, null, null);
            setResult(-1);
            finish();
            return;
        }
        if (i == 2)
        {
            NativeManager.getInstance().CloseProgressPopup();
            if (bIsResend)
            {
                bIsResend = false;
                return;
            } else
            {
                NativeManager.getInstance().SignUplogAnalytics("PHONE_STATUS", "VAUE", "FAILURE", true);
                MsgBox.openMessageBox(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_UHHOHE), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_INVALID_CODE_TRY_AGAIN), true);
                return;
            }
        }
        if (i == 3)
        {
            NativeManager.getInstance().SignUplogAnalytics("PHONE_STATUS", "VAUE", "SUCCESS", true);
            NativeManager.getInstance().SignUplogAnalytics("PHONE_EXISTED", null, null, true);
            NativeManager.getInstance().CloseProgressPopup();
            if (!PhoneNumberSignInActivity.bIsUpgrade)
            {
                startActivityForResult(new Intent(this, com/waze/phone/PhoneAlreadyAWazerActivity), 3333);
                return;
            } else
            {
                MyWazeNativeManager.getInstance().setContactsSignIn(true, true, null, null);
                return;
            }
        } else
        {
            NativeManager.getInstance().SignUplogAnalytics("PHONE_SEND_FAILED", "VAUE", (new StringBuilder()).append(mAuthNumberOfRetries).toString(), true);
            NativeManager.getInstance().CloseProgressPopup();
            MsgBox.openMessageBox(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_UHHOHE), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_NETWORK_CONNECTION_PROBLEMS__PLEASE_TRY_AGAIN_LATER_), false);
            return;
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        Log.d("WAZE", (new StringBuilder("phoneVerifyYourAccount onActRes requestCode=")).append(i).append(" resultCode=").append(j).append(" Intent=").append(intent).toString());
        if (j == -1)
        {
            setResult(-1);
            finish();
        } else
        {
            NativeManager.getInstance().SignUplogAnalytics("ENTER_VERIFICATION_SHOWN", "VAUE", (new StringBuilder()).append(mAuthNumberOfRetries).toString(), true);
        }
        super.onActivityResult(i, j, intent);
    }

    public void onBackPressed()
    {
        NativeManager.getInstance().SignUplogAnalytics("PHONE_CODE_BACK", "VAUE", (new StringBuilder()).append(mAuthNumberOfRetries).toString(), true);
        mAuthNumberOfRetries = 0;
        super.onBackPressed();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRequestedOrientation(1);
        setContentView(0x7f0300ac);
        NativeManager.getInstance().SignUplogAnalytics("ENTER_VERIFICATION_SHOWN", "VAUE", (new StringBuilder()).append(mAuthNumberOfRetries).toString(), true);
        mHash = getIntent().getStringExtra("Hash");
        initMembers();
        setListeners();
        setOnClickListeners();
        initFieldsTexts();
    }

    public void onPinTokenSet()
    {
        NativeManager.getInstance().CloseProgressPopup();
        MainActivity.bToOpenAccountPopup = true;
        setResult(-1);
        finish();
    }







}
