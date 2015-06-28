// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.animation.easing.AnimationEasingManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.utils.EditTextUtils;
import com.waze.view.text.WazeTextView;
import com.waze.view.title.TitleBar;
import java.util.List;

// Referenced classes of package com.waze.navigate:
//            AddressItem, SearchActivity, DriveToNativeManager

public final class AddFavoriteActivity extends ActivityBase
{

    protected static final float HINT_SIZE = 14F;
    protected static final float TEXT_SIZE = 16F;
    private AnimationEasingManager managerX;
    private AnimationEasingManager managerY;
    private NativeManager nativeManager;
    EditText searchBox;
    Integer type;

    public AddFavoriteActivity()
    {
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        Log.d("WAZE", (new StringBuilder("AddFavorite onActRes requestCode=")).append(i).append(" resultCode=").append(j).append(" Intent=").append(intent).toString());
        if (i == 1234)
        {
            if (j == -1)
            {
                java.util.ArrayList arraylist = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
                if (arraylist.size() > 0)
                {
                    searchBox.setText((CharSequence)arraylist.get(0));
                }
            }
        } else
        if (j != 0)
        {
            setResult(j);
            finish();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        ImageView imageview;
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f030004);
        nativeManager = AppService.getNativeManager();
        ((TitleBar)findViewById(0x7f090058)).init(this, nativeManager.getLanguageString(DisplayStrings.DS_ADD_FAVORITE));
        searchBox = (EditText)findViewById(0x7f090061);
        searchBox.setOnTouchListener(EditTextUtils.getKeyboardLockOnTouchListener(this, searchBox, null));
        searchBox.setHint(nativeManager.getLanguageString(DisplayStrings.DS_SEARCH_ADDRESS__PLACE_OR_CONTACT));
        ((TextView)findViewById(0x7f090063)).setText((new StringBuilder(String.valueOf(nativeManager.getLanguageString(DisplayStrings.DS_WAZE_IS_BEST_USED_FOR_COMMUTING_)))).append("\n\n").append(nativeManager.getLanguageString(DisplayStrings.DS_ONCE_YOU_ADD_SHOMES_AND_SWORKS_TO_YOUR_FAVORITES_WAZESLL_LEARN_YOUR_PREFERRED_ROUTES_AND_DEPARTURE_TIMES_TO_THESE_DESTINATIONS_)).append("\n\n").append(nativeManager.getLanguageString(DisplayStrings.DS_ENTER_THE_ADDRESS_AND_SELECT_THE_CORRECT_RESULT_)).append("\n").toString());
        ((TextView)findViewById(0x7f09005b)).setText(nativeManager.getLanguageString(DisplayStrings.DS_LOCATION_NOT_YET_VERIFIED));
        final View grid = findViewById(0x7f09005a);
        android.view.ViewGroup.LayoutParams layoutparams = grid.getLayoutParams();
        layoutparams.width = 400 + getResources().getDisplayMetrics().widthPixels;
        grid.setLayoutParams(layoutparams);
        Animation animation = new Animation() {

            final AddFavoriteActivity this$0;
            private final View val$grid;

            protected void applyTransformation(float f, Transformation transformation)
            {
                super.applyTransformation(f, transformation);
                grid.setTranslationX(200F * (float)Math.cos(2.7000000000000002D * (3.1415926535897931D * (double)(f * 2.0F))));
                grid.setTranslationY(200F * (float)Math.sin(2.2999999999999998D * (3.1415926535897931D * (double)(f * 2.0F))));
            }

            
            {
                this$0 = AddFavoriteActivity.this;
                grid = view;
                super();
            }
        };
        animation.setDuration(0x186a0L);
        animation.setInterpolator(new LinearInterpolator());
        animation.setRepeatCount(-1);
        animation.setRepeatMode(2);
        grid.startAnimation(animation);
        type = Integer.valueOf(getIntent().getExtras().getInt("AddressType"));
        findViewById(0x7f090065).setVisibility(8);
        findViewById(0x7f090064).setVisibility(8);
        imageview = (ImageView)findViewById(0x7f09005d);
        type.intValue();
        JVM INSTR lookupswitch 4: default 384
    //                   2: 460
    //                   4: 494
    //                   6: 528
    //                   11: 573;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        searchBox.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final AddFavoriteActivity this$0;

            public boolean onEditorAction(TextView textview3, int i, KeyEvent keyevent)
            {
                if (i == 3)
                {
                    searchClicked(textview3);
                }
                if (keyevent != null && keyevent.getAction() == 1)
                {
                    searchClicked(textview3);
                }
                return true;
            }

            
            {
                this$0 = AddFavoriteActivity.this;
                super();
            }
        });
        searchBox.addTextChangedListener(new TextWatcher() {

            final AddFavoriteActivity this$0;

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
                this$0 = AddFavoriteActivity.this;
                super();
            }
        });
        ImageButton imagebutton = (ImageButton)findViewById(0x7f090062);
        if (getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 0).size() == 0)
        {
            imagebutton.setVisibility(8);
        }
        return;
_L2:
        imageview.setImageResource(0x7f020194);
        ((WazeTextView)findViewById(0x7f09005e)).setText(nativeManager.getLanguageString(DisplayStrings.DS_MY_HOME));
        continue; /* Loop/switch isn't completed */
_L3:
        imageview.setImageResource(0x7f02046a);
        ((WazeTextView)findViewById(0x7f09005e)).setText(nativeManager.getLanguageString(DisplayStrings.DS_MY_WORK));
        continue; /* Loop/switch isn't completed */
_L4:
        imageview.setImageResource(0x7f0203cd);
        findViewById(0x7f090063).setVisibility(8);
        ((WazeTextView)findViewById(0x7f09005e)).setText(nativeManager.getLanguageString(DisplayStrings.DS_ADD_FAVORITE));
        continue; /* Loop/switch isn't completed */
_L5:
        imageview.setImageResource(0x7f02009f);
        String s = getIntent().getExtras().getString("SearchStr");
        final AddressItem addessItem = (AddressItem)getIntent().getExtras().getSerializable("AddressItem");
        if (s != null)
        {
            searchBox.setText(s);
            searchBox.setSelection(s.length());
        }
        ((TitleBar)findViewById(0x7f090058)).init(this, nativeManager.getLanguageString(DisplayStrings.DS_VERIFY_ADDRESS));
        findViewById(0x7f090063).setVisibility(8);
        ((TextView)findViewById(0x7f09005e)).setText(addessItem.getTitle());
        TextView textview = (TextView)findViewById(0x7f09005f);
        textview.setVisibility(0);
        textview.setText(nativeManager.getLanguageString(DisplayStrings.DS_TO_CONFIRM_OR_UPDATE_EVENT_LOCATION));
        TextView textview1 = (TextView)findViewById(0x7f090064);
        textview1.setVisibility(0);
        textview1.setText(nativeManager.getLanguageString(DisplayStrings.DS_OR));
        TextView textview2 = (TextView)findViewById(0x7f090065);
        textview2.setVisibility(0);
        textview2.setPaintFlags(8 | textview2.getPaintFlags());
        textview2.setTextColor(0xffff0000);
        textview2.setText(nativeManager.getLanguageString(DisplayStrings.DS_REMOVE_THIS_EVENT));
        textview2.setOnClickListener(new android.view.View.OnClickListener() {

            final AddFavoriteActivity this$0;
            private final AddressItem val$addessItem;

            public void onClick(View view)
            {
                DriveToNativeManager.getInstance().CalendarAddressRemove(addessItem.getMeetingId());
                nativeManager.OpenProgressIconPopup(nativeManager.getLanguageString(DisplayStrings.DS_EVENT_REMOVED), "sign_up_big_v");
                (new Handler()).postDelayed(new Runnable() {

                    final _cls2 this$1;

                    public void run()
                    {
                        nativeManager.CloseProgressPopup();
                        Intent intent = new Intent();
                        setResult(32783, intent);
                        finish();
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                }, 1000L);
            }


            
            {
                this$0 = AddFavoriteActivity.this;
                addessItem = addressitem;
                super();
            }
        });
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void onPause()
    {
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(searchBox.getWindowToken(), 0);
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        if (type.intValue() == 6)
        {
            (new Handler()).postDelayed(new Runnable() {

                final AddFavoriteActivity this$0;

                public void run()
                {
                    searchBox.requestFocus();
                    ((InputMethodManager)getSystemService("input_method")).showSoftInput(searchBox, 2);
                }

            
            {
                this$0 = AddFavoriteActivity.this;
                super();
            }
            }, 100L);
        }
    }

    public void searchClicked(View view)
    {
        Intent intent;
        int i;
        int j;
        Log.d("WAZE", "Search pressed");
        intent = new Intent(this, com/waze/navigate/SearchActivity);
        intent.putExtra("SearchStr", searchBox.getText().toString());
        i = type.intValue();
        j = 0;
        i;
        JVM INSTR lookupswitch 4: default 96
    //                   2: 113
    //                   4: 119
    //                   6: 125
    //                   11: 131;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        intent.putExtra("SearchMode", j);
        startActivityForResult(intent, 1);
        return;
_L2:
        j = 3;
        continue; /* Loop/switch isn't completed */
_L3:
        j = 4;
        continue; /* Loop/switch isn't completed */
_L4:
        j = 1;
        continue; /* Loop/switch isn't completed */
_L5:
        AddressItem addressitem = (AddressItem)getIntent().getExtras().getSerializable("AddressItem");
        Analytics.log("CALENDAR_EVENT_SEARCH", "ID|VALUE", (new StringBuilder(String.valueOf(addressitem.getMeetingId()))).append("|").append(searchBox.getText().toString()).toString());
        j = 9;
        intent.putExtra("AddressItem", addressitem);
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void speechRecognitionClicked(View view)
    {
        Log.d("WAZE", "SR pressed");
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        startActivityForResult(intent, 1234);
    }

}
