// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.os.Bundle;
import com.waze.AppService;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            SettingsSelectionView, SettingsUtils, SettingsSwitchView

public class SettingsNavigationActivity extends ActivityBase
    implements com.waze.ConfigManager.IConfigUpdater
{

    private static final int AVOID_HIGHWAYS_INDEX = 2;
    private static final int AVOID_PALESTINIAN_INDEX = 6;
    private static final int AVOID_TOLL_INDEX = 4;
    private static final int DIRT_ROADS_INDEX = 1;
    private static final String DIRT_ROADS_OPTIONS[] = {
        "Allow", "Don't allow", "Avoid long ones"
    };
    private static final String DIRT_ROADS_VALUES[] = DIRT_ROADS_OPTIONS;
    private static final int PALESTINIAN_INDEX = 5;
    private static final int TOLL_INDEX = 3;
    private static final int TYPE_INDEX;
    private static final String TYPE_OPTIONS[] = {
        "Fastest", "Shortest"
    };
    private static final String TYPE_VALUES[] = TYPE_OPTIONS;
    private SettingsSwitchView avoidHighwaysView;
    private SettingsSwitchView avoidTollView;
    private SettingsSelectionView dirtRoadsView;
    ArrayList mConfigItems;
    private NativeManager mNativeManager;
    private SettingsSwitchView palestinianView;
    final String screenName = "SettingsNavigation";
    private SettingsSelectionView typeView;

    public SettingsNavigationActivity()
    {
        mNativeManager = AppService.getNativeManager();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300f1);
        Analytics.log("SETTINGS_CLICK", "VAUE", "NAVIGATION");
        mConfigItems = new ArrayList();
        mConfigItems.add(new ConfigItem("Routing", "Type", ""));
        mConfigItems.add(new ConfigItem("Routing", "Avoid trails", ""));
        mConfigItems.add(new ConfigItem("Routing", "Avoid primaries", ""));
        mConfigItems.add(new ConfigItem("Routing", "Tolls roads", ""));
        mConfigItems.add(new ConfigItem("Routing", "Avoid tolls", ""));
        mConfigItems.add(new ConfigItem("Routing", "Palestinian Roads", ""));
        mConfigItems.add(new ConfigItem("Routing", "Avoid Palestinian Roads", ""));
        ConfigManager.getInstance().getConfig(this, mConfigItems, "SettingsNavigation");
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_NAVIGATION);
        typeView = (SettingsSelectionView)findViewById(0x7f090659);
        DisplayStrings displaystrings = DisplayStrings.DS_TYPE;
        SettingsUtils.createSettingsSelectionView(this, "SettingsNavigation", mConfigItems, typeView, displaystrings, TYPE_OPTIONS, TYPE_VALUES, 0);
        dirtRoadsView = (SettingsSelectionView)findViewById(0x7f090658);
        DisplayStrings displaystrings1 = DisplayStrings.DS_DIRT_ROADS;
        SettingsUtils.createSettingsSelectionView(this, "SettingsNavigation", mConfigItems, dirtRoadsView, displaystrings1, DIRT_ROADS_OPTIONS, DIRT_ROADS_VALUES, 1);
        avoidHighwaysView = (SettingsSwitchView)findViewById(0x7f090657);
        DisplayStrings displaystrings2 = DisplayStrings.DS_AVOID_HIGHWAYS;
        avoidHighwaysView.setText(NativeManager.getInstance().getLanguageString(displaystrings2));
        avoidTollView = (SettingsSwitchView)findViewById(0x7f090656);
        DisplayStrings displaystrings3 = DisplayStrings.DS_AVOID_TOLL_ROADS;
        avoidTollView.setText(NativeManager.getInstance().getLanguageString(displaystrings3));
        palestinianView = (SettingsSwitchView)findViewById(0x7f09065a);
        DisplayStrings displaystrings4 = DisplayStrings.DS_KEEP_WITHIN_AREAS_UNDER_ISRAELI_AUTHORITY;
        palestinianView.setText(NativeManager.getInstance().getLanguageString(displaystrings4));
    }

    public void updateConfigItems(List list)
    {
        int i = SettingsUtils.findValueIndex(TYPE_VALUES, ((ConfigItem)list.get(0)).getValue());
        String s = mNativeManager.getLanguageString(TYPE_OPTIONS[i]);
        typeView.setValueText(s);
        int j = SettingsUtils.findValueIndex(DIRT_ROADS_VALUES, ((ConfigItem)list.get(1)).getValue());
        String s1 = mNativeManager.getLanguageString(DIRT_ROADS_OPTIONS[j]);
        dirtRoadsView.setValueText(s1);
        avoidHighwaysView.setValue(((ConfigItem)list.get(2)).getValue().equals("yes"));
        SettingsUtils.setSwitchCallback("SettingsNavigation", mConfigItems, avoidHighwaysView, 2);
        if (((ConfigItem)list.get(5)).getValue().equals("yes"))
        {
            palestinianView.setValue(((ConfigItem)list.get(6)).getValue().equals("yes"));
            SettingsUtils.setSwitchCallback("SettingsNavigation", mConfigItems, palestinianView, 6);
        } else
        {
            palestinianView.setVisibility(8);
        }
        if (((ConfigItem)list.get(3)).getValue().equals("yes"))
        {
            avoidTollView.setValue(((ConfigItem)list.get(4)).getValue().equals("yes"));
            SettingsUtils.setSwitchCallback("SettingsNavigation", mConfigItems, avoidTollView, 4);
            return;
        } else
        {
            avoidTollView.setVisibility(8);
            return;
        }
    }

}
