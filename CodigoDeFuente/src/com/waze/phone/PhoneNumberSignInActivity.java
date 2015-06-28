// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.text.style.UnderlineSpan;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.settings.SettingsValue;
import com.waze.strings.DisplayStrings;
import com.waze.utils.EditTextUtils;
import com.waze.utils.ImageRepository;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Set;

// Referenced classes of package com.waze.phone:
//            AddressBook, SmsReceiver, PhoneVerifyYourNumbersActivity, PhoneLoginActivity, 
//            PhoneKeepInMindActivity, ChooseCountryPhoneActivity, PhoneAlreadyAWazerActivity

public class PhoneNumberSignInActivity extends ActivityBase
{

    private static final int CHOOSE_COUNTRY = 1000;
    public static final int CONNECTED_RESULT_CODE = 4;
    public static final String FON_SHON_REA_SON = "fon_shon_rea_son";
    protected static final float HINT_SIZE = 14F;
    public static final String REPORT_START = "report_start";
    protected static final float TEXT_SIZE = 16F;
    public static boolean bIsBackEnabled = false;
    public static boolean bIsInit = false;
    public static boolean bIsInviteRequestSent = false;
    public static boolean bIsNeedVerification = false;
    public static boolean bIsUpgrade = false;
    static boolean mHasTried = false;
    static SettingsValue strCountryCodes[] = null;
    int Index;
    boolean IsAuthenticate;
    boolean IsTimerCallback;
    EditText PhoneBox;
    public boolean bIsChangedNumber;
    public boolean bIsInvite;
    Handler h;
    String mHashNumber;
    private NativeManager mNm;
    Runnable mRunnable;
    private TextView mSendPhonBtn;
    String scountryCodes[];
    List strCodes;

    public PhoneNumberSignInActivity()
    {
        strCodes = null;
        scountryCodes = null;
        Index = -1;
        mHashNumber = null;
        IsAuthenticate = false;
        h = new Handler();
        mRunnable = null;
        bIsChangedNumber = false;
        bIsInvite = false;
        IsTimerCallback = false;
    }

    private String PhoneFormat(String s, String s1)
    {
        PhoneNumberUtil phonenumberutil;
        com.google.i18n.phonenumbers.Phonenumber.PhoneNumber phonenumber;
        phonenumberutil = PhoneNumberUtil.getInstance();
        phonenumber = phonenumberutil.parse(s, s1);
        if (!phonenumberutil.isValidNumber(phonenumber))
        {
            return null;
        }
        String s2;
        if (NativeManager.getInstance().ValidateMobileTypeNTV() && phonenumberutil.getNumberType(phonenumber) != com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberType.FIXED_LINE_OR_MOBILE && phonenumberutil.getNumberType(phonenumber) != com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberType.MOBILE && phonenumberutil.getNumberType(phonenumber) != com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberType.PERSONAL_NUMBER)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        s2 = phonenumberutil.format(phonenumber, com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberFormat.E164);
        return s2;
        NumberParseException numberparseexception;
        numberparseexception;
        return null;
    }

    private void SetUpgradeMembers()
    {
        if (!MyWazeNativeManager.getInstance().isRandomUserNTV())
        {
            ((TextView)findViewById(0x7f09050b)).setVisibility(8);
            findViewById(0x7f09050c).setVisibility(8);
            findViewById(0x7f09050a).setVisibility(8);
        }
        if (!bIsBackEnabled)
        {
            ((ImageView)findViewById(0x7f090502)).setImageResource(0x7f02039b);
            ((TextView)findViewById(0x7f090500)).setText((new StringBuilder(String.valueOf(mNm.getLanguageString(DisplayStrings.DS_WELCOME_BACK)))).append(" ").append(MyWazeNativeManager.getInstance().getWelcomeName()).append("!").toString());
            findViewById(0x7f09050a).setVisibility(8);
            ((TextView)findViewById(0x7f090501)).setText(mNm.getLanguageString(DisplayStrings.DS_FROM_NOW_ON_MOST_FEATURES));
            String s2 = (new StringBuilder(String.valueOf(mNm.getLanguageString(DisplayStrings.DS_WAZE_WILL_NEVER_SHARE)))).append('\n').toString();
            String s3 = mNm.getLanguageString(DisplayStrings.DS_LEARN_MORE);
            SpannableString spannablestring1 = new SpannableString((new StringBuilder(String.valueOf(s2))).append(s3).toString());
            spannablestring1.setSpan(new UnderlineSpan(), s2.length(), s2.length() + s3.length(), 0);
            ((TextView)findViewById(0x7f090508)).setText(spannablestring1);
            mSendPhonBtn = (TextView)findViewById(0x7f090509);
            mSendPhonBtn.setText(mNm.getLanguageString(DisplayStrings.DS_NEXT));
            return;
        }
        String s;
        String s1;
        SpannableString spannablestring;
        if (bIsChangedNumber)
        {
            ((ImageView)findViewById(0x7f090502)).setImageResource(0x7f02039b);
            ((TextView)findViewById(0x7f090500)).setText(mNm.getLanguageString(DisplayStrings.DS_ENTER_NEW_NUMBER));
            ((TextView)findViewById(0x7f090501)).setText(mNm.getLanguageString(DisplayStrings.DS_TYPE_A_NEW_PHONE_NUMBER_TO_UPDATE_YOUR_PROFILE));
        } else
        {
            ((ImageView)findViewById(0x7f090502)).setImageResource(0x7f02038a);
            ((TextView)findViewById(0x7f090500)).setText(mNm.getLanguageString(DisplayStrings.DS_DRIVE_SOCIALLY));
            ((TextView)findViewById(0x7f090501)).setText(mNm.getLanguageString(DisplayStrings.DS_REGISTER_TO_USE_THIS_FEATURE_ENTER_YOUR_PHONE));
        }
        s = (new StringBuilder(String.valueOf(mNm.getLanguageString(DisplayStrings.DS_CONFIRM_IDENTITY)))).append('\n').toString();
        s1 = mNm.getLanguageString(DisplayStrings.DS_LEARN_MORE);
        spannablestring = new SpannableString((new StringBuilder(String.valueOf(s))).append(s1).toString());
        spannablestring.setSpan(new UnderlineSpan(), s.length(), s.length() + s1.length(), 0);
        ((TextView)findViewById(0x7f090508)).setText(spannablestring);
        mSendPhonBtn = (TextView)findViewById(0x7f090509);
        mSendPhonBtn.setText(mNm.getLanguageString(DisplayStrings.DS_VERIFY_MY_NUMBER));
    }

    public static SettingsValue[] getCountries()
    {
        return strCountryCodes;
    }

    private boolean isValidPhoneFormat()
    {
        return PhoneFormat(PhoneBox.getText().toString(), scountryCodes[Index]) != null;
    }

    public void AuthenticateCallback(int i)
    {
        IsAuthenticate = true;
        if (i == 0)
        {
            mNm.SignUplogAnalytics("PHONE_STATUS", "VAUE", "SUCCESS", true);
            if (mRunnable != null)
            {
                AppService.Remove(mRunnable);
                mRunnable = null;
            }
            h.postDelayed(new Runnable() {

                final PhoneNumberSignInActivity this$0;

                public void run()
                {
                    mNm.CloseProgressPopup();
                    MainActivity.bToOpenAccountPopup = true;
                    setResult(-1);
                    finish();
                }

            
            {
                this$0 = PhoneNumberSignInActivity.this;
                super();
            }
            }, 1000L);
            mNm.OpenProgressIconPopup(mNm.getLanguageString(DisplayStrings.DS_PHONE_VERIFIED), "sign_up_big_v");
        } else
        if (i != 2)
        {
            if (i == 6)
            {
                MyWazeNativeManager.getInstance().setContactsSignIn(false, bIsUpgrade, null, null);
                setResult(-1);
                finish();
                return;
            }
            if (i == 3)
            {
                mNm.SignUplogAnalytics("PHONE_STATUS", "VAUE", "SUCCESS", true);
                mNm.SignUplogAnalytics("PHONE_EXISTED", null, null, true);
                if (mRunnable != null)
                {
                    AppService.Remove(mRunnable);
                    mRunnable = null;
                }
                mNm.CloseProgressPopup();
                if (!bIsUpgrade)
                {
                    h.postDelayed(new Runnable() {

                        final PhoneNumberSignInActivity this$0;

                        public void run()
                        {
                            mNm.CloseProgressPopup();
                            Intent intent = new Intent(PhoneNumberSignInActivity.this, com/waze/phone/PhoneAlreadyAWazerActivity);
                            startActivityForResult(intent, 3333);
                        }

            
            {
                this$0 = PhoneNumberSignInActivity.this;
                super();
            }
                    }, 1000L);
                    mNm.OpenProgressIconPopup(mNm.getLanguageString(DisplayStrings.DS_PHONE_VERIFIED), "sign_up_big_v");
                    return;
                } else
                {
                    MyWazeNativeManager.getInstance().setContactsSignIn(true, true, null, null);
                    return;
                }
            }
            if (i != 5)
            {
                mNm.SignUplogAnalytics("PHONE_SEND_FAILED", null, null, true);
            }
            if (mRunnable != null)
            {
                AppService.Remove(mRunnable);
                mRunnable = null;
            }
            mNm.CloseProgressPopup();
            MsgBox.openMessageBox(mNm.getLanguageString(DisplayStrings.DS_UHHOHE), mNm.getLanguageString(DisplayStrings.DS_NETWORK_CONNECTION_PROBLEMS__PLEASE_TRY_AGAIN_LATER_), false);
            return;
        }
    }

    String GetCountryZipCode()
    {
        return ((TelephonyManager)getSystemService("phone")).getSimCountryIso().toUpperCase();
    }

    public void InviteDataCallback(String s, String s1, String s2)
    {
        mNm.SignUplogAnalytics("SIGNUP_FROM_INVITE", null, null, true);
        ((TextView)findViewById(0x7f090500)).setText((new StringBuilder(String.valueOf(s))).append(" ").append(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_HAS_INVITED_YOU_TO_JOIN_WAZE)).toString());
        ((ImageView)findViewById(0x7f090502)).setImageResource(0x7f020397);
        findViewById(0x7f090503).setVisibility(0);
        bIsInvite = true;
        if (PhoneBox.getText().length() > 0)
        {
            mSendPhonBtn.setText(mNm.getLanguageString(DisplayStrings.DS_YES_THATS_MY_NUMBER));
        }
        if (s2 != null && !s2.equals(""))
        {
            ImageView imageview = (ImageView)findViewById(0x7f090504);
            ImageRepository.instance.getImage(s2, imageview, this);
        }
    }

    public void SendPhone(View view)
    {
        mHasTried = true;
        String s = PhoneFormat(PhoneBox.getText().toString(), scountryCodes[Index]);
        if (s != null)
        {
            mNm.SignUplogAnalytics("PHONE_SEND", null, null, true);
            AddressBook.SetCountryID(scountryCodes[Index]);
            mHashNumber = mNm.SHA256(s);
            mNm.AuthPhoneNumber(s, mHashNumber, 0, scountryCodes[Index]);
            mNm.OpenProgressPopup(mNm.getLanguageString(DisplayStrings.DS_WAITING_FOR_SMS));
            if (mRunnable != null)
            {
                AppService.Remove(mRunnable);
                mRunnable = null;
            }
            mRunnable = new Runnable() {

                final PhoneNumberSignInActivity this$0;

                public void run()
                {
                    if (IsAuthenticate)
                    {
                        IsTimerCallback = true;
                        onPinTokenSet();
                    }
                }

            
            {
                this$0 = PhoneNumberSignInActivity.this;
                super();
            }
            };
            AppService.Post(mRunnable, 15000L);
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i != 1000) goto _L2; else goto _L1
_L1:
        if (j == -1)
        {
            Index = intent.getExtras().getInt("index");
            ((TextView)findViewById(0x7f090506)).setText((CharSequence)strCodes.get(Index));
        }
_L4:
        super.onActivityResult(i, j, intent);
        return;
_L2:
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onBackPressed()
    {
        if (bIsBackEnabled)
        {
            setResult(0);
            finish();
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRequestedOrientation(1);
        setContentView(0x7f0300a6);
        bIsInit = true;
        mNm = NativeManager.getInstance();
        if (!bIsInviteRequestSent)
        {
            mNm.GetInviteData();
            bIsInviteRequestSent = true;
        }
        bIsBackEnabled = false;
        bIsUpgrade = false;
        if (AppService.getMainActivity() != null && AppService.getMainActivity().getLayoutMgr().isSplashVisible())
        {
            AppService.getMainActivity().getLayoutMgr().cancelSplash();
        }
        if (getIntent().getExtras().getInt("back") > 0)
        {
            bIsBackEnabled = true;
        }
        int i = getIntent().getExtras().getInt("type");
        int j;
        String s1;
        int k;
        if (i > 0)
        {
            String s;
            Set set;
            TextView textview;
            android.view.View.OnClickListener onclicklistener;
            TextView textview1;
            android.view.View.OnClickListener onclicklistener1;
            TextView textview2;
            android.view.View.OnClickListener onclicklistener2;
            View view;
            android.view.View.OnClickListener onclicklistener3;
            View view1;
            android.view.View.OnClickListener onclicklistener4;
            EditText edittext;
            android.widget.TextView.OnEditorActionListener oneditoractionlistener;
            EditText edittext1;
            TextWatcher textwatcher;
            String s9;
            if (i == 1)
            {
                bIsChangedNumber = false;
            } else
            if (i == 2)
            {
                bIsChangedNumber = true;
            }
            bIsUpgrade = true;
        }
        if (getIntent().getBooleanExtra("report_start", true))
        {
            mNm.SignUplogAnalytics("START", null, null, true);
        }
        s = getIntent().getStringExtra("fon_shon_rea_son");
        if (s != null)
        {
            mNm.SignUplogAnalytics("PHONE_WIZARD_SHOWN", "VAUE", s, true);
        } else
        {
            mNm.SignUplogAnalytics("PHONE_WIZARD_SHOWN", null, null, true);
        }
        mNm.SetPhoneIsFirstTime(false);
        j = 0;
        s1 = GetCountryZipCode();
        SmsReceiver.Register(AppService.getAppContext());
        set = PhoneNumberUtil.getInstance().getSupportedRegions();
        scountryCodes = new String[set.size()];
        set.toArray(scountryCodes);
        strCodes = new ArrayList(Arrays.asList(scountryCodes));
        strCountryCodes = new SettingsValue[strCodes.size()];
        k = 0;
        do
        {
            if (k >= strCountryCodes.length)
            {
                if (s1 == null || s1.equals(""))
                {
                    Index = 0;
                }
                Arrays.sort(strCountryCodes, SettingsValue.comparator);
                int l;
                Locale locale;
                List list;
                StringBuilder stringbuilder;
                String s2;
                String s3;
                String s4;
                SettingsValue settingsvalue;
                String s5;
                StringBuilder stringbuilder1;
                String s6;
                boolean flag;
                if (bIsUpgrade)
                {
                    SetUpgradeMembers();
                } else
                {
                    ((TextView)findViewById(0x7f090500)).setText(mNm.getLanguageString(DisplayStrings.DS_BECOME_A_TRUE_WAZER));
                    ((TextView)findViewById(0x7f090501)).setText(mNm.getLanguageString(DisplayStrings.DS_ENTER_YOUR_PHONE_NUMBER_TO));
                    ((TextView)findViewById(0x7f09050b)).setVisibility(0);
                    findViewById(0x7f09050c).setVisibility(0);
                    String s7 = (new StringBuilder(String.valueOf(mNm.getLanguageString(DisplayStrings.DS_WAZE_WILL_NEVER_SHARE)))).append('\n').toString();
                    String s8 = mNm.getLanguageString(DisplayStrings.DS_LEARN_MORE);
                    SpannableString spannablestring = new SpannableString((new StringBuilder(String.valueOf(s7))).append(s8).toString());
                    spannablestring.setSpan(new UnderlineSpan(), s7.length(), s7.length() + s8.length(), 0);
                    ((TextView)findViewById(0x7f090508)).setText(spannablestring);
                    mSendPhonBtn = (TextView)findViewById(0x7f090509);
                    mSendPhonBtn.setText(mNm.getLanguageString(DisplayStrings.DS_NEXT));
                }
                ((TextView)findViewById(0x7f09050b)).setText(mNm.getLanguageString(DisplayStrings.DS_ALREADY_A_WAZERQ));
                textview = (TextView)findViewById(0x7f09050b);
                onclicklistener = new android.view.View.OnClickListener() {

                    final PhoneNumberSignInActivity this$0;

                    public void onClick(View view2)
                    {
                        mNm.SignUplogAnalytics("ALREADY_WAZER_CLICKED", null, null, true);
                        Intent intent = new Intent(PhoneNumberSignInActivity.this, com/waze/phone/PhoneLoginActivity);
                        startActivityForResult(intent, 100);
                    }

            
            {
                this$0 = PhoneNumberSignInActivity.this;
                super();
            }
                };
                textview.setOnClickListener(onclicklistener);
                if (MyWazeNativeManager.getInstance().getContactLoggedInNTV() && bIsUpgrade || bIsBackEnabled)
                {
                    ((TextView)findViewById(0x7f0904e6)).setVisibility(8);
                    findViewById(0x7f09050d).setVisibility(8);
                } else
                {
                    ((TextView)findViewById(0x7f0904e6)).setVisibility(0);
                    findViewById(0x7f09050d).setVisibility(0);
                }
                ((TextView)findViewById(0x7f0904e6)).setText(mNm.getLanguageString(DisplayStrings.DS_SKIP));
                textview1 = (TextView)findViewById(0x7f0904e6);
                onclicklistener1 = new android.view.View.OnClickListener() {

                    final PhoneNumberSignInActivity this$0;

                    public void onClick(View view2)
                    {
                        mNm.SignUplogAnalytics("SKIP", null, null, true);
                        if (!PhoneNumberSignInActivity.bIsUpgrade)
                        {
                            Intent intent = new Intent(PhoneNumberSignInActivity.this, com/waze/phone/PhoneKeepInMindActivity);
                            startActivityForResult(intent, 1);
                            return;
                        } else
                        {
                            MyWazeNativeManager.getInstance().ShowUserScreenIfNeeded();
                            NativeManager.getInstance().signup_finished();
                            MainActivity.bSignupSkipped = true;
                            setResult(-1);
                            finish();
                            return;
                        }
                    }

            
            {
                this$0 = PhoneNumberSignInActivity.this;
                super();
            }
                };
                textview1.setOnClickListener(onclicklistener1);
                textview2 = (TextView)findViewById(0x7f090508);
                onclicklistener2 = new android.view.View.OnClickListener() {

                    final PhoneNumberSignInActivity this$0;

                    public void onClick(View view2)
                    {
                        mNm.SignUplogAnalytics("LEARN_MORE", null, null, true);
                        AppService.OpenBrowser(MyWazeNativeManager.getInstance().getLearnMorePrivacyUrlNTV());
                    }

            
            {
                this$0 = PhoneNumberSignInActivity.this;
                super();
            }
                };
                textview2.setOnClickListener(onclicklistener2);
                ((TextView)findViewById(0x7f090506)).setText((CharSequence)strCodes.get(j));
                view = findViewById(0x7f090505);
                onclicklistener3 = new android.view.View.OnClickListener() {

                    final PhoneNumberSignInActivity this$0;

                    public void onClick(View view2)
                    {
                        Intent intent = new Intent(PhoneNumberSignInActivity.this, com/waze/phone/ChooseCountryPhoneActivity);
                        startActivityForResult(intent, 1000);
                    }

            
            {
                this$0 = PhoneNumberSignInActivity.this;
                super();
            }
                };
                view.setOnClickListener(onclicklistener3);
                view1 = findViewById(0x7f090509);
                onclicklistener4 = new android.view.View.OnClickListener() {

                    final PhoneNumberSignInActivity this$0;

                    public void onClick(View view2)
                    {
                        if (PhoneBox.getText() != null && PhoneBox.getText().toString() != null && !PhoneBox.getText().toString().equals(""))
                        {
                            SendPhone(view2);
                        }
                    }

            
            {
                this$0 = PhoneNumberSignInActivity.this;
                super();
            }
                };
                view1.setOnClickListener(onclicklistener4);
                PhoneBox = (EditText)findViewById(0x7f090507);
                PhoneBox.setOnTouchListener(EditTextUtils.getKeyboardLockOnTouchListener(this, PhoneBox, null));
                edittext = PhoneBox;
                oneditoractionlistener = new android.widget.TextView.OnEditorActionListener() {

                    final PhoneNumberSignInActivity this$0;

                    public boolean onEditorAction(TextView textview3, int i1, KeyEvent keyevent)
                    {
                        if (i1 == 4)
                        {
                            SendPhone(null);
                            return true;
                        } else
                        {
                            return false;
                        }
                    }

            
            {
                this$0 = PhoneNumberSignInActivity.this;
                super();
            }
                };
                edittext.setOnEditorActionListener(oneditoractionlistener);
                edittext1 = PhoneBox;
                textwatcher = new TextWatcher() {

                    final PhoneNumberSignInActivity this$0;

                    public void afterTextChanged(Editable editable)
                    {
                    }

                    public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
                    {
                    }

                    public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
                    {
                        if (isValidPhoneFormat())
                        {
                            mSendPhonBtn.getBackground().setAlpha(255);
                            mSendPhonBtn.setTextColor(Color.parseColor("#00bcfe"));
                            return;
                        } else
                        {
                            mSendPhonBtn.getBackground().setAlpha(125);
                            mSendPhonBtn.setTextColor(Color.parseColor("#77000000"));
                            return;
                        }
                    }

            
            {
                this$0 = PhoneNumberSignInActivity.this;
                super();
            }
                };
                edittext1.addTextChangedListener(textwatcher);
                s9 = ((TelephonyManager)getSystemService("phone")).getLine1Number();
                if (s9 == null || s9.isEmpty())
                {
                    s9 = MyWazeNativeManager.getInstance().socialContactsGetLastPhoneUsed();
                }
                if (s9 != null && !s9.equals(""))
                {
                    PhoneBox.setText(s9);
                    return;
                } else
                {
                    mSendPhonBtn.getBackground().setAlpha(125);
                    mSendPhonBtn.setTextColor(Color.parseColor("#77000000"));
                    return;
                }
            }
            l = PhoneNumberUtil.getInstance().getCountryCodeForRegion((String)strCodes.get(k));
            if (((String)strCodes.get(k)).equals(s1))
            {
                j = k;
                Index = k;
            }
            locale = new Locale("", (String)strCodes.get(k));
            list = strCodes;
            stringbuilder = new StringBuilder(String.valueOf((String)strCodes.get(k)));
            list.set(k, stringbuilder.append(" (+").append(l).append(")").toString());
            s2 = locale.getDisplayCountry();
            if (Index != -1)
            {
                s5 = Integer.toString(k);
                stringbuilder1 = new StringBuilder(String.valueOf(s2));
                s6 = stringbuilder1.append(" (+").append(l).append(")").toString();
                if (k == Index)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                settingsvalue = new SettingsValue(s5, s6, flag);
            } else
            {
                s3 = Integer.toString(k);
                s4 = (new StringBuilder(String.valueOf(s2))).append(" (+").append(l).append(")").toString();
                settingsvalue = new SettingsValue(s3, s4, false);
            }
            strCountryCodes[k] = settingsvalue;
            k++;
        } while (true);
    }

    protected void onDestroy()
    {
        if (mRunnable != null)
        {
            AppService.Remove(mRunnable);
            mRunnable = null;
        }
        SmsReceiver.UnRegister(AppService.getAppContext());
        super.onDestroy();
    }

    public void onPinTokenSet()
    {
        if (mRunnable != null)
        {
            AppService.Remove(mRunnable);
            mRunnable = null;
        }
        mNm.CloseProgressPopup();
        if (IsTimerCallback)
        {
            mNm.SignUplogAnalytics("FAIL_READ_SMS", null, null, true);
            IsTimerCallback = false;
            SmsReceiver.UnRegister(AppService.getAppContext());
            Intent intent = new Intent(this, com/waze/phone/PhoneVerifyYourNumbersActivity);
            intent.putExtra("Hash", mHashNumber);
            startActivityForResult(intent, 1111);
            return;
        } else
        {
            h.postDelayed(new Runnable() {

                final PhoneNumberSignInActivity this$0;

                public void run()
                {
                    mNm.CloseProgressPopup();
                    MainActivity.bToOpenAccountPopup = true;
                    setResult(-1);
                    finish();
                }

            
            {
                this$0 = PhoneNumberSignInActivity.this;
                super();
            }
            }, 1000L);
            mNm.OpenProgressIconPopup(mNm.getLanguageString(DisplayStrings.DS_PHONE_VERIFIED), "sign_up_big_v");
            return;
        }
    }




}
