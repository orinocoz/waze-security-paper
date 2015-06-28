// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.widget.Filter;
import com.waze.settings.SettingsValue;
import java.util.Arrays;

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
_L3:
        if (k < j) goto _L2; else goto _L1
_L1:
        SettingsValue asettingsvalue2[];
        int l;
        SettingsValue asettingsvalue3[];
        int i1;
        asettingsvalue2 = (SettingsValue[])Arrays.copyOf(asettingsvalue, i);
        lcGroups(asettingsvalue2);
        l = 0;
        asettingsvalue3 = new SettingsValue[asettingsvalue2.length];
        i1 = 0;
_L4:
        if (i1 >= asettingsvalue2.length)
        {
            SettingsValue asettingsvalue4[] = (SettingsValue[])Arrays.copyOf(asettingsvalue3, l);
            lcGroups(asettingsvalue4);
            .alcGroups = asettingsvalue4.length;
            .alcGroups = asettingsvalue4;
            return ;
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

    protected void publishResults(CharSequence charsequence, android.widget. )
    {
        lues = (SettingsValue[]).alues;
        tifyDataSetChanged();
    }

    Q()
    {
        this$1 = this._cls1.this;
        super();
    }
}
