// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import com.waze.ConfigItem;
import com.waze.ConfigManager;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            SwitchCheckedCallback, SettingsShowOnMapActivity

class val.index
    implements SwitchCheckedCallback
{

    final SettingsShowOnMapActivity this$0;
    private final int val$index;

    public void OnCallback(boolean flag)
    {
        if (SettingsShowOnMapActivity.access$0(SettingsShowOnMapActivity.this) == null)
        {
            return;
        } else
        {
            SettingsShowOnMapActivity.access$0(SettingsShowOnMapActivity.this)[val$index] = flag;
            ConfigItem configitem = (ConfigItem)SettingsShowOnMapActivity.access$1(SettingsShowOnMapActivity.this).get(3);
            configitem.setValue(createReportTypesString());
            ConfigManager.getInstance().setConfig(configitem, "SettingsAdvancedShowOnMap");
            return;
        }
    }

    ()
    {
        this$0 = final_settingsshowonmapactivity;
        val$index = I.this;
        super();
    }
}
