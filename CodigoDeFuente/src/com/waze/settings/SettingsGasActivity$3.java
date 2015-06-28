// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            SettingsGasActivity, SettingsValue, SettingsSelectionView

class this._cls0
    implements SettingsValuesListener
{

    final SettingsGasActivity this$0;

    public void onComplete(SettingsValue asettingsvalue[])
    {
        ArrayList arraylist = new ArrayList();
        int i = asettingsvalue.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                SettingsGasActivity.access$5(SettingsGasActivity.this, (String[])arraylist.toArray(new String[arraylist.size()]));
                return;
            }
            SettingsValue settingsvalue = asettingsvalue[j];
            arraylist.add(settingsvalue.value);
            if (settingsvalue.isSelected)
            {
                SettingsGasActivity.access$4(SettingsGasActivity.this).setValueText(settingsvalue.value);
            }
            j++;
        } while (true);
    }

    SettingsValuesListener()
    {
        this$0 = SettingsGasActivity.this;
        super();
    }
}
