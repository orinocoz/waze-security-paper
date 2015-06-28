// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.widget.CompoundButton;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            SettingsUtilsMultipleConfig

class val.screenName
    implements android.widget.Listener
{

    private final int val$configIndex;
    private final List val$configItems;
    private final String val$screenName;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        ConfigItem configitem = (ConfigItem)val$configItems.get(val$configIndex);
        StringBuilder stringbuilder = new StringBuilder();
        String s;
        if (flag)
        {
            s = "yes";
        } else
        {
            s = "no";
        }
        configitem.setValue(stringbuilder.append(s).toString());
        ConfigManager.getInstance().setConfig(configitem, val$screenName);
    }

    tener()
    {
        val$configItems = list;
        val$configIndex = i;
        val$screenName = s;
        super();
    }
}
