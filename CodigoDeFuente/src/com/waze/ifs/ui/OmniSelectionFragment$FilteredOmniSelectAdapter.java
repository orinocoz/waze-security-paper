// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.widget.Filter;
import android.widget.Filterable;
import com.waze.settings.SettingsValue;
import java.util.Arrays;
import java.util.Comparator;

// Referenced classes of package com.waze.ifs.ui:
//            OmniSelectionFragment

public static class _cls1.this._cls1 extends _cls1.this._cls1
    implements Filterable
{

    SettingsValue _last;
    SettingsValue originalValues[];

    public Filter getFilter()
    {
        return new Filter() {

            final OmniSelectionFragment.FilteredOmniSelectAdapter this$1;

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
_L2:
                SettingsValue settingsvalue;
                if (k >= j)
                {
                    filterresults.count = i;
                    SettingsValue asettingsvalue2[] = (SettingsValue[])Arrays.copyOf(asettingsvalue, i);
                    Arrays.sort(asettingsvalue2, new Comparator() {

                        final _cls1 this$2;

                        public int compare(SettingsValue settingsvalue, SettingsValue settingsvalue1)
                        {
                            if (settingsvalue.rank > settingsvalue1.rank)
                            {
                                return -1;
                            }
                            return settingsvalue.rank >= settingsvalue1.rank ? 0 : 1;
                        }

                        public volatile int compare(Object obj, Object obj1)
                        {
                            return compare((SettingsValue)obj, (SettingsValue)obj1);
                        }

            
            {
                this$2 = _cls1.this;
                super();
            }
                    });
                    filterresults.values = asettingsvalue2;
                    return filterresults;
                }
                settingsvalue = asettingsvalue1[k];
                if (settingsvalue != _last)
                {
                    break; /* Loop/switch isn't completed */
                }
                settingsvalue.rank = 0.0F;
                asettingsvalue[i] = settingsvalue;
                i++;
_L6:
                k++;
                if (true) goto _L2; else goto _L1
_L1:
                settingsvalue.rank = OmniSelectionFragment.access$0(settingsvalue.display.toLowerCase(), s.toString());
                if (settingsvalue.aliases == null) goto _L4; else goto _L3
_L3:
                String as[];
                int l;
                int i1;
                as = settingsvalue.aliases;
                l = as.length;
                i1 = 0;
_L8:
                if (i1 < l) goto _L5; else goto _L4
_L4:
                if (settingsvalue.rank >= 1.0F)
                {
                    asettingsvalue[i] = settingsvalue;
                    i++;
                }
                  goto _L6
_L5:
                String s1 = as[i1];
                if (settingsvalue.rank >= 2.0F) goto _L4; else goto _L7
_L7:
                if (s1 != null)
                {
                    settingsvalue.rank = Math.max(settingsvalue.rank, OmniSelectionFragment.access$0(s1.toLowerCase(), s.toString()));
                }
                i1++;
                  goto _L8
            }

            protected void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
            {
                values = (SettingsValue[])filterresults.values;
                notifyDataSetChanged();
            }

            
            {
                this$1 = OmniSelectionFragment.FilteredOmniSelectAdapter.this;
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

    public void setLast(SettingsValue settingsvalue)
    {
        _last = settingsvalue;
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
