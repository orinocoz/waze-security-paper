// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            SettingsGasActivity, SettingsSelectionView, SettingsValue

class val.mgr
    implements SettingsValuesListener
{

    final SettingsGasActivity this$0;
    private final NativeManager val$mgr;

    public void onComplete(SettingsValue asettingsvalue[])
    {
        boolean flag = false;
        ArrayList arraylist = new ArrayList();
        arraylist.add(val$mgr.getLanguageString(DisplayStrings.DS_ALL_STATIONS));
        int i = asettingsvalue.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                SettingsGasActivity.access$1(SettingsGasActivity.this, (String[])arraylist.toArray(new String[arraylist.size()]));
                if (!flag)
                {
                    SettingsGasActivity.access$0(SettingsGasActivity.this).setValueText(val$mgr.getLanguageString(DisplayStrings.DS_ALL_STATIONS));
                }
                return;
            }
            SettingsValue settingsvalue = asettingsvalue[j];
            arraylist.add(settingsvalue.value);
            if (settingsvalue.isSelected)
            {
                SettingsGasActivity.access$0(SettingsGasActivity.this).setValueText(settingsvalue.value);
                flag = true;
            }
            j++;
        } while (true);
    }

    SettingsValuesListener()
    {
        this$0 = final_settingsgasactivity;
        val$mgr = NativeManager.this;
        super();
    }
}
