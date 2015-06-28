// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;


// Referenced classes of package com.waze.settings:
//            SettingsGeneralActivity, SettingsValue, SettingsSelectionView

class this._cls0
    implements ingsValuesListener
{

    final SettingsGeneralActivity this$0;

    public void onComplete(SettingsValue asettingsvalue[])
    {
        int i = asettingsvalue.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            SettingsValue settingsvalue = asettingsvalue[j];
            if (settingsvalue.isSelected)
            {
                SettingsGeneralActivity.access$2(SettingsGeneralActivity.this).setValueText(settingsvalue.display);
                return;
            }
            j++;
        } while (true);
    }

    ingsValuesListener()
    {
        this$0 = SettingsGeneralActivity.this;
        super();
    }
}
