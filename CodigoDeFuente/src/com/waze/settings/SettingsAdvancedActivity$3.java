// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import com.waze.ConfigManager;

// Referenced classes of package com.waze.settings:
//            SwitchCheckedCallback, SettingsAdvancedActivity

class this._cls0
    implements SwitchCheckedCallback
{

    final SettingsAdvancedActivity this$0;

    public void OnCallback(boolean flag)
    {
        ConfigManager.getInstance().setConfigSwitchValue(0, flag);
    }

    ()
    {
        this$0 = SettingsAdvancedActivity.this;
        super();
    }
}
