// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.view.View;
import android.widget.AdapterView;
import com.waze.ConfigItem;
import com.waze.ConfigManager;

// Referenced classes of package com.waze.settings:
//            SettingsMapColorsActivity, SettingsMapActivity

class this._cls0
    implements android.widget.ner
{

    final SettingsMapColorsActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        ConfigManager.getInstance().setConfig(new ConfigItem("Display", "Map scheme V3", SettingsMapActivity.MAP_COLORS_VALUES[i]), "SettingsMap");
        finish();
    }

    ()
    {
        this$0 = SettingsMapColorsActivity.this;
        super();
    }
}
