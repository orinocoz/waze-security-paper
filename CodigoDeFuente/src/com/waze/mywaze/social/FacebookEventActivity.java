// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.social;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.main.navigate.LocationData;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.SearchActivity;
import com.waze.strings.DisplayStrings;
import com.waze.utils.EditTextUtils;
import com.waze.view.title.TitleBar;

public class FacebookEventActivity extends ActivityBase
{

    protected static final float HINT_SIZE = 14F;
    protected static final float TEXT_SIZE = 16F;
    private boolean isNavigating;
    protected LocationData locationData;
    private AddressItem mAddressItem;
    private String mBody;
    private String mSubject;
    private String mUrl;
    private NativeManager nativeManager;
    EditText searchBox;

    public FacebookEventActivity()
    {
        isNavigating = false;
        mSubject = null;
        mBody = null;
        mUrl = null;
        nativeManager = AppService.getNativeManager();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j != 0)
        {
            setResult(j, intent);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030052);
        ((TitleBar)findViewById(0x7f090073)).init(this, DisplayStrings.DS_FACEBOOK_EVENT);
        mAddressItem = (AddressItem)getIntent().getExtras().getSerializable("AddressItem");
        Analytics.log("VERIF_EVENT_SCREEN");
        ((TextView)findViewById(0x7f0902a6)).setText(mAddressItem.getTitle());
        ((TextView)findViewById(0x7f0902a7)).setText(mAddressItem.getStartTime());
        ((TextView)findViewById(0x7f0902a8)).setText(nativeManager.getLanguageString(DisplayStrings.DS_THIS_LOCATION_ADDRESS_HAS_NOT));
        ((TextView)findViewById(0x7f0902ac)).setText(nativeManager.getLanguageString(DisplayStrings.DS_THIS_EVENT_HAS_NO_LOCATION));
        ((TextView)findViewById(0x7f0902ac)).setPaintFlags(8);
        ((TextView)findViewById(0x7f0902ac)).setOnClickListener(new android.view.View.OnClickListener() {

            final FacebookEventActivity this$0;

            public void onClick(View view)
            {
                android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

                    final _cls1 this$1;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        if (i == 1)
                        {
                            DriveToNativeManager.getInstance().VerifyEventWithNoAddress(mAddressItem.getMeetingId());
                            setResult(-1);
                            finish();
                        }
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                };
                MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(nativeManager.getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), nativeManager.getLanguageString(DisplayStrings.DS_EVENT_CONFIRM_NO_LOCATION), true, onclicklistener, nativeManager.getLanguageString(DisplayStrings.DS_REMOVE_EVENT), nativeManager.getLanguageString(DisplayStrings.DS_CANCEL), -1);
            }


            
            {
                this$0 = FacebookEventActivity.this;
                super();
            }
        });
        ((Button)findViewById(0x7f0902aa)).setText(nativeManager.getLanguageString(DisplayStrings.DS_USE_THIS_ADDRESS));
        findViewById(0x7f0902aa).setOnClickListener(new android.view.View.OnClickListener() {

            final FacebookEventActivity this$0;

            public void onClick(View view)
            {
                searchClicked();
            }

            
            {
                this$0 = FacebookEventActivity.this;
                super();
            }
        });
        searchBox = (EditText)findViewById(0x7f0902a9);
        searchBox.setOnTouchListener(EditTextUtils.getKeyboardLockOnTouchListener(this, searchBox, null));
        searchBox.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final FacebookEventActivity this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                Log.d("WAZE", (new StringBuilder("a:")).append(i).append(" ke:").append(keyevent).toString());
                if (i == 3)
                {
                    searchClicked();
                }
                if (keyevent != null && keyevent.getAction() == 1)
                {
                    searchClicked();
                }
                return true;
            }

            
            {
                this$0 = FacebookEventActivity.this;
                super();
            }
        });
        searchBox.addTextChangedListener(new TextWatcher() {

            final FacebookEventActivity this$0;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                if (charsequence.length() == 0)
                {
                    searchBox.setTextSize(1, 14F);
                    return;
                } else
                {
                    searchBox.setTextSize(1, 16F);
                    return;
                }
            }

            
            {
                this$0 = FacebookEventActivity.this;
                super();
            }
        });
        searchBox.setText(mAddressItem.getAddress());
    }

    public void onPause()
    {
        super.onPause();
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(searchBox.getWindowToken(), 0);
    }

    public void searchClicked()
    {
        Log.d("WAZE", "Search from facebook event pressed");
        Intent intent = new Intent(this, com/waze/navigate/SearchActivity);
        if (searchBox.getText().length() > 0)
        {
            intent.putExtra("SearchStr", searchBox.getText().toString());
            intent.putExtra("AddressItem", mAddressItem);
            intent.putExtra("SearchMode", 6);
            startActivityForResult(intent, 1);
        }
    }


}
