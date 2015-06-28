// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.settings:
//            SettingValueAdapter, SettingsSoundConstants, SettingsValue

public class SettingsSoundDeviceActivity extends ActivityBase
{

    public SettingsSoundDeviceActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300fa);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_SOUND_DEVICE);
        SettingValueAdapter settingvalueadapter = new SettingValueAdapter(this);
        String s = getIntent().getStringExtra("SELECTED_DEVICE");
        NativeManager nativemanager = NativeManager.getInstance();
        SettingsValue asettingsvalue[] = new SettingsValue[SettingsSoundConstants.DEVICES.length];
        int i = 0;
        do
        {
            if (i >= SettingsSoundConstants.DEVICES.length)
            {
                settingvalueadapter.setValues(asettingsvalue);
                ListView listview = (ListView)findViewById(0x7f090674);
                listview.setAdapter(settingvalueadapter);
                listview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                    final SettingsSoundDeviceActivity this$0;

                    public void onItemClick(AdapterView adapterview, View view, int j, long l)
                    {
                        ConfigItem configitem = new ConfigItem("Sound", "Device Name", NativeManager.getInstance().getLanguageString(SettingsSoundConstants.DEVICES[j]));
                        ConfigManager.getInstance().setConfig(configitem, "");
                        finish();
                    }

            
            {
                this$0 = SettingsSoundDeviceActivity.this;
                super();
            }
                });
                return;
            }
            DisplayStrings displaystrings = SettingsSoundConstants.DEVICES[i];
            String s1 = nativemanager.getLanguageString(displaystrings);
            boolean flag = s1.equals(s);
            asettingsvalue[i] = new SettingsValue(s1, nativemanager.getLanguageString(displaystrings), flag);
            i++;
        } while (true);
    }
}
