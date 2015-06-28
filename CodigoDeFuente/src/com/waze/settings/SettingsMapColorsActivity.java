// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.settings:
//            SettingValueAdapter, SettingsMapActivity, SettingsValue

public class SettingsMapColorsActivity extends ActivityBase
{

    public SettingsMapColorsActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300fa);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_MAP_COLOR_SCHEME);
        SettingValueAdapter settingvalueadapter = new SettingValueAdapter(this);
        NativeManager nativemanager = NativeManager.getInstance();
        SettingsValue asettingsvalue[] = new SettingsValue[SettingsMapActivity.MAP_COLORS_VALUES.length];
        int i = 0;
        do
        {
            if (i >= SettingsMapActivity.MAP_COLORS_VALUES.length)
            {
                settingvalueadapter.setValues(asettingsvalue);
                ListView listview = (ListView)findViewById(0x7f090674);
                listview.setAdapter(settingvalueadapter);
                listview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                    final SettingsMapColorsActivity this$0;

                    public void onItemClick(AdapterView adapterview, View view, int j, long l)
                    {
                        ConfigManager.getInstance().setConfig(new ConfigItem("Display", "Map scheme V3", SettingsMapActivity.MAP_COLORS_VALUES[j]), "SettingsMap");
                        finish();
                    }

            
            {
                this$0 = SettingsMapColorsActivity.this;
                super();
            }
                });
                return;
            }
            asettingsvalue[i] = new SettingsValue(SettingsMapActivity.MAP_COLORS_VALUES[i], nativemanager.getLanguageString(SettingsMapActivity.MAP_COLORS_OPTIONS[i]), false);
            asettingsvalue[i].icon = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(SettingsMapActivity.MAP_COLORS_ICONS[i]))).append(".bin").toString());
            i++;
        } while (true);
    }
}
