// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.strings.DisplayStrings;
import java.util.Timer;
import java.util.TimerTask;

public class NameYourWazerPopup extends Dialog
{
    public class UserSuggestionType
    {

        public static final int suggestion_ok = 0;
        public static final int suggestion_status_already_taken = 4;
        public static final int suggestion_status_forbidden = 5;
        public static final int suggestion_status_invalid_characters = 3;
        public static final int suggestion_status_too_long = 2;
        public static final int suggestion_status_too_short = 1;
        final NameYourWazerPopup this$0;

        public UserSuggestionType()
        {
            this$0 = NameYourWazerPopup.this;
            super();
        }
    }


    private static int bIsFirstTime = 0;
    private boolean IsValid;
    boolean already_queried;
    Handler h;
    long idle_min;
    long last_text_edit;
    private Context mContext;
    private String mText;
    private String mUserName;
    private NativeManager nativeManager;
    private TextView signButton;
    private EditText userNameView;

    public NameYourWazerPopup(Context context)
    {
        super(context, 0x7f06000f);
        mContext = null;
        idle_min = 500L;
        last_text_edit = 0L;
        h = new Handler();
        mText = null;
        already_queried = false;
        mUserName = null;
        IsValid = false;
        mContext = context;
        nativeManager = AppService.getNativeManager();
    }

    private void initLayout()
    {
        setContentView(0x7f030090);
        getWindow().setLayout(-1, -1);
        String s = nativeManager.getLanguageString(DisplayStrings.DS_NAME_YOUR_WAZER);
        if (!PhoneNumberSignInActivity.bIsInit || PhoneNumberSignInActivity.bIsInit && PhoneNumberSignInActivity.bIsUpgrade)
        {
            s = nativeManager.getLanguageString(DisplayStrings.DS_UPDATE_YOUR_WAZER);
        }
        ((TextView)findViewById(0x7f09004f)).setText(s);
        if (!PhoneNumberSignInActivity.bIsInit || PhoneNumberSignInActivity.bIsInit && PhoneNumberSignInActivity.bIsUpgrade)
        {
            ((TextView)findViewById(0x7f0903f5)).setText(nativeManager.getLanguageString(DisplayStrings.DS_YOUR_USERNAME_WILL_REPLACE_YOUR_NICKNAME));
        } else
        {
            ((TextView)findViewById(0x7f0903f5)).setText(nativeManager.getLanguageString(DisplayStrings.DS_VISIBLE_TO_ALL_ON_MAP));
        }
        ((TextView)findViewById(0x7f09044f)).setPaintFlags(8);
        userNameView = (EditText)findViewById(0x7f09044d);
        ((TextView)findViewById(0x7f09044f)).setOnClickListener(new android.view.View.OnClickListener() {

            final NameYourWazerPopup this$0;

            public void onClick(View view)
            {
                if (mUserName != null)
                {
                    userNameView.setText(mUserName);
                    userNameView.setSelection(mUserName.length());
                }
            }

            
            {
                this$0 = NameYourWazerPopup.this;
                super();
            }
        });
        signButton = (TextView)findViewById(0x7f090057);
        signButton.setText(nativeManager.getLanguageString(DisplayStrings.DS_NEXT));
        signButton.setOnClickListener(new android.view.View.OnClickListener() {

            final NameYourWazerPopup this$0;

            public void onClick(View view)
            {
                onContinueClicked();
            }

            
            {
                this$0 = NameYourWazerPopup.this;
                super();
            }
        });
        userNameView.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final NameYourWazerPopup this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                if (i == 6)
                {
                    onContinueClicked();
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                this$0 = NameYourWazerPopup.this;
                super();
            }
        });
        userNameView.addTextChangedListener(new TextWatcher() {

            final NameYourWazerPopup this$0;
            private Timer timer;

            public void afterTextChanged(Editable editable)
            {
                ((TextView)findViewById(0x7f09044e)).setText(nativeManager.getLanguageString(DisplayStrings.DS_CHECKING));
                ((TextView)findViewById(0x7f09044e)).setTextColor(AppService.getAppResources().getColor(0x7f080031));
                ((TextView)findViewById(0x7f09044f)).setVisibility(8);
                timer.cancel();
                timer = new Timer();
                timer.schedule(new TimerTask() {

                    final _cls4 this$1;

                    public void run()
                    {
                        AppService.getMainActivity().runOnUiThread(new Runnable() {

                            final _cls1 this$2;

                            public void run()
                            {
                                if (mText != null && !mText.equals(""))
                                {
                                    nativeManager.SuggestUserNameRequest(null, null, mText);
                                }
                                timer.cancel();
                            }

            
            {
                this$2 = _cls1.this;
                super();
            }
                        });
                    }


            
            {
                this$1 = _cls4.this;
                super();
            }
                }, 500L);
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                IsValid = false;
                mText = charsequence.toString();
            }



            
            {
                this$0 = NameYourWazerPopup.this;
                super();
                timer = new Timer();
            }
        });
    }

    private void onContinueClicked()
    {
        NativeManager.getInstance().SignUplogAnalytics("USERNAME_CONTINUE", null, null, true);
        if (userNameView.getText().toString() != null && !userNameView.getText().toString().equals(""))
        {
            NativeManager.getInstance().OpenProgressPopup(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
            NativeManager.getInstance().SuggestUserNameTerminate(userNameView.getText().toString());
            return;
        } else
        {
            MsgBox.openMessageBox(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_UHHOHE), "Username is invalid", true);
            return;
        }
    }

    public void OnUpdateResult(boolean flag)
    {
label0:
        {
            NativeManager.getInstance().CloseProgressPopup();
            if (flag)
            {
                AppService.getMainActivity().EnableOrientation();
                NativeManager.getInstance().SetPhoneIsFirstTime(false);
                dismiss();
                if (!MainActivity.bToOpenPasswordRecovery)
                {
                    break label0;
                }
                AppService.getMainActivity().openPasswordRecovery();
            }
            return;
        }
        AppService.getMainActivity().openAddFriendPopup();
    }

    protected void close()
    {
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
    }

    public void onBackPressed()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initLayout();
        NativeManager.getInstance().SignUplogAnalytics("SELECT_USERNAME_SHOWN", null, null, true);
    }

    public void onUserNameResult(int i, String s)
    {
        if (s == null) goto _L2; else goto _L1
_L1:
        Object obj;
        mUserName = s;
        if (userNameView.getText().toString() == null || userNameView.getText().toString().equals(""))
        {
            userNameView.setText(mUserName);
            userNameView.setSelection(mUserName.length());
        }
        obj = null;
        i;
        JVM INSTR tableswitch 0 5: default 112
    //                   0 127
    //                   1 243
    //                   2 301
    //                   3 359
    //                   4 417
    //                   5 487;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L3:
        ((TextView)findViewById(0x7f09044e)).setText(((CharSequence) (obj)));
_L2:
        return;
_L4:
        if (bIsFirstTime < 2)
        {
            if (!PhoneNumberSignInActivity.bIsInit || PhoneNumberSignInActivity.bIsInit && PhoneNumberSignInActivity.bIsUpgrade)
            {
                obj = nativeManager.getLanguageString(DisplayStrings.DS_CONFIRM_YOUR_EXISTING_USERNAME_OR_CHANGE);
            } else
            {
                obj = nativeManager.getLanguageString(DisplayStrings.DS_DONT_LIKE_IT_TRY_SOMETHING_ELSE);
            }
            bIsFirstTime = 1 + bIsFirstTime;
        } else
        {
            obj = nativeManager.getLanguageString(DisplayStrings.DS_LOOKS_GOOD);
        }
        IsValid = true;
        ((TextView)findViewById(0x7f09044e)).setTextColor(AppService.getAppResources().getColor(0x7f080031));
        ((TextView)findViewById(0x7f09044f)).setVisibility(8);
        continue; /* Loop/switch isn't completed */
_L5:
        obj = nativeManager.getLanguageString(DisplayStrings.DS_YOUR_USER_NAME_IS_TOO_SHORT);
        ((TextView)findViewById(0x7f09044e)).setTextColor(AppService.getAppResources().getColor(0x7f080030));
        ((TextView)findViewById(0x7f09044f)).setVisibility(8);
        bIsFirstTime = 1 + bIsFirstTime;
        continue; /* Loop/switch isn't completed */
_L6:
        obj = nativeManager.getLanguageString(DisplayStrings.DS_USERNAME_IS_TOO_LONG);
        ((TextView)findViewById(0x7f09044e)).setTextColor(AppService.getAppResources().getColor(0x7f080030));
        ((TextView)findViewById(0x7f09044f)).setVisibility(8);
        bIsFirstTime = 1 + bIsFirstTime;
        continue; /* Loop/switch isn't completed */
_L7:
        obj = nativeManager.getLanguageString(DisplayStrings.DS_INVALID_CHARACTER_USE_ONLY_LETTERS_AND_NUMBERS);
        ((TextView)findViewById(0x7f09044e)).setTextColor(AppService.getAppResources().getColor(0x7f080030));
        ((TextView)findViewById(0x7f09044f)).setVisibility(8);
        bIsFirstTime = 1 + bIsFirstTime;
        continue; /* Loop/switch isn't completed */
_L8:
        obj = nativeManager.getLanguageString(DisplayStrings.DS_THATS_TAKEN_TRY);
        ((TextView)findViewById(0x7f09044f)).setVisibility(0);
        ((TextView)findViewById(0x7f09044e)).setTextColor(AppService.getAppResources().getColor(0x7f080030));
        ((TextView)findViewById(0x7f09044f)).setText(s);
        bIsFirstTime = 1 + bIsFirstTime;
        continue; /* Loop/switch isn't completed */
_L9:
        obj = nativeManager.getLanguageString(DisplayStrings.DS_YOU_CANT_USE_THIS_USERNAME);
        ((TextView)findViewById(0x7f09044e)).setTextColor(AppService.getAppResources().getColor(0x7f080030));
        bIsFirstTime = 1 + bIsFirstTime;
        if (true) goto _L3; else goto _L10
_L10:
    }








}
