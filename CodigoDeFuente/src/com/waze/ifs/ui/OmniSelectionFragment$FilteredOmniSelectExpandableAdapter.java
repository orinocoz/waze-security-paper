// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.widget.Filter;
import android.widget.Filterable;
import com.waze.settings.SettingsValue;
import java.util.Arrays;

// Referenced classes of package com.waze.ifs.ui:
//            OmniSelectionFragment

public static class _cls1.this._cls1 extends _cls1.this._cls1
    implements Filterable
{

    SettingsValue originalValues[];

    public Filter getFilter()
    {
        return new Filter() {

            final OmniSelectionFragment.FilteredOmniSelectExpandableAdapter this$1;

            protected android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
            {
                android.widget.Filter.FilterResults filterresults;
                SettingsValue asettingsvalue[];
                String s;
                int i;
                SettingsValue asettingsvalue1[];
                int j;
                int k;
                filterresults = new android.widget.Filter.FilterResults();
                asettingsvalue = new SettingsValue[originalValues.length];
                s = charsequence.toString().toLowerCase();
                i = 0;
                asettingsvalue1 = originalValues;
                j = asettingsvalue1.length;
                k = 0;
_L3:
                if (k < j) goto _L2; else goto _L1
_L1:
                SettingsValue asettingsvalue2[];
                int l;
                SettingsValue asettingsvalue3[];
                int i1;
                asettingsvalue2 = (SettingsValue[])Arrays.copyOf(asettingsvalue, i);
                calcGroups(asettingsvalue2);
                l = 0;
                asettingsvalue3 = new SettingsValue[asettingsvalue2.length];
                i1 = 0;
_L4:
                if (i1 >= asettingsvalue2.length)
                {
                    SettingsValue asettingsvalue4[] = (SettingsValue[])Arrays.copyOf(asettingsvalue3, l);
                    calcGroups(asettingsvalue4);
                    filterresults.count = asettingsvalue4.length;
                    filterresults.values = asettingsvalue4;
                    return filterresults;
                }
                break MISSING_BLOCK_LABEL_199;
_L2:
                SettingsValue settingsvalue = asettingsvalue1[k];
                settingsvalue.rank = OmniSelectionFragment.access$0(settingsvalue.display.toLowerCase(), s.toString());
                if (settingsvalue.rank >= 1.0F || settingsvalue.isHeader)
                {
                    asettingsvalue[i] = settingsvalue;
                    i++;
                }
                k++;
                  goto _L3
                SettingsValue settingsvalue1 = asettingsvalue2[i1];
                if (settingsvalue1.rank >= 1.0F)
                {
                    asettingsvalue3[l] = settingsvalue1;
                    l++;
                } else
                if (settingsvalue1.isHeader && i1 < -1 + asettingsvalue2.length && !asettingsvalue2[i1 + 1].isHeader)
                {
                    asettingsvalue3[l] = settingsvalue1;
                    l++;
                }
                i1++;
                  goto _L4
            }

            protected void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
            {
                values = (SettingsValue[])filterresults.values;
                notifyDataSetChanged();
            }

            
            {
                this$1 = OmniSelectionFragment.FilteredOmniSelectExpandableAdapter.this;
                super();
            }
        };
    }

    public int getOriginalIndex(SettingsValue settingsvalue)
    {
        int i = 0;
_L6:
        if (i < originalValues.length) goto _L2; else goto _L1
_L1:
        i = -1;
_L4:
        return i;
_L2:
        if (originalValues[i] == settingsvalue) goto _L4; else goto _L3
_L3:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void setValues(SettingsValue asettingsvalue[])
    {
        originalValues = asettingsvalue;
        super.s(asettingsvalue);
    }

    public _cls1.this._cls1(Context context)
    {
        super(context);
    }
}
