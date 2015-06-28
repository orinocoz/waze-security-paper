// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ImageButton;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.autocomplete.PlaceData;
import com.waze.autocomplete.PlacesAutoCompleteAdapter;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.utils.EditTextUtils;
import com.waze.view.text.InstantAutoComplete;
import com.waze.view.title.TitleBar;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

// Referenced classes of package com.waze.navigate:
//            SearchActivity, AddressItem, DriveToNativeManager

public final class AutocompleteSearchActivity extends ActivityBase
{

    protected static final float HINT_SIZE = 14F;
    protected static final float TEXT_SIZE = 16F;
    DriveToNativeManager.DriveToGetAddressItemArrayCallback getHistoryCallback;
    private boolean isKeyboardVisible;
    private AddressItem mAddresses[];
    private PlacesAutoCompleteAdapter mPlaceAdapter;
    Integer mType;
    private NativeManager natMgr;
    private NativeManager nativeManager;
    private DriveToNativeManager nm;
    InstantAutoComplete searchBox;
    private String speechString;

    public AutocompleteSearchActivity()
    {
        mAddresses = null;
        getHistoryCallback = new DriveToNativeManager.DriveToGetAddressItemArrayCallback() {

            final AutocompleteSearchActivity this$0;

            public void getAddressItemArrayCallback(AddressItem aaddressitem[])
            {
                mAddresses = aaddressitem;
                mPlaceAdapter = new PlacesAutoCompleteAdapter(AutocompleteSearchActivity.this, 0x109000a, mAddresses, natMgr.getApiKey(), searchBox, new com.waze.autocomplete.PlacesAutoCompleteAdapter.IPrepareForSerchResults() {

                    final _cls1 this$1;

                    public void onPrepareForSerchResults()
                    {
                        SetHandlerForAutocomplete();
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                });
                Arrays.sort(mAddresses, new Comparator() {

                    final _cls1 this$1;

                    public int compare(AddressItem addressitem, AddressItem addressitem1)
                    {
                        if (addressitem.getType() == addressitem1.getType())
                        {
                            return 0;
                        }
                        return addressitem.getType().intValue() != 8 ? 1 : -1;
                    }

                    public volatile int compare(Object obj, Object obj1)
                    {
                        return compare((AddressItem)obj, (AddressItem)obj1);
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                });
                int i = 0x1000 | (8 | 0xffffffef & (0xffffffdf & mPlaceAdapter.getFeatures()));
                mPlaceAdapter.setFeatures(i);
                searchBox.setAdapter(mPlaceAdapter);
                searchBox.filterNow();
            }


            
            {
                this$0 = AutocompleteSearchActivity.this;
                super();
            }
        };
    }

    private void continueToSearch()
    {
        Intent intent = new Intent(this, com/waze/navigate/SearchActivity);
        intent.putExtra("SearchStr", searchBox.getText().toString());
        intent.putExtra("SearchMode", mType);
        startActivityForResult(intent, 1);
    }

    private void finishedSearch(AddressItem addressitem)
    {
        if (mType.intValue() == 3)
        {
            addressitem.setTitle("Home");
            addressitem.setCategory(Integer.valueOf(1));
            Log.d("WAZE", (new StringBuilder("add home ai=")).append(addressitem.toString()).toString());
            nm.StoreAddressItem(addressitem);
            setResult(-1);
            finish();
        } else
        if (mType.intValue() == 4)
        {
            addressitem.setTitle("Work");
            addressitem.setCategory(Integer.valueOf(1));
            Log.d("WAZE", (new StringBuilder("add work ai=")).append(addressitem.toString()).toString());
            nm.StoreAddressItem(addressitem);
            setResult(-1);
            finish();
            return;
        }
    }

    private void initLayout()
    {
        setContentView(0x7f030023);
        nativeManager = AppService.getNativeManager();
        String s = nativeManager.getLanguageString(DisplayStrings.DS_SEARCH);
        ImageButton imagebutton;
        if (mType.intValue() == 3)
        {
            s = nativeManager.getLanguageString(DisplayStrings.DS_HOME);
        } else
        if (mType.intValue() == 4)
        {
            s = nativeManager.getLanguageString(DisplayStrings.DS_WORK);
        }
        ((TitleBar)findViewById(0x7f090058)).init(this, s);
        searchBox = (InstantAutoComplete)findViewById(0x7f090061);
        searchBox.setThreshold(0);
        if (android.os.Build.VERSION.SDK_INT <= 19)
        {
            searchBox.setDropDownBackgroundDrawable(new ColorDrawable(Color.parseColor("#cbd6da")));
        } else
        {
            searchBox.setDropDownBackgroundDrawable(null);
        }
        searchBox.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final AutocompleteSearchActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                PlaceData placedata = mPlaceAdapter.getItemByPosition(i);
                if (placedata.mVenueId == null || placedata.mVenueId.equals(""))
                {
                    if (placedata.mLocalIndex >= 0)
                    {
                        AddressItem addressitem = mAddresses[placedata.mLocalIndex];
                        finishedSearch(addressitem);
                    }
                    return;
                } else
                {
                    PlaceClickedByAutoComplete(view, placedata);
                    return;
                }
            }

            
            {
                this$0 = AutocompleteSearchActivity.this;
                super();
            }
        });
        searchBox.setOnTouchListener(EditTextUtils.getKeyboardLockOnTouchListener(this, searchBox, null));
        searchBox.setHint(nativeManager.getLanguageString(DisplayStrings.DS_SEARCH_ADDRESS__PLACE_OR_CONTACT));
        searchBox.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final AutocompleteSearchActivity this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                Log.d("WAZE", (new StringBuilder("a:")).append(i).append(" ke:").append(keyevent).toString());
                if (i == 3)
                {
                    continueToSearch();
                }
                if (keyevent != null && keyevent.getAction() == 1)
                {
                    continueToSearch();
                }
                return true;
            }

            
            {
                this$0 = AutocompleteSearchActivity.this;
                super();
            }
        });
        searchBox.addTextChangedListener(new TextWatcher() {

            final AutocompleteSearchActivity this$0;

            public void afterTextChanged(Editable editable)
            {
                searchBox.post(new Runnable() {

                    final _cls4 this$1;

                    public void run()
                    {
                        searchBox.showDropDown();
                    }

            
            {
                this$1 = _cls4.this;
                super();
            }
                });
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
                this$0 = AutocompleteSearchActivity.this;
                super();
            }
        });
        nm.getAutoCompleteData(getHistoryCallback);
        imagebutton = (ImageButton)findViewById(0x7f090062);
        if (getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 0).size() == 0)
        {
            imagebutton.setVisibility(8);
        }
    }

    public void PlaceClickedByAutoComplete(View view, PlaceData placedata)
    {
        if (placedata.hasLocation())
        {
            finishedSearch(new AddressItem(placedata));
            return;
        } else
        {
            nm.setUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
            natMgr.AutoCompletePlaceClicked(placedata.mVenueId, placedata.mReference, null, null, false, placedata.mTitle, false, placedata.mfeature, placedata.mResponse, searchBox.getText().toString());
            return;
        }
    }

    public void SetHandlerForAutocomplete()
    {
        nm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
        nm.setUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
    }

    protected boolean myHandleMessage(Message message)
    {
        if (message.what == DriveToNativeManager.UH_SEARCH_ADD_RESULT)
        {
            nm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
            natMgr.CloseProgressPopup();
            finishedSearch((AddressItem)message.getData().getSerializable("address_item"));
            return true;
        } else
        {
            return super.myHandleMessage(message);
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i != 1234) goto _L2; else goto _L1
_L1:
        if (j == -1)
        {
            java.util.ArrayList arraylist = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
            if (arraylist.size() > 0)
            {
                Analytics.log("VOICE_SEARCH_RECOGNIZED");
                searchBox.setText((CharSequence)arraylist.get(0));
                ((InputMethodManager)getSystemService("input_method")).showSoftInput(searchBox, 2);
            }
        }
_L4:
        super.onActivityResult(i, j, intent);
        return;
_L2:
        if (j == 1)
        {
            setResult(1);
            finish();
        } else
        if (j != 0)
        {
            setResult(j, intent);
            finish();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onBackPressed()
    {
        super.onBackPressed();
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        initLayout();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setSoftInputMode(5);
        mType = Integer.valueOf(getIntent().getExtras().getInt("SearchMode"));
        nm = DriveToNativeManager.getInstance();
        natMgr = NativeManager.getInstance();
        natMgr.OpenSearchIntent();
        isKeyboardVisible = getIntent().getBooleanExtra("keyboard", false);
        speechString = getIntent().getStringExtra("Speech");
        initLayout();
        if (speechString != null)
        {
            searchBox.setText(speechString);
        }
        if (isKeyboardVisible || speechString != null)
        {
            nm.setSearchMode(true);
            ((InputMethodManager)getSystemService("input_method")).toggleSoftInput(2, 0);
            return;
        } else
        {
            nm.setSearchMode(false);
            return;
        }
    }

    protected void onDestroy()
    {
        nm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
        super.onDestroy();
    }

    public void onPause()
    {
        super.onPause();
        nm.unsetUpdateHandler(DriveToNativeManager.UH_SEARCH_ADD_RESULT, mHandler);
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(searchBox.getWindowToken(), 0);
    }

    public void onResume()
    {
        super.onResume();
        searchBox.requestFocus();
        EditTextUtils.openKeyboard(this, searchBox);
        searchBox.performClick();
        searchBox.filterNow();
    }

    public void searchClickedByAutoComplete(View view)
    {
        Intent intent = new Intent(this, com/waze/navigate/SearchActivity);
        intent.putExtra("SearchStr", searchBox.getText().toString());
        intent.putExtra("SearchMode", mType);
        startActivityForResult(intent, 1);
    }

    public void speechRecognitionClicked(View view)
    {
        Log.d("WAZE", "SR pressed");
        Analytics.log("VOICE_SEARCH");
        try
        {
            Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
            intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
            startActivityForResult(intent, 1234);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }







}
