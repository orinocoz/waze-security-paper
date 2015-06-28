// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.os.Bundle;
import android.util.Log;
import com.waze.AppService;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            SettingsSwitchView, SettingsUtils, SwitchCheckedCallback

public class SettingsShowOnMapActivity extends ActivityBase
    implements com.waze.ConfigManager.IConfigUpdater
{

    private static final int ENABLE_TOGGLE_CONSTRUCTION_INDEX = 5;
    private static final int REPORT_TYPES_INDEX = 3;
    private static final int ROAD_GOODIES_INDEX = 4;
    private static final int SPEEDCAMS_INDEX = 2;
    private static final int TRAFFIC_LOADS_INDEX = 1;
    private static final int WAZERS_INDEX = 0;
    public static final String screenName = "SettingsAdvancedShowOnMap";
    private SettingsSwitchView accidentsView;
    private SettingsSwitchView chitchatsView;
    private boolean enableToggleConstruction;
    private SettingsSwitchView hazardsView;
    private List mConfigItems;
    private NativeManager mNativeManager;
    private SettingsSwitchView policeView;
    private boolean reportTypes[];
    private SettingsSwitchView roadConstructionsView;
    private SettingsSwitchView roadGoodiesView;
    private SettingsSwitchView speedcamsView;
    private SettingsSwitchView trafficJamsView;
    private SettingsSwitchView trafficLoadsView;
    private SettingsSwitchView wazersView;

    public SettingsShowOnMapActivity()
    {
        mNativeManager = AppService.getNativeManager();
    }

    private void createCheckbox(DisplayStrings displaystrings, SettingsSwitchView settingsswitchview, final int index)
    {
        settingsswitchview.setText(mNativeManager.getLanguageString(displaystrings));
        settingsswitchview.setOnChecked(new SwitchCheckedCallback() {

            final SettingsShowOnMapActivity this$0;
            private final int val$index;

            public void OnCallback(boolean flag)
            {
                if (reportTypes == null)
                {
                    return;
                } else
                {
                    reportTypes[index] = flag;
                    ConfigItem configitem = (ConfigItem)mConfigItems.get(3);
                    configitem.setValue(createReportTypesString());
                    ConfigManager.getInstance().setConfig(configitem, "SettingsAdvancedShowOnMap");
                    return;
                }
            }

            
            {
                this$0 = SettingsShowOnMapActivity.this;
                index = i;
                super();
            }
        });
    }

    protected String createReportTypesString()
    {
        String s;
        int i;
        s = "";
        i = 0;
_L9:
        if (i >= 6)
        {
            if (s.endsWith("-"))
            {
                s = s.substring(0, -1 + s.length());
            }
            return s;
        }
        i;
        JVM INSTR tableswitch 0 5: default 72
    //                   0 78
    //                   1 110
    //                   2 142
    //                   3 174
    //                   4 206
    //                   5 238;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L7:
        break MISSING_BLOCK_LABEL_238;
_L1:
        break; /* Loop/switch isn't completed */
_L2:
        break; /* Loop/switch isn't completed */
_L10:
        i++;
        if (true) goto _L9; else goto _L8
_L8:
        if (!reportTypes[i])
        {
            s = (new StringBuilder(String.valueOf(s))).append("0-").toString();
        }
          goto _L10
_L3:
        if (!reportTypes[i])
        {
            s = (new StringBuilder(String.valueOf(s))).append("1-").toString();
        }
          goto _L10
_L4:
        if (!reportTypes[i])
        {
            s = (new StringBuilder(String.valueOf(s))).append("2-").toString();
        }
          goto _L10
_L5:
        if (!reportTypes[i])
        {
            s = (new StringBuilder(String.valueOf(s))).append("3-").toString();
        }
          goto _L10
_L6:
        if (!reportTypes[i])
        {
            s = (new StringBuilder(String.valueOf(s))).append("5-").toString();
        }
          goto _L10
        if (!reportTypes[i])
        {
            s = (new StringBuilder(String.valueOf(s))).append("7-").toString();
        }
          goto _L10
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Log.i("waze", "start settings activity show on map");
        setContentView(0x7f0300f6);
        if (bundle != null)
        {
            reportTypes = bundle.getBooleanArray((new StringBuilder(String.valueOf(getClass().getName()))).append(".reportTypes").toString());
        }
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_SHOW_ON_MAP);
        mConfigItems = new ArrayList();
        mConfigItems.add(new ConfigItem("Map", "Show other wazers", ""));
        mConfigItems.add(new ConfigItem("Map", "Show traffic jams", ""));
        mConfigItems.add(new ConfigItem("Map", "Show speed cams", ""));
        mConfigItems.add(new ConfigItem("Map", "Dont Show reports types", ""));
        mConfigItems.add(new ConfigItem("Map", "Show road goodies", ""));
        mConfigItems.add(new ConfigItem("Map", "Enable Toggle Construction", ""));
        ConfigManager.getInstance().getConfig(this, mConfigItems, "SettingsAdvancedShowOnMap");
        wazersView = (SettingsSwitchView)findViewById(0x7f090662);
        DisplayStrings displaystrings = DisplayStrings.DS_WAZERS;
        wazersView.setText(NativeManager.getInstance().getLanguageString(displaystrings));
        trafficLoadsView = (SettingsSwitchView)findViewById(0x7f090663);
        DisplayStrings displaystrings1 = DisplayStrings.DS_TRAFFIC_LAYER_OCOLOR_CODEDU;
        trafficLoadsView.setText(NativeManager.getInstance().getLanguageString(displaystrings1));
        speedcamsView = (SettingsSwitchView)findViewById(0x7f090664);
        DisplayStrings displaystrings2 = DisplayStrings.DS_SPEED_CAMS;
        if (!NativeManager.getInstance().isEnforcementAlertsEnabledNTV())
        {
            speedcamsView.setVisibility(8);
        }
        speedcamsView.setText(NativeManager.getInstance().getLanguageString(displaystrings2));
        roadGoodiesView = (SettingsSwitchView)findViewById(0x7f09066b);
        DisplayStrings displaystrings3 = DisplayStrings.DS_ROAD_GOODIES;
        roadGoodiesView.setText(NativeManager.getInstance().getLanguageString(displaystrings3));
        chitchatsView = (SettingsSwitchView)findViewById(0x7f090665);
        createCheckbox(DisplayStrings.DS_CHIT_CHATS, chitchatsView, 0);
        policeView = (SettingsSwitchView)findViewById(0x7f090666);
        createCheckbox(DisplayStrings.DS_POLICE, policeView, 1);
        if (NativeManager.getInstance().isEnforcementPoliceEnabledNTV() == 0)
        {
            policeView.setVisibility(8);
        }
        accidentsView = (SettingsSwitchView)findViewById(0x7f090667);
        createCheckbox(DisplayStrings.DS_ACCIDENTS, accidentsView, 2);
        trafficJamsView = (SettingsSwitchView)findViewById(0x7f090668);
        createCheckbox(DisplayStrings.DS_TRAFFIC_JAMS_, trafficJamsView, 3);
        hazardsView = (SettingsSwitchView)findViewById(0x7f090669);
        createCheckbox(DisplayStrings.DS_HAZARDS, hazardsView, 4);
        roadConstructionsView = (SettingsSwitchView)findViewById(0x7f09066a);
        createCheckbox(DisplayStrings.DS_ROAD_CONSTRUCTIONS, roadConstructionsView, 5);
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putBooleanArray((new StringBuilder(String.valueOf(getClass().getName()))).append(".reportTypes").toString(), reportTypes);
    }

    public void updateConfigItems(List list)
    {
        String as[];
        int i;
        as = ((ConfigItem)list.get(3)).getValue().split("-");
        enableToggleConstruction = ((ConfigItem)list.get(5)).getValue().equals("yes");
        if (!enableToggleConstruction)
        {
            roadConstructionsView.setVisibility(8);
        }
        reportTypes = new boolean[6];
        i = 0;
_L3:
        if (i < 6) goto _L2; else goto _L1
_L1:
        int j;
        int k;
        chitchatsView.setValue(true);
        policeView.setValue(true);
        accidentsView.setValue(true);
        trafficJamsView.setValue(true);
        hazardsView.setValue(true);
        roadConstructionsView.setValue(true);
        j = as.length;
        k = 0;
_L4:
        if (k >= j)
        {
            wazersView.setValue(((ConfigItem)list.get(0)).getValue().equals("yes"));
            SettingsUtils.setSwitchCallback("SettingsAdvancedShowOnMap", mConfigItems, wazersView, 0);
            trafficLoadsView.setValue(((ConfigItem)list.get(1)).getValue().equals("yes"));
            SettingsUtils.setSwitchCallback("SettingsAdvancedShowOnMap", mConfigItems, trafficLoadsView, 1);
            speedcamsView.setValue(((ConfigItem)list.get(2)).getValue().equals("yes"));
            SettingsUtils.setSwitchCallback("SettingsAdvancedShowOnMap", mConfigItems, speedcamsView, 2);
            roadGoodiesView.setValue(((ConfigItem)list.get(4)).getValue().equals("yes"));
            SettingsUtils.setSwitchCallback("SettingsAdvancedShowOnMap", mConfigItems, roadGoodiesView, 4);
            return;
        }
        break MISSING_BLOCK_LABEL_310;
_L2:
        reportTypes[i] = true;
        i++;
          goto _L3
        String s = as[k];
        if (s.equals("0"))
        {
            reportTypes[0] = false;
            chitchatsView.setValue(false);
        } else
        if (s.equals("1"))
        {
            reportTypes[1] = false;
            policeView.setValue(false);
        } else
        if (s.equals("2"))
        {
            reportTypes[2] = false;
            accidentsView.setValue(false);
        } else
        if (s.equals("3"))
        {
            reportTypes[3] = false;
            trafficJamsView.setValue(false);
        } else
        if (s.equals("5"))
        {
            reportTypes[4] = false;
            hazardsView.setValue(false);
        } else
        if (s.equals("7"))
        {
            reportTypes[5] = false;
            roadConstructionsView.setValue(false);
        }
        k++;
          goto _L4
    }


}
