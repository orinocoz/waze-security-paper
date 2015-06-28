// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.view.View;

// Referenced classes of package com.waze.settings:
//            SettingsSwitchView, SwitchCheckedCallback

class 
    implements android.view.ew._cls1
{

    final SettingsSwitchView this$0;
    private final SwitchCheckedCallback val$listener;

    public void onClick(View view)
    {
        SettingsSwitchView settingsswitchview = SettingsSwitchView.this;
        itchModes itchmodes;
        if (isChecked())
        {
            itchmodes = itchModes.UNCHECKED;
        } else
        {
            itchmodes = itchModes.CHECKED;
        }
        SettingsSwitchView.access$0(settingsswitchview, itchmodes);
        SettingsSwitchView.access$2(SettingsSwitchView.this, SettingsSwitchView.access$1(SettingsSwitchView.this));
        val$listener.OnCallback(isChecked());
    }

    ()
    {
        this$0 = final_settingsswitchview;
        val$listener = SwitchCheckedCallback.this;
        super();
    }
}
