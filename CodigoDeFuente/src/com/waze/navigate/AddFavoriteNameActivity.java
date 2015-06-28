// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;
import java.util.List;

// Referenced classes of package com.waze.navigate:
//            AddressItem, DriveToNativeManager

public final class AddFavoriteNameActivity extends ActivityBase
{

    private AddressItem ai;
    EditText editText;
    private NativeManager nativeManager;

    public AddFavoriteNameActivity()
    {
    }

    public void approveClicked(View view)
    {
        Log.d("WAZE", "approve pressed");
        if (!editText.getText().toString().equals(""))
        {
            ai.setTitle(editText.getText().toString());
            if (ai.getTitle().equals(""))
            {
                editText.setHint(nativeManager.getLanguageString(DisplayStrings.DS_NAME_THIS_FAVORITE_LOCATION));
            }
            ai.setCategory(Integer.valueOf(1));
            Log.d("WAZE", (new StringBuilder("fav= ")).append(ai.toString()).toString());
            DriveToNativeManager.getInstance().StoreAddressItem(ai);
            setResult(-1);
            finish();
        }
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        Log.d("WAZE", (new StringBuilder("AddFavoriteName onActRes requestCode=")).append(i).append(" resultCode=").append(j).append(" Intent=").append(intent).toString());
        if (i == 1234)
        {
            if (j == -1)
            {
                java.util.ArrayList arraylist = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
                if (arraylist.size() > 0)
                {
                    editText.setText((CharSequence)arraylist.get(0));
                }
            }
        } else
        if (j == -1 || j == 1)
        {
            setResult(j);
            finish();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f030005);
        nativeManager = AppService.getNativeManager();
        ((TitleBar)findViewById(0x7f090058)).init(this, nativeManager.getLanguageString(DisplayStrings.DS_NAME_FAVORITE));
        ((TitleBar)findViewById(0x7f090058)).setCloseText(nativeManager.getLanguageString(DisplayStrings.DS_DONE));
        ((TitleBar)findViewById(0x7f090058)).setOnClickCloseListener(new android.view.View.OnClickListener() {

            final AddFavoriteNameActivity this$0;

            public void onClick(View view2)
            {
                approveClicked(view2);
            }

            
            {
                this$0 = AddFavoriteNameActivity.this;
                super();
            }
        });
        ((EditText)findViewById(0x7f090068)).setHint(nativeManager.getLanguageString(DisplayStrings.DS_NAME_THIS_FAVORITE_LOCATION));
        ai = (AddressItem)getIntent().getExtras().getSerializable("AddressItem");
        View view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f03000e, null);
        view.findViewById(0x7f0900e2).setVisibility(0);
        view.findViewById(0x7f0900d9).setVisibility(8);
        view.findViewById(0x7f0900c3).setVisibility(8);
        view.findViewById(0x7f0900be).setVisibility(8);
        if (ai != null)
        {
            TextView textview = (TextView)view.findViewById(0x7f0900c2);
            ImageButton imagebutton;
            TextView textview1;
            TextView textview2;
            View view1;
            ViewGroup viewgroup;
            int i;
            if (ai.getTitle().equals(""))
            {
                view.findViewById(0x7f0900c2).setVisibility(8);
            } else
            {
                view.findViewById(0x7f0900c2).setVisibility(0);
                textview.setText(ai.getTitle());
            }
            textview1 = (TextView)view.findViewById(0x7f0900c4);
            if (ai.getAddress().equals(""))
            {
                textview1.setVisibility(8);
            } else
            {
                textview1.setVisibility(0);
                textview1.setText(ai.getAddress());
            }
            textview2 = (TextView)view.findViewById(0x7f0900c6);
            if (ai.getDistance().equals(""))
            {
                textview2.setVisibility(8);
            } else
            {
                textview2.setVisibility(0);
                textview2.setText(ai.getDistance());
            }
            view.setBackgroundResource(0x7f020225);
            view.setPadding(0, 0, 0, 0);
            view1 = findViewById(0x7f09006c);
            viewgroup = (ViewGroup)view1.getParent();
            i = viewgroup.indexOfChild(view1);
            viewgroup.removeView(view1);
            viewgroup.addView(view, i);
        }
        imagebutton = (ImageButton)findViewById(0x7f090069);
        if (getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 0).size() == 0)
        {
            imagebutton.setVisibility(8);
        }
        editText = (EditText)findViewById(0x7f090068);
        editText.setText(ai.getTitle());
        editText.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final AddFavoriteNameActivity this$0;

            public boolean onEditorAction(TextView textview3, int j, KeyEvent keyevent)
            {
                if (j == 6)
                {
                    approveClicked(textview3);
                }
                if (keyevent != null && keyevent.getAction() == 1)
                {
                    approveClicked(textview3);
                }
                return true;
            }

            
            {
                this$0 = AddFavoriteNameActivity.this;
                super();
            }
        });
    }

    public void onPause()
    {
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        if (ai.getType().intValue() == 6)
        {
            (new Handler()).postDelayed(new Runnable() {

                final AddFavoriteNameActivity this$0;

                public void run()
                {
                    editText.requestFocus();
                    ((InputMethodManager)getSystemService("input_method")).showSoftInput(editText, 2);
                }

            
            {
                this$0 = AddFavoriteNameActivity.this;
                super();
            }
            }, 100L);
        }
    }

    public void speechRecognitionClicked(View view)
    {
        Log.d("WAZE", "SR pressed");
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        startActivityForResult(intent, 1234);
    }
}
