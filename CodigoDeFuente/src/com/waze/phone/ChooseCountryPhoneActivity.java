// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.SectionIndexer;
import com.waze.ifs.ui.ActivityBase;
import com.waze.settings.SettingValueAdapter;
import com.waze.settings.SettingsValue;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;
import java.util.Arrays;

// Referenced classes of package com.waze.phone:
//            PhoneNumberSignInActivity

public class ChooseCountryPhoneActivity extends ActivityBase
{
    public static class IndexedSettingValueAdapter extends SettingValueAdapter
        implements SectionIndexer
    {

        private static int MAX_SECTIONS = 64;
        int _numSections;
        int _positionForSection[];
        int _sectionForPosition[];
        String _sections[];

        public int getPositionForSection(int i)
        {
            if (i < _positionForSection.length)
            {
                return _positionForSection[i];
            } else
            {
                return -1;
            }
        }

        public int getSectionForPosition(int i)
        {
            if (i < _sectionForPosition.length)
            {
                return _sectionForPosition[i];
            } else
            {
                return -1;
            }
        }

        public Object[] getSections()
        {
            return _sections;
        }

        public void setValues(SettingsValue asettingsvalue[])
        {
            char c;
            int i;
            _sectionForPosition = new int[asettingsvalue.length];
            c = '\uFFFF';
            i = 0;
_L5:
            if (i < asettingsvalue.length) goto _L2; else goto _L1
_L1:
            _sections = (String[])Arrays.copyOf(_sections, _numSections);
            _positionForSection = Arrays.copyOf(_positionForSection, _numSections);
            super.setValues(asettingsvalue);
            return;
_L2:
            char c1 = asettingsvalue[i].display.charAt(0);
            if (c1 != c)
            {
                _sections[_numSections] = (new StringBuilder()).append(c1).toString();
                _positionForSection[_numSections] = i;
                c = c1;
                _numSections = 1 + _numSections;
            }
            _sectionForPosition[i] = -1 + _numSections;
            if (_numSections == MAX_SECTIONS) goto _L1; else goto _L3
_L3:
            i++;
            if (true) goto _L5; else goto _L4
_L4:
        }


        public IndexedSettingValueAdapter(Context context)
        {
            super(context);
            _numSections = 0;
            _sections = new String[MAX_SECTIONS];
            _positionForSection = new int[MAX_SECTIONS];
        }
    }


    private SettingsValue countries[];
    private IndexedSettingValueAdapter mAdapter;

    public ChooseCountryPhoneActivity()
    {
        countries = null;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300fa);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_SELECT_COUNTRY);
        ((TitleBar)findViewById(0x7f090058)).setOnClickCloseListener(new android.view.View.OnClickListener() {

            final ChooseCountryPhoneActivity this$0;

            public void onClick(View view)
            {
                setResult(0);
                finish();
            }

            
            {
                this$0 = ChooseCountryPhoneActivity.this;
                super();
            }
        });
        mAdapter = new IndexedSettingValueAdapter(this);
        ListView listview = (ListView)findViewById(0x7f090674);
        countries = PhoneNumberSignInActivity.getCountries();
        listview.setAdapter(mAdapter);
        mAdapter.setValues(countries);
        listview.invalidateViews();
        listview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final ChooseCountryPhoneActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                if (countries == null)
                {
                    return;
                }
                if (mAdapter.GetSelectedItem() != null)
                {
                    mAdapter.GetSelectedItem().isSelected = false;
                }
                countries[i].isSelected = true;
                Intent intent = new Intent();
                intent.putExtra("index", Integer.parseInt(countries[i].value));
                setResult(-1, intent);
                finish();
            }

            
            {
                this$0 = ChooseCountryPhoneActivity.this;
                super();
            }
        });
    }


}
