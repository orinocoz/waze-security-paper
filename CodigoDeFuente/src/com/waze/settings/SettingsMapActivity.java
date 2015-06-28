// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import com.waze.AppService;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.profile.CarsActivity;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            SettingsSelectionView, SettingsShowOnMapActivity, SettingsUtils, SettingsSwitchView, 
//            SettingsMapColorsActivity

public class SettingsMapActivity extends ActivityBase
    implements com.waze.ConfigManager.IConfigUpdater
{

    protected static final int ACTIVITY_CODE = 1000;
    private static final int MAP_COLORS_CODE = 1000;
    public static final String MAP_COLORS_ICONS[] = {
        "schema12", "schema9", "schema10", "schema", "schema1", "schema2", "schema3", "schema4", "schema5", "schema6", 
        "schema7", "schema8"
    };
    public static final int MAP_COLORS_INDEX = 1;
    public static final String MAP_COLORS_OPTIONS[] = {
        "Default", "Green peace", "Minimalism", "Vitamin C", "The blues", "Mochaccino", "Snow day", "Twilight", "Tutti-fruiti", "Rosebud", 
        "Electrolytes", "Map editors"
    };
    public static final String MAP_COLORS_VALUES[] = {
        "12", "9", "10", "", "1", "2", "3", "4", "5", "6", 
        "7", "8"
    };
    private static final int SHOW_SPEEDOMETER_INDEX = 0;
    public static final String screenName = "SettingsMap";
    private List mConfigItems;
    private NativeManager mNativeManager;
    private SettingsSelectionView mapColors;
    private SettingsSwitchView speedometerView;

    public SettingsMapActivity()
    {
        mNativeManager = AppService.getNativeManager();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Log.i("waze", "start settings activity");
        setContentView(0x7f0300f0);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_DISPLAY_SETTINGS);
        mConfigItems = new ArrayList();
        mConfigItems.add(new ConfigItem("Map", "Show speedometer", ""));
        mConfigItems.add(new ConfigItem("Display", "Map scheme V3", ""));
        Analytics.log("SETTINGS_CLICK", "VAUE", "DISPLAY_SETTINGS");
        mapColors = (SettingsSelectionView)findViewById(0x7f090653);
        String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_MAP_COLOR_SCHEME);
        mapColors.setKeyText(s);
        mapColors.setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsMapActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(SettingsMapActivity.this, com/waze/settings/SettingsMapColorsActivity);
                startActivityForResult(intent, 1000);
            }

            
            {
                this$0 = SettingsMapActivity.this;
                super();
            }
        });
        SettingsUtils.createDrillDownButton(this, 0x7f090652, DisplayStrings.DS_SHOW_ON_MAP, com/waze/settings/SettingsShowOnMapActivity, 1000);
        SettingsUtils.createDrillDownButton(this, 0x7f090651, DisplayStrings.DS_MY_CAR, com/waze/profile/CarsActivity, 1000);
        speedometerView = (SettingsSwitchView)findViewById(0x7f090654);
        DisplayStrings displaystrings = DisplayStrings.DS_SPEEDOMETER;
        speedometerView.setText(NativeManager.getInstance().getLanguageString(displaystrings));
    }

    protected void onResume()
    {
        super.onResume();
        ConfigManager.getInstance().getConfig(this, mConfigItems, "SettingsMap");
    }

    public void updateConfigItems(List list)
    {
        speedometerView.setValue(((ConfigItem)list.get(0)).getValue().equals("yes"));
        SettingsUtils.setSwitchCallback("SettingsMap", mConfigItems, speedometerView, 0);
        int i = SettingsUtils.findValueIndex(MAP_COLORS_VALUES, ((ConfigItem)list.get(1)).getValue());
        mapColors.setValueText(mNativeManager.getLanguageString(MAP_COLORS_OPTIONS[i]));
    }

}
