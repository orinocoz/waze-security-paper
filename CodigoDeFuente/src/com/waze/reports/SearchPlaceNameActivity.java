// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.ListView;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleButtonBar;

public class SearchPlaceNameActivity extends ActivityBase
{

    public static final String RET_SELECTED_PLACE = "selected_place";
    private LayoutInflater inflater;
    private EditText mEditTextSearch;
    private NativeManager mNm;
    private ListView mResultsList;
    private String mSelectedPlace;

    public SearchPlaceNameActivity()
    {
    }

    private void setUpActivity()
    {
        setContentView(0x7f0300df);
        TitleButtonBar titlebuttonbar = (TitleButtonBar)findViewById(0x7f090058);
        titlebuttonbar.init(this, mNm.getLanguageString(DisplayStrings.DS_EDIT_PLACE), 0, 0x7f02010b);
        titlebuttonbar.setButtonTwoListener(new android.view.View.OnClickListener() {

            final SearchPlaceNameActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent();
                intent.putExtra("selected_place", mSelectedPlace);
                setResult(-1, intent);
                finish();
            }

            
            {
                this$0 = SearchPlaceNameActivity.this;
                super();
            }
        });
        mEditTextSearch = (EditText)findViewById(0x7f0905f6);
        mEditTextSearch.setHint(mNm.getLanguageString(DisplayStrings.DS_SEARCH));
        mResultsList = (ListView)findViewById(0x7f0905f7);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mNm = NativeManager.getInstance();
        inflater = LayoutInflater.from(this);
        setUpActivity();
        getIntent();
        setResult(0);
    }

}
