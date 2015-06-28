// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.navigate.AddHomeWorkActivity;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.SearchActivity;
import com.waze.navigate.social.ShareDriveActivity;
import com.waze.settings.SettingsTitleText;
import com.waze.strings.DisplayStrings;
import com.waze.utils.EditTextUtils;
import com.waze.view.title.TitleBar;
import java.util.List;

// Referenced classes of package com.waze.share:
//            ShareUtility, MySavedLocationActivity, ShareRecentSearch

public class ShareActivity extends ActivityBase
{

    protected static final float HINT_SIZE = 14F;
    private static final int RQ_CODE_SET_HOME = 1001;
    private static final int RQ_CODE_SET_WORK = 1002;
    protected static final float TEXT_SIZE = 16F;
    private boolean bIsFollow;
    private boolean isNavigating;
    private NativeManager nativeManager;
    private EditText searchBox;

    public ShareActivity()
    {
        isNavigating = false;
        bIsFollow = false;
        nativeManager = AppService.getNativeManager();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 1234)
        {
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
        } else
        {
            if (i == 1002)
            {
                DriveToNativeManager.getInstance().getWork(new com.waze.navigate.DriveToNativeManager.DriveToGetAddressItemArrayCallback() {

                    final ShareActivity this$0;

                    public void getAddressItemArrayCallback(AddressItem aaddressitem[])
                    {
                        if (aaddressitem != null)
                        {
                            ShareUtility.OpenShareActivity(ShareUtility.ShareType.ShareType_ShareSelection, null, aaddressitem[0], null);
                        }
                    }

            
            {
                this$0 = ShareActivity.this;
                super();
            }
                });
                return;
            }
            if (i == 1001)
            {
                DriveToNativeManager.getInstance().getHome(new com.waze.navigate.DriveToNativeManager.DriveToGetAddressItemArrayCallback() {

                    final ShareActivity this$0;

                    public void getAddressItemArrayCallback(AddressItem aaddressitem[])
                    {
                        if (aaddressitem != null)
                        {
                            ShareUtility.OpenShareActivity(ShareUtility.ShareType.ShareType_ShareSelection, null, aaddressitem[0], null);
                        }
                    }

            
            {
                this$0 = ShareActivity.this;
                super();
            }
                });
                return;
            }
            if (j == -1)
            {
                setResult(-1);
                finish();
                return;
            }
        }
    }

    public void onBackPressed()
    {
        if (!ShareDriveActivity.bIsFollow)
        {
            nativeManager.StopFollow();
        }
        super.onBackPressed();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300e3);
        ((TitleBar)findViewById(0x7f090604)).init(this, nativeManager.getLanguageString(DisplayStrings.DS_SEND_TITLE));
        ((TitleBar)findViewById(0x7f090604)).setOnClickCloseListener(new android.view.View.OnClickListener() {

            final ShareActivity this$0;

            public void onClick(View view2)
            {
                if (!ShareDriveActivity.bIsFollow)
                {
                    nativeManager.StopFollow();
                }
                setResult(-1);
                finish();
            }

            
            {
                this$0 = ShareActivity.this;
                super();
            }
        });
        ((TextView)findViewById(0x7f090607)).setText(nativeManager.getLanguageString(DisplayStrings.DS_SEND_BUTTON_MY_DRIVE));
        ((TextView)findViewById(0x7f090608)).setVisibility(8);
        ((TextView)findViewById(0x7f09060b)).setText(nativeManager.getLanguageString(DisplayStrings.DS_SEND_BUTTON_CURRENT_LOCATION));
        ((TextView)findViewById(0x7f09060e)).setText(nativeManager.getLanguageString(DisplayStrings.DS_SEND_BUTTON_DESTINATION));
        ((TextView)findViewById(0x7f090611)).setText(nativeManager.getLanguageString(DisplayStrings.DS_MY_HOME));
        ((TextView)findViewById(0x7f090614)).setText(nativeManager.getLanguageString(DisplayStrings.DS_MY_WORK));
        ((SettingsTitleText)findViewById(0x7f090615)).setText(nativeManager.getLanguageString(DisplayStrings.DS_MORE_OPTIONS));
        ((TextView)findViewById(0x7f090617)).setText(nativeManager.getLanguageString(DisplayStrings.DS_FROM_HISTORY));
        ((TextView)findViewById(0x7f090619)).setText(nativeManager.getLanguageString(DisplayStrings.DS_FROM_FAVORITES));
        findViewById(0x7f09060f).setOnClickListener(new android.view.View.OnClickListener() {

            final ShareActivity this$0;

            public void onClick(View view2)
            {
                DriveToNativeManager.getInstance().getHome(new com.waze.navigate.DriveToNativeManager.DriveToGetAddressItemArrayCallback() {

                    final _cls2 this$1;

                    public void getAddressItemArrayCallback(AddressItem aaddressitem[])
                    {
                        Analytics.log("SHARE_LOCATION_OF", "VAUE", "HOME");
                        if (aaddressitem != null)
                        {
                            ShareUtility.OpenShareActivity(ShareUtility.ShareType.ShareType_ShareSelection, null, aaddressitem[0], null);
                            return;
                        } else
                        {
                            Intent intent = new Intent(_fld0, com/waze/navigate/AddHomeWorkActivity);
                            intent.putExtra("AddressType", 2);
                            startActivityForResult(intent, 1001);
                            return;
                        }
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                });
            }


            
            {
                this$0 = ShareActivity.this;
                super();
            }
        });
        findViewById(0x7f090612).setOnClickListener(new android.view.View.OnClickListener() {

            final ShareActivity this$0;

            public void onClick(View view2)
            {
                DriveToNativeManager.getInstance().getWork(new com.waze.navigate.DriveToNativeManager.DriveToGetAddressItemArrayCallback() {

                    final _cls3 this$1;

                    public void getAddressItemArrayCallback(AddressItem aaddressitem[])
                    {
                        Analytics.log("SHARE_LOCATION_OF", "VAUE", "WORK");
                        if (aaddressitem != null)
                        {
                            ShareUtility.OpenShareActivity(ShareUtility.ShareType.ShareType_ShareSelection, null, aaddressitem[0], null);
                            return;
                        } else
                        {
                            Intent intent = new Intent(_fld0, com/waze/navigate/AddHomeWorkActivity);
                            intent.putExtra("AddressType", 4);
                            startActivityForResult(intent, 1002);
                            return;
                        }
                    }

            
            {
                this$1 = _cls3.this;
                super();
            }
                });
            }


            
            {
                this$0 = ShareActivity.this;
                super();
            }
        });
        findViewById(0x7f090605).setOnClickListener(new android.view.View.OnClickListener() {

            final ShareActivity this$0;

            public void onClick(View view2)
            {
                Analytics.log("SHARE_LOCATION_OF", "VAUE", "DRIVE");
                ShareUtility.OpenShareActivity(ShareUtility.ShareType.ShareType_ShareDrive, null, null, null);
            }

            
            {
                this$0 = ShareActivity.this;
                super();
            }
        });
        ImageButton imagebutton = (ImageButton)findViewById(0x7f090062);
        if (getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 0).size() == 0)
        {
            imagebutton.setVisibility(8);
        }
        if (nativeManager.isNavigatingNTV())
        {
            isNavigating = true;
        } else
        {
            View view = findViewById(0x7f09060c);
            view.setEnabled(false);
            view.setAlpha(0.5F);
            View view1 = findViewById(0x7f090605);
            view1.setEnabled(false);
            view1.setAlpha(0.5F);
        }
        findViewById(0x7f09060c).setOnClickListener(new android.view.View.OnClickListener() {

            final ShareActivity this$0;

            public void onClick(View view2)
            {
                if (isNavigating)
                {
                    onShareMyDestination();
                }
            }

            
            {
                this$0 = ShareActivity.this;
                super();
            }
        });
        findViewById(0x7f090609).setOnClickListener(new android.view.View.OnClickListener() {

            final ShareActivity this$0;

            public void onClick(View view2)
            {
                onShareMyCurrentLocation();
            }

            
            {
                this$0 = ShareActivity.this;
                super();
            }
        });
        findViewById(0x7f090616).setOnClickListener(new android.view.View.OnClickListener() {

            final ShareActivity this$0;

            public void onClick(View view2)
            {
                onShareRecentSearchLocation();
            }

            
            {
                this$0 = ShareActivity.this;
                super();
            }
        });
        findViewById(0x7f090618).setOnClickListener(new android.view.View.OnClickListener() {

            final ShareActivity this$0;

            public void onClick(View view2)
            {
                onShareMySavedLocation();
            }

            
            {
                this$0 = ShareActivity.this;
                super();
            }
        });
        searchBox = (EditText)findViewById(0x7f090061);
        searchBox.setOnTouchListener(EditTextUtils.getKeyboardLockOnTouchListener(this, searchBox, null));
        searchBox.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final ShareActivity this$0;

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
                this$0 = ShareActivity.this;
                super();
            }
        });
        searchBox.addTextChangedListener(new TextWatcher() {

            final ShareActivity this$0;

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
                this$0 = ShareActivity.this;
                super();
            }
        });
        searchBox.setHint(nativeManager.getLanguageString(DisplayStrings.DS_SEARCH_ADDRESS));
    }

    public void onPause()
    {
        super.onPause();
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(searchBox.getWindowToken(), 0);
    }

    protected void onShareMyCurrentLocation()
    {
        Analytics.log("SHARE_LOCATION_OF", "VAUE", "CURRENT_LOCATION");
        ShareUtility.OpenShareActivity(ShareUtility.ShareType.ShareType_ShareLocation, null, null, null);
    }

    protected void onShareMyDestination()
    {
        Analytics.log("SHARE_LOCATION_OF", "VAUE", "DESTINATION");
        ShareUtility.OpenShareActivity(ShareUtility.ShareType.ShareType_ShareDestination, null, null, null);
    }

    protected void onShareMySavedLocation()
    {
        Analytics.log("SHARE_LOCATION_OF", "VAUE", "FAVORITE");
        startActivityForResult(new Intent(this, com/waze/share/MySavedLocationActivity), 1);
    }

    protected void onShareRecentSearchLocation()
    {
        Analytics.log("SHARE_LOCATION_OF", "VAUE", "HISTORY");
        startActivityForResult(new Intent(this, com/waze/share/ShareRecentSearch), 1);
    }

    public void searchClicked()
    {
        Log.d("WAZE", "Search from share activity pressed");
        if (searchBox.getText().length() <= 0)
        {
            return;
        } else
        {
            Analytics.log("SHARE_LOCATION_OF", "VAUE", "SEARCH");
            Intent intent = new Intent(this, com/waze/navigate/SearchActivity);
            intent.putExtra("SearchStr", searchBox.getText().toString());
            intent.putExtra("SearchMode", 8);
            startActivityForResult(intent, 1);
            return;
        }
    }

    public void speechRecognitionClicked(View view)
    {
        Log.d("WAZE", "SR pressed");
        Analytics.log("VOICE_SEARCH");
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        startActivityForResult(intent, 1234);
    }



}
