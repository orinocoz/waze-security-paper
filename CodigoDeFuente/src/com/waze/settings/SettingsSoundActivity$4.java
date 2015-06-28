// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;


// Referenced classes of package com.waze.settings:
//            SettingsSoundActivity, SettingsSelectionView, SettingsValue

class this._cls0
    implements ttingsValuesListener
{

    final SettingsSoundActivity this$0;

    public void onComplete(SettingsValue asettingsvalue[])
    {
        if (asettingsvalue == null)
        {
            SettingsSoundActivity.access$0(SettingsSoundActivity.this).setVisibility(8);
        } else
        {
            int i = asettingsvalue.length;
            int j = 0;
            while (j < i) 
            {
                SettingsValue settingsvalue = asettingsvalue[j];
                if (settingsvalue.isSelected)
                {
                    SettingsSoundActivity.access$0(SettingsSoundActivity.this).setValueText(settingsvalue.display);
                    return;
                }
                j++;
            }
        }
    }

    ttingsValuesListener()
    {
        this$0 = SettingsSoundActivity.this;
        super();
    }
}
