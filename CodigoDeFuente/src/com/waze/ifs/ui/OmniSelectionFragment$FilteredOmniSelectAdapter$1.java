// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.widget.Filter;
import com.waze.settings.SettingsValue;
import java.util.Arrays;
import java.util.Comparator;

// Referenced classes of package com.waze.ifs.ui:
//            OmniSelectionFragment

class this._cls1 extends Filter
{

    final tifyDataSetChanged this$1;

    protected android.widget. performFiltering(CharSequence charsequence)
    {
        android.widget. ;
        SettingsValue asettingsvalue[];
        String s;
        int i;
        SettingsValue asettingsvalue1[];
        int j;
        int k;
         = new android.widget.();
        asettingsvalue = new SettingsValue[iginalValues.length];
        s = charsequence.toString().toLowerCase();
        i = 0;
        asettingsvalue1 = iginalValues;
        j = asettingsvalue1.length;
        k = 0;
_L2:
        SettingsValue settingsvalue;
        if (k >= j)
        {
            .riginalValues = i;
            SettingsValue asettingsvalue2[] = (SettingsValue[])Arrays.copyOf(asettingsvalue, i);
            Arrays.sort(asettingsvalue2, new Comparator() {

                final OmniSelectionFragment.FilteredOmniSelectAdapter._cls1 this$2;

                public int compare(SettingsValue settingsvalue1, SettingsValue settingsvalue2)
                {
                    if (settingsvalue1.rank > settingsvalue2.rank)
                    {
                        return -1;
                    }
                    return settingsvalue1.rank >= settingsvalue2.rank ? 0 : 1;
                }

                public volatile int compare(Object obj, Object obj1)
                {
                    return compare((SettingsValue)obj, (SettingsValue)obj1);
                }

            
            {
                this$2 = OmniSelectionFragment.FilteredOmniSelectAdapter._cls1.this;
                super();
            }
            });
            . = asettingsvalue2;
            return ;
        }
        settingsvalue = asettingsvalue1[k];
        if (settingsvalue != ast)
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

    protected void publishResults(CharSequence charsequence, android.widget. )
    {
        lues = (SettingsValue[]).alues;
        tifyDataSetChanged();
    }

    _cls1.this._cls2()
    {
        this$1 = this._cls1.this;
        super();
    }
}
