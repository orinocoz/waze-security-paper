// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.view.View;
import android.widget.AdapterView;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;

// Referenced classes of package com.waze.settings:
//            SettingsSoundDeviceActivity, SettingsSoundConstants

class this._cls0
    implements android.widget.r
{

    final SettingsSoundDeviceActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        ConfigItem configitem = new ConfigItem("Sound", "Device Name", NativeManager.getInstance().getLanguageString(SettingsSoundConstants.DEVICES[i]));
        ConfigManager.getInstance().setConfig(configitem, "");
        finish();
    }

    ()
    {
        this$0 = SettingsSoundDeviceActivity.this;
        super();
    }
}
