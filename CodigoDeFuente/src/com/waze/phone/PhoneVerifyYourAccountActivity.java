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
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.SearchActivity;
import com.waze.strings.DisplayStrings;
import java.util.EnumSet;

// Referenced classes of package com.waze.phone:
//            PhoneVerifyYourAccountFailureActivity

public class PhoneVerifyYourAccountActivity extends ActivityBase
{

    private static int $SWITCH_TABLE$com$waze$phone$PhoneAlreadyAWazerActivity$HomeWorkFavorites[];
    private static final int AFTER_SEARCH_ADDRESS_RETURNED = 1;
    protected static final float HINT_SIZE = 14F;
    protected static final float TEXT_SIZE = 16F;
    private DriveToNativeManager driveToNativeManager;
    private AddressItem mAddressesToVerify[];
    private EnumSet mHomeWorkAvailableFlags;
    private PhoneAlreadyAWazerActivity.HomeWorkFavorites mHomeWorkCurrentFlag;
    private LinearLayout mNextButton;
    private TextView mNextText;
    private ScrollView mScrollView;
    private EditText mSearchBox;
    private TextView mVerifyBodyText;
    private TextView mVerifyHeaderText;
    private NativeManager nativeManager;

    static int[] $SWITCH_TABLE$com$waze$phone$PhoneAlreadyAWazerActivity$HomeWorkFavorites()
    {
        int ai[] = $SWITCH_TABLE$com$waze$phone$PhoneAlreadyAWazerActivity$HomeWorkFavorites;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[PhoneAlreadyAWazerActivity.HomeWorkFavorites.values().length];
        try
        {
            ai1[PhoneAlreadyAWazerActivity.HomeWorkFavorites.HOME.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[PhoneAlreadyAWazerActivity.HomeWorkFavorites.WORK.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        $SWITCH_TABLE$com$waze$phone$PhoneAlreadyAWazerActivity$HomeWorkFavorites = ai1;
        return ai1;
    }

    public PhoneVerifyYourAccountActivity()
    {
        mAddressesToVerify = null;
    }

    private void handleSearchResult(Intent intent)
    {
        if (intent == null) goto _L2; else goto _L1
_L1:
        AddressItem addressitem = (AddressItem)intent.getExtras().getSerializable("AddressItem");
        $SWITCH_TABLE$com$waze$phone$PhoneAlreadyAWazerActivity$HomeWorkFavorites()[mHomeWorkCurrentFlag.ordinal()];
        JVM INSTR tableswitch 1 2: default 52
    //                   1 53
    //                   2 97;
           goto _L2 _L3 _L4
_L2:
        return;
_L3:
        mHomeWorkAvailableFlags.remove(PhoneAlreadyAWazerActivity.HomeWorkFavorites.HOME);
        mAddressesToVerify[PhoneAlreadyAWazerActivity.HomeWorkFavorites.HOME.getNumVal()] = addressitem;
        if (mHomeWorkAvailableFlags.contains(PhoneAlreadyAWazerActivity.HomeWorkFavorites.WORK))
        {
            setCurrentHomeWorkFlag(PhoneAlreadyAWazerActivity.HomeWorkFavorites.WORK);
            return;
        }
        if (true) goto _L2; else goto _L4
_L4:
        mHomeWorkAvailableFlags.remove(PhoneAlreadyAWazerActivity.HomeWorkFavorites.WORK);
        mAddressesToVerify[PhoneAlreadyAWazerActivity.HomeWorkFavorites.WORK.getNumVal()] = addressitem;
        return;
    }

    private void initFieldsTexts()
    {
        setTextContent();
        setFonts();
    }

    private void initLayout()
    {
        setContentView(0x7f0300a9);
        mNextButton = (LinearLayout)findViewById(0x7f0904e3);
        mNextText = (TextView)findViewById(0x7f0904e4);
        mSearchBox = (EditText)findViewById(0x7f090061);
        mVerifyHeaderText = (TextView)findViewById(0x7f090515);
        mVerifyBodyText = (TextView)findViewById(0x7f090516);
        mScrollView = (ScrollView)findViewById(0x7f0904df);
    }

    private void initMembers()
    {
        driveToNativeManager = DriveToNativeManager.getInstance();
        nativeManager = AppService.getNativeManager();
        NativeManager.getInstance().OpenSearchIntent();
        NativeManager.getInstance().OpenRoutingIntent();
        driveToNativeManager.setSearchMode(false);
        mAddressesToVerify = new AddressItem[2];
    }

    private void setCurrentHomeWorkFlag(PhoneAlreadyAWazerActivity.HomeWorkFavorites homeworkfavorites)
    {
        mHomeWorkCurrentFlag = homeworkfavorites;
        switch ($SWITCH_TABLE$com$waze$phone$PhoneAlreadyAWazerActivity$HomeWorkFavorites()[homeworkfavorites.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            mVerifyBodyText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ENTER_THE_HOME_ADDRESS_STOREDNIN_YOUR_WAZE_FAVORITES_));
            return;

        case 2: // '\002'
            mVerifyBodyText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ENTER_THE_WORK_ADDRESS_STOREDNIN_YOUR_WAZE_FAVORITES_));
            break;
        }
    }

    private void setFonts()
    {
        mSearchBox.setTypeface(ResManager.getRobotoLight(this));
    }

    private void setKeyboardVisibilityListener()
    {
        final View root = findViewById(0x7f0904d2);
        root.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final PhoneVerifyYourAccountActivity this$0;
            private final View val$root;

            public void onGlobalLayout()
            {
                if (root.getRootView().getHeight() - root.getHeight() > 100)
                {
                    mScrollView.scrollTo(0, mScrollView.getHeight());
                }
            }

            
            {
                this$0 = PhoneVerifyYourAccountActivity.this;
                root = view;
                super();
            }
        });
    }

    private void setListeners()
    {
        setKeyboardVisibilityListener();
        setOnClickListeners();
    }

    private void setOnClickListeners()
    {
        mSearchBox.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneVerifyYourAccountActivity this$0;

            public void onClick(View view)
            {
                searchClicked(view);
            }

            
            {
                this$0 = PhoneVerifyYourAccountActivity.this;
                super();
            }
        });
        mNextButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneVerifyYourAccountActivity this$0;

            public void onClick(View view)
            {
                searchClicked(view);
            }

            
            {
                this$0 = PhoneVerifyYourAccountActivity.this;
                super();
            }
        });
        mSearchBox.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final PhoneVerifyYourAccountActivity this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                if (i == 3)
                {
                    searchClicked(textview);
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                this$0 = PhoneVerifyYourAccountActivity.this;
                super();
            }
        });
    }

    private void setTextContent()
    {
        mVerifyHeaderText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_VERIFY_YOUR_ACCOUNT).toUpperCase());
        mSearchBox.setHint(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SEARCH_ADDRESS));
        mNextText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_NEXT));
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        Log.d("WAZE", (new StringBuilder("phoneVerifyYourAccount onActRes requestCode=")).append(i).append(" resultCode=").append(j).append(" Intent=").append(intent).toString());
        if (j != -1) goto _L2; else goto _L1
_L1:
        i;
        JVM INSTR tableswitch 1 1: default 68
    //                   1 85;
           goto _L3 _L4
_L3:
        setResult(-1);
        finish();
_L2:
        super.onActivityResult(i, j, intent);
        return;
_L4:
        startActivityForResult(new Intent(this, com/waze/phone/PhoneVerifyYourAccountFailureActivity), 1);
        if (true) goto _L2; else goto _L5
_L5:
    }

    protected void onCreate(Bundle bundle)
    {
label0:
        {
            super.onCreate(bundle);
            initLayout();
            initMembers();
            initFieldsTexts();
            setListeners();
            if (getIntent() != null)
            {
                mHomeWorkAvailableFlags = (EnumSet)getIntent().getExtras().getSerializable("homeWorkFlags");
                if (!mHomeWorkAvailableFlags.contains(PhoneAlreadyAWazerActivity.HomeWorkFavorites.HOME))
                {
                    break label0;
                }
                setCurrentHomeWorkFlag(PhoneAlreadyAWazerActivity.HomeWorkFavorites.HOME);
            }
            return;
        }
        setCurrentHomeWorkFlag(PhoneAlreadyAWazerActivity.HomeWorkFavorites.WORK);
    }

    public void onPause()
    {
        super.onPause();
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(mSearchBox.getWindowToken(), 0);
    }

    public void searchClicked(View view)
    {
        if (!mSearchBox.getText().toString().equals(""))
        {
            Log.d("WAZE", "Search pressed");
            Intent intent = new Intent(this, com/waze/navigate/SearchActivity);
            String s = nativeManager.isCategorySearchNTV(mSearchBox.getText().toString());
            if (s == null || s.equals(""))
            {
                intent.putExtra("SearchStr", mSearchBox.getText().toString());
            } else
            {
                intent.putExtra("SearchCategory", s);
            }
            intent.putExtra("SearchMode", 7);
            mSearchBox.setText("");
            startActivityForResult(intent, 1);
        }
    }

}
