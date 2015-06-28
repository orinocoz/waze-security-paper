// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MoodManager;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeData;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.phone.AddressBook;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.settings.DrillDownSettingView;
import com.waze.settings.SettingsSwitchView;
import com.waze.settings.SettingsTitleText;
import com.waze.settings.SwitchCheckedCallback;
import com.waze.strings.DisplayStrings;
import com.waze.utils.ImageRepository;
import com.waze.view.text.WazeTextView;
import com.waze.view.title.TitleBar;
import java.io.File;

// Referenced classes of package com.waze.profile:
//            ImageTaker

public class MyProfileActivity extends ActivityBase
    implements com.waze.NativeManager.IOnUserNameResult
{
    private static final class OnClickListenerImplementation
        implements android.content.DialogInterface.OnClickListener
    {

        boolean _bSetImage;
        private boolean _bSetNames;
        private String _email;
        private String _firstName;
        File _imageFile;
        private String _lastName;
        private String _password;
        private String _username;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            if (i == 1)
            {
                if (_bSetNames)
                {
                    MyWazeNativeManager.getInstance().setNames(_firstName, _lastName, _username, _password, _email);
                }
                if (_bSetImage)
                {
                    NativeManager.getInstance().UploadProfileImage(_imageFile.getAbsolutePath());
                }
            }
        }

        public void setImage(File file)
        {
            _bSetImage = true;
            _imageFile = file;
        }

        public void setNames(String s, String s1, String s2, String s3, String s4)
        {
            _bSetNames = true;
            _firstName = s;
            _lastName = s1;
            _username = s2;
            _password = s3;
            _email = s4;
        }

        private OnClickListenerImplementation()
        {
            _bSetNames = false;
        }

        OnClickListenerImplementation(OnClickListenerImplementation onclicklistenerimplementation)
        {
            this();
        }
    }


    private EditText mEmailEdit;
    private EditText mFirstNameEdit;
    private boolean mIgnoreTextEdits;
    private ImageTaker mImageTaker;
    private boolean mIsUserNameValid;
    private EditText mLastNameEdit;
    private MyWazeNativeManager mMwnm;
    private NativeManager mNm;
    private EditText mPasswordEdit;
    private String mText;
    private EditText mUserNameEdit;
    private String mUserNameStr;
    private String mUserNameSuggested;
    private boolean mWasEmailChanged;
    private boolean mWasFirstNameChanged;
    private boolean mWasLastNameChanged;
    private boolean mWasPasswordChanged;
    private boolean mWasUserImageChanged;
    private boolean mWasUserNameChanged;
    private MyWazeData mWazeData;

    public MyProfileActivity()
    {
        mUserNameSuggested = null;
        mText = null;
        mIsUserNameValid = false;
        mIgnoreTextEdits = false;
        mWasFirstNameChanged = false;
        mWasLastNameChanged = false;
        mWasPasswordChanged = false;
        mWasUserNameChanged = false;
        mWasUserImageChanged = false;
        mWasEmailChanged = false;
    }

    private void changePhoneNumber()
    {
        Intent intent = new Intent(this, com/waze/phone/PhoneNumberSignInActivity);
        intent.putExtra("type", 2);
        intent.putExtra("back", 1);
        intent.putExtra("fon_shon_rea_son", "UPDATE");
        startActivityForResult(intent, 1111);
    }

    private void showErrorPopup(DisplayStrings displaystrings)
    {
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final MyProfileActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                setResult(0);
                finish();
            }

            
            {
                this$0 = MyProfileActivity.this;
                super();
            }
        };
        MsgBox.openMessageBoxWithCallback(mNm.getLanguageString(DisplayStrings.DS_UHHOHE), mNm.getLanguageString(displaystrings), false, onclicklistener);
    }

    public void SetMyWazeData(MyWazeData mywazedata)
    {
        mWazeData = mywazedata;
        mIgnoreTextEdits = true;
        ImageView imageview;
        if (mWazeData.mFirstName == null || mWazeData.mFirstName.equals(""))
        {
            ((EditText)findViewById(0x7f090419)).setHint(mNm.getLanguageString(DisplayStrings.DS_TAP_TO_ADD));
        } else
        {
            ((EditText)findViewById(0x7f090419)).setText(mywazedata.mFirstName);
        }
        if (mWazeData.mLastName == null || mWazeData.mLastName.equals(""))
        {
            ((EditText)findViewById(0x7f09041b)).setHint(mNm.getLanguageString(DisplayStrings.DS_TAP_TO_ADD));
        } else
        {
            ((EditText)findViewById(0x7f09041b)).setText(mywazedata.mLastName);
        }
        if (mWazeData.mEmail == null || mWazeData.mEmail.equals(""))
        {
            ((EditText)findViewById(0x7f090429)).setHint(mNm.getLanguageString(DisplayStrings.DS_TAP_TO_ADD));
        } else
        {
            ((EditText)findViewById(0x7f090429)).setText(mywazedata.mEmail);
        }
        if (MyWazeNativeManager.getInstance().isRandomUserNTV())
        {
            ((EditText)findViewById(0x7f090420)).setHint(mNm.getLanguageString(DisplayStrings.DS_TAP_TO_ADD));
        } else
        {
            ((EditText)findViewById(0x7f090420)).setText(mywazedata.mUserName);
        }
        if (mWazeData.mPassword != null)
        {
            ((EditText)findViewById(0x7f090422)).setText(mywazedata.mPassword);
        }
        if (mywazedata.mPhoneNumber == null || mywazedata.mPhoneNumber.equals("") || !mywazedata.mContactsLoggedIn)
        {
            ((WazeTextView)findViewById(0x7f090427)).setHint(mNm.getLanguageString(DisplayStrings.DS_TAP_TO_ADD));
        } else
        {
            ((WazeTextView)findViewById(0x7f090427)).setText(mywazedata.mPhoneNumber);
        }
        mIgnoreTextEdits = false;
        ((ImageView)findViewById(0x7f090416)).setImageResource(MoodManager.getInstance().getBigMoodDrawble());
        imageview = (ImageView)findViewById(0x7f090415);
        imageview.setImageResource(0x7f0203a3);
        if (mywazedata.mImageUrl != null)
        {
            ((WazeTextView)findViewById(0x7f090417)).setText(mNm.getLanguageString(DisplayStrings.DS_TAP_TO_EDIT));
            ImageRepository.instance.getImage(mywazedata.mImageUrl, imageview, this);
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 1111 && j == -1)
        {
            setResult(-1);
            finish();
        }
        if (j == 3)
        {
            setResult(0);
            finish();
        }
        if ((i == 222 || i == 223) && mImageTaker != null)
        {
            mImageTaker.onActivityResult(i, j, intent);
            if (mImageTaker.hasImage())
            {
                ((ImageView)findViewById(0x7f090415)).setImageBitmap(mImageTaker.getImage());
                ((ImageView)findViewById(0x7f090415)).buildDrawingCache();
                mWasUserImageChanged = true;
            }
        }
        super.onActivityResult(i, j, intent);
    }

    public void onBackPressed()
    {
        if (mWasPasswordChanged && MyWazeNativeManager.getInstance().isRandomUserNTV() && !mWasUserNameChanged)
        {
            MsgBox.openMessageBox(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_UHHOHE), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ENTER_USERNAME_FIRST), false);
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mNm = NativeManager.getInstance();
        getWindow().setSoftInputMode(3);
        requestWindowFeature(1);
        setContentView(0x7f03008d);
        mMwnm = MyWazeNativeManager.getInstance();
        mMwnm.getMyWazeData(this);
        mNm.SuggestUserNameInit();
        ((TitleBar)findViewById(0x7f090411)).init(this, DisplayStrings.DS_MY_PROFILE);
        ((TitleBar)findViewById(0x7f090411)).setOnClickCloseListener(new android.view.View.OnClickListener() {

            final MyProfileActivity this$0;

            public void onClick(View view)
            {
                if (mWasPasswordChanged && MyWazeNativeManager.getInstance().isRandomUserNTV() && !mWasUserNameChanged)
                {
                    MsgBox.openMessageBox(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_UHHOHE), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ENTER_USERNAME_FIRST), false);
                    return;
                } else
                {
                    setResult(-1);
                    finish();
                    return;
                }
            }

            
            {
                this$0 = MyProfileActivity.this;
                super();
            }
        });
        ((SettingsTitleText)findViewById(0x7f090414)).setText(mNm.getLanguageString(DisplayStrings.DS_HOW_YOUR_FRIENDS_SEE_YOU));
        SettingsSwitchView settingsswitchview = (SettingsSwitchView)findViewById(0x7f09042a);
        settingsswitchview.setText(mNm.getLanguageString(DisplayStrings.DS_WAZE_CAN_SEND_ME_EMAILS));
        settingsswitchview.setValue(mNm.GetAllowSendMailNTV());
        settingsswitchview.setOnChecked(new SwitchCheckedCallback() {

            final MyProfileActivity this$0;

            public void OnCallback(boolean flag)
            {
                NativeManager.getInstance().AllowSendmails(flag);
            }

            
            {
                this$0 = MyProfileActivity.this;
                super();
            }
        });
        findViewById(0x7f090415).setOnClickListener(new android.view.View.OnClickListener() {

            final MyProfileActivity this$0;

            public void onClick(View view)
            {
                if (mImageTaker == null)
                {
                    mImageTaker = new ImageTaker(MyProfileActivity.this, "ProfileImage");
                }
                mImageTaker.sendIntent();
            }

            
            {
                this$0 = MyProfileActivity.this;
                super();
            }
        });
        ((WazeTextView)findViewById(0x7f090417)).setText(mNm.getLanguageString(DisplayStrings.DS_TAP_TO_ADD));
        ((SettingsTitleText)findViewById(0x7f09042b)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ADVANCED));
        ((WazeTextView)findViewById(0x7f090418)).setText(mNm.getLanguageString(DisplayStrings.DS_FIRST_NAME));
        ((WazeTextView)findViewById(0x7f09041a)).setText(mNm.getLanguageString(DisplayStrings.DS_LAST_NAME));
        ((WazeTextView)findViewById(0x7f09041d)).setText(mNm.getLanguageString(DisplayStrings.DS_USER_NAME));
        ((WazeTextView)findViewById(0x7f090421)).setText(mNm.getLanguageString(DisplayStrings.DS_PASSWORD));
        mFirstNameEdit = (EditText)findViewById(0x7f090419);
        mFirstNameEdit.setText("");
        mFirstNameEdit.addTextChangedListener(new TextWatcher() {

            final MyProfileActivity this$0;

            public void afterTextChanged(Editable editable)
            {
                if (mIgnoreTextEdits)
                {
                    return;
                } else
                {
                    mWasFirstNameChanged = true;
                    return;
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            
            {
                this$0 = MyProfileActivity.this;
                super();
            }
        });
        mPasswordEdit = (EditText)findViewById(0x7f090422);
        mPasswordEdit.setText("");
        mPasswordEdit.addTextChangedListener(new TextWatcher() {

            final MyProfileActivity this$0;

            public void afterTextChanged(Editable editable)
            {
                if (mIgnoreTextEdits)
                {
                    return;
                } else
                {
                    mWasPasswordChanged = true;
                    return;
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            
            {
                this$0 = MyProfileActivity.this;
                super();
            }
        });
        mLastNameEdit = (EditText)findViewById(0x7f09041b);
        mLastNameEdit.setText("");
        mLastNameEdit.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final MyProfileActivity this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                return false;
            }

            
            {
                this$0 = MyProfileActivity.this;
                super();
            }
        });
        mLastNameEdit.addTextChangedListener(new TextWatcher() {

            final MyProfileActivity this$0;

            public void afterTextChanged(Editable editable)
            {
                if (mIgnoreTextEdits)
                {
                    return;
                } else
                {
                    mWasLastNameChanged = true;
                    return;
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            
            {
                this$0 = MyProfileActivity.this;
                super();
            }
        });
        mUserNameEdit = (EditText)findViewById(0x7f090420);
        mUserNameEdit.setText("");
        mNm.registerOnUserNameResultListerner(this);
        mUserNameEdit.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final MyProfileActivity this$0;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    ((ScrollView)findViewById(0x7f090412)).scrollTo(0, findViewById(0x7f09041c).getTop());
                }
            }

            
            {
                this$0 = MyProfileActivity.this;
                super();
            }
        });
        mUserNameEdit.addTextChangedListener(new TextWatcher() {

            private Runnable aEvent;
            final MyProfileActivity this$0;

            public void afterTextChanged(Editable editable)
            {
                if (mIgnoreTextEdits)
                {
                    return;
                }
                mWasUserNameChanged = true;
                TextView textview = (TextView)findViewById(0x7f09041e);
                textview.setText(mNm.getLanguageString(DisplayStrings.DS_CHECKING));
                textview.setTextColor(AppService.getAppResources().getColor(0x7f080031));
                textview.setVisibility(0);
                findViewById(0x7f09041f).setVisibility(8);
                mIsUserNameValid = false;
                if (aEvent != null)
                {
                    AppService.Remove(aEvent);
                } else
                {
                    aEvent = new Runnable() {

                        final _cls9 this$1;

                        public void run()
                        {
                            if (mText != null && mText.length() > 0)
                            {
                                mNm.SuggestUserNameRequest(null, null, mText);
                            }
                        }

            
            {
                this$1 = _cls9.this;
                super();
            }
                    };
                }
                AppService.Post(aEvent, 500L);
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                mText = charsequence.toString();
            }


            
            {
                this$0 = MyProfileActivity.this;
                super();
                aEvent = null;
            }
        });
        ((TextView)findViewById(0x7f09041f)).setPaintFlags(8);
        ((TextView)findViewById(0x7f09041f)).setOnClickListener(new android.view.View.OnClickListener() {

            final MyProfileActivity this$0;

            public void onClick(View view)
            {
                if (mUserNameSuggested != null)
                {
                    mUserNameEdit.setText(mUserNameSuggested);
                    mUserNameEdit.setSelection(mUserNameSuggested.length());
                }
            }

            
            {
                this$0 = MyProfileActivity.this;
                super();
            }
        });
        ((WazeTextView)findViewById(0x7f090423)).setText(mNm.getLanguageString(DisplayStrings.DS_YOUR_PHOTO_AND_FULL_NAME_WILL_BE_SHOWN_TO_FRIENDS));
        ((SettingsTitleText)findViewById(0x7f090424)).setText(mNm.getLanguageString(DisplayStrings.DS_LOGIN_CREDENTIALS));
        ((WazeTextView)findViewById(0x7f090426)).setText(mNm.getLanguageString(DisplayStrings.DS_PHONE));
        ((WazeTextView)findViewById(0x7f090427)).setText("");
        findViewById(0x7f090425).setOnClickListener(new android.view.View.OnClickListener() {

            final MyProfileActivity this$0;

            public void onClick(View view)
            {
                changePhoneNumber();
            }

            
            {
                this$0 = MyProfileActivity.this;
                super();
            }
        });
        ((WazeTextView)findViewById(0x7f090428)).setText(mNm.getLanguageString(DisplayStrings.DS_EMAIL));
        ((EditText)findViewById(0x7f090429)).setText("");
        mEmailEdit = (EditText)findViewById(0x7f090429);
        mEmailEdit.addTextChangedListener(new TextWatcher() {

            final MyProfileActivity this$0;

            public void afterTextChanged(Editable editable)
            {
                if (mIgnoreTextEdits)
                {
                    return;
                } else
                {
                    mWasEmailChanged = true;
                    return;
                }
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            
            {
                this$0 = MyProfileActivity.this;
                super();
            }
        });
        ((SettingsTitleText)findViewById(0x7f090424)).setText(mNm.getLanguageString(DisplayStrings.DS_LOGIN_CREDENTIALS));
        ((DrillDownSettingView)findViewById(0x7f09042c)).setText(mNm.getLanguageString(DisplayStrings.DS_LOG_OUT));
        DrillDownSettingView drilldownsettingview = (DrillDownSettingView)findViewById(0x7f09042d);
        drilldownsettingview.setText(mNm.getLanguageString(DisplayStrings.DS_DELETE_ACCOUNT));
        drilldownsettingview.setTextColor(0xffff0000);
        findViewById(0x7f09042c).setOnClickListener(new android.view.View.OnClickListener() {

            final MyProfileActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().LogOutAccount();
                AddressBook.DeleteAccount();
            }

            
            {
                this$0 = MyProfileActivity.this;
                super();
            }
        });
        drilldownsettingview.setOnClickListener(new android.view.View.OnClickListener() {

            final MyProfileActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().DeleteAccount();
                AddressBook.DeleteAccount();
            }

            
            {
                this$0 = MyProfileActivity.this;
                super();
            }
        });
        ((WazeTextView)findViewById(0x7f09042e)).setText(mNm.getLanguageString(DisplayStrings.DS_YOU_CAN_DELETE_YOUR_ACCOUNT_AND_PERSONAL_DATA_ANYTIME));
    }

    protected void onDestroy()
    {
label0:
        {
            OnClickListenerImplementation onclicklistenerimplementation;
            if (!mWasLastNameChanged && !mWasFirstNameChanged && !mWasUserNameChanged && !mWasPasswordChanged)
            {
                boolean flag = mWasEmailChanged;
                onclicklistenerimplementation = null;
                if (!flag)
                {
                    break label0;
                }
            }
            String s;
            String s1;
            String s2;
            String s3;
            String s4;
            MsgBox msgbox;
            String s5;
            String s6;
            String s7;
            String s8;
            File file;
            if (mIsUserNameValid)
            {
                s = mText;
            } else
            {
                s = mWazeData.mUserName;
            }
            s1 = "";
            if (!mWasUserNameChanged && !mWasPasswordChanged)
            {
                s = "";
            }
            if (mFirstNameEdit.getText().toString().trim().equals(""))
            {
                s2 = mWazeData.mFirstName;
            } else
            {
                s2 = mFirstNameEdit.getText().toString().trim();
            }
            if (mLastNameEdit.getText().toString().trim().equals(""))
            {
                s3 = mWazeData.mLastName;
            } else
            {
                s3 = mLastNameEdit.getText().toString().trim();
            }
            if (mEmailEdit.getText().toString().trim().equals(""))
            {
                s4 = mWazeData.mEmail;
            } else
            {
                s4 = mEmailEdit.getText().toString().trim();
            }
            if (mWasPasswordChanged)
            {
                s1 = mPasswordEdit.getText().toString();
            }
            onclicklistenerimplementation = null;
            if (true)
            {
                onclicklistenerimplementation = new OnClickListenerImplementation(null);
            }
            onclicklistenerimplementation.setNames(s2, s3, s, s1, s4);
        }
        if (mWasUserImageChanged && mImageTaker != null && mImageTaker.hasImage())
        {
            file = new File(mImageTaker.getImagePath());
            if (onclicklistenerimplementation == null)
            {
                onclicklistenerimplementation = new OnClickListenerImplementation(null);
            }
            onclicklistenerimplementation.setImage(file);
        }
        if (onclicklistenerimplementation != null)
        {
            msgbox = MsgBox.getInstance();
            s5 = mNm.getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q);
            s6 = mNm.getLanguageString(DisplayStrings.DS_CHANGE_YOUR_DETAILSQ);
            s7 = mNm.getLanguageString(DisplayStrings.DS_YES);
            s8 = mNm.getLanguageString(DisplayStrings.DS_CANCEL);
            msgbox.OpenConfirmDialogCustomTimeoutCbJava(s5, s6, true, onclicklistenerimplementation, s7, s8, -1);
        }
        mNm.SuggestUserNameTerminate(null);
        mNm.unregisterOnUserNameResultListerner(this);
        super.onDestroy();
    }

    public void onUserNameResult(int i, String s)
    {
        if (s == null) goto _L2; else goto _L1
_L1:
        TextView textview;
        TextView textview1;
        Object obj;
        mUserNameStr = s;
        textview = (TextView)findViewById(0x7f09041e);
        textview1 = (TextView)findViewById(0x7f09041f);
        obj = null;
        i;
        JVM INSTR tableswitch 0 5: default 76
    //                   0 83
    //                   1 123
    //                   2 158
    //                   3 193
    //                   4 228
    //                   5 276;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L3:
        textview.setText(((CharSequence) (obj)));
_L2:
        return;
_L4:
        obj = mNm.getLanguageString(DisplayStrings.DS_LOOKS_GOOD);
        mIsUserNameValid = true;
        textview.setTextColor(AppService.getAppResources().getColor(0x7f080031));
        textview1.setVisibility(8);
        continue; /* Loop/switch isn't completed */
_L5:
        obj = mNm.getLanguageString(DisplayStrings.DS_YOUR_USER_NAME_IS_TOO_SHORT);
        textview.setTextColor(AppService.getAppResources().getColor(0x7f080030));
        textview1.setVisibility(8);
        continue; /* Loop/switch isn't completed */
_L6:
        obj = mNm.getLanguageString(DisplayStrings.DS_USERNAME_IS_TOO_LONG);
        textview.setTextColor(AppService.getAppResources().getColor(0x7f080030));
        textview1.setVisibility(8);
        continue; /* Loop/switch isn't completed */
_L7:
        obj = mNm.getLanguageString(DisplayStrings.DS_INVALID_CHARACTER_USE_ONLY_LETTERS_AND_NUMBERS);
        textview.setTextColor(AppService.getAppResources().getColor(0x7f080030));
        textview1.setVisibility(8);
        continue; /* Loop/switch isn't completed */
_L8:
        obj = mNm.getLanguageString(DisplayStrings.DS_THATS_TAKEN_TRY);
        textview1.setVisibility(0);
        textview.setTextColor(AppService.getAppResources().getColor(0x7f080030));
        mUserNameSuggested = s;
        textview1.setText(mUserNameSuggested);
        continue; /* Loop/switch isn't completed */
_L9:
        obj = mNm.getLanguageString(DisplayStrings.DS_YOU_CANT_USE_THIS_USERNAME);
        textview.setTextColor(AppService.getAppResources().getColor(0x7f080030));
        if (true) goto _L3; else goto _L10
_L10:
    }

















}
