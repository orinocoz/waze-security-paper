// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeData;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.phone.AddressBook;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.settings.DrillDownSettingView;
import com.waze.settings.SettingsTitleText;
import com.waze.strings.DisplayStrings;
import com.waze.view.text.WazeTextView;
import com.waze.view.title.TitleBar;

public class TempUserProfileActivity extends ActivityBase
{

    private MyWazeNativeManager mMwnm;
    private NativeManager mNm;
    private MyWazeData mWazeData;

    public TempUserProfileActivity()
    {
    }

    private void changePhoneNumber()
    {
        Intent intent = new Intent(this, com/waze/phone/PhoneNumberSignInActivity);
        intent.putExtra("type", 2);
        intent.putExtra("back", 1);
        intent.putExtra("fon_shon_rea_son", "UPDATE");
        startActivityForResult(intent, 1111);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        if (j == 3)
        {
            setResult(0);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    public void onBackPressed()
    {
        super.onBackPressed();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mNm = NativeManager.getInstance();
        getWindow().setSoftInputMode(3);
        requestWindowFeature(1);
        setContentView(0x7f030115);
        mMwnm = MyWazeNativeManager.getInstance();
        mMwnm.getMyWazeData(this);
        mNm.SuggestUserNameInit();
        ((TitleBar)findViewById(0x7f090411)).init(this, DisplayStrings.DS_MY_PROFILE);
        ((TitleBar)findViewById(0x7f090411)).setOnClickCloseListener(new android.view.View.OnClickListener() {

            final TempUserProfileActivity this$0;

            public void onClick(View view)
            {
                setResult(-1);
                finish();
            }

            
            {
                this$0 = TempUserProfileActivity.this;
                super();
            }
        });
        ((SettingsTitleText)findViewById(0x7f09042b)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ADVANCED));
        ((WazeTextView)findViewById(0x7f090423)).setText(mNm.getLanguageString(DisplayStrings.DS_REGISTER_TO_GET_MOST_OUT_OF));
        ((SettingsTitleText)findViewById(0x7f090424)).setText(mNm.getLanguageString(DisplayStrings.DS_SIGN_UP));
        ((WazeTextView)findViewById(0x7f090426)).setText(mNm.getLanguageString(DisplayStrings.DS_CREATE_ACCOUNT));
        findViewById(0x7f090425).setOnClickListener(new android.view.View.OnClickListener() {

            final TempUserProfileActivity this$0;

            public void onClick(View view)
            {
                changePhoneNumber();
            }

            
            {
                this$0 = TempUserProfileActivity.this;
                super();
            }
        });
        ((SettingsTitleText)findViewById(0x7f090424)).setText(mNm.getLanguageString(DisplayStrings.DS_ACCOUNT_DETAILS));
        ((DrillDownSettingView)findViewById(0x7f09042c)).setText(mNm.getLanguageString(DisplayStrings.DS_SWITCH_ACCOUNTS));
        DrillDownSettingView drilldownsettingview = (DrillDownSettingView)findViewById(0x7f09042d);
        drilldownsettingview.setText(mNm.getLanguageString(DisplayStrings.DS_DELETE_ACCOUNT));
        drilldownsettingview.setTextColor(0xffff0000);
        findViewById(0x7f09042c).setOnClickListener(new android.view.View.OnClickListener() {

            final TempUserProfileActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().LogOutAccount();
                AddressBook.DeleteAccount();
            }

            
            {
                this$0 = TempUserProfileActivity.this;
                super();
            }
        });
        drilldownsettingview.setOnClickListener(new android.view.View.OnClickListener() {

            final TempUserProfileActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().DeleteAccount();
                AddressBook.DeleteAccount();
            }

            
            {
                this$0 = TempUserProfileActivity.this;
                super();
            }
        });
        ((WazeTextView)findViewById(0x7f09042e)).setText(mNm.getLanguageString(DisplayStrings.DS_YOU_CAN_DELETE_YOUR_ACCOUNT_AND_PERSONAL_DATA_ANYTIME));
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

}
