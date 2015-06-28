// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.navigate.DriveToNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            SettingsSwitchView, SettingsSelectionView, SettingsUtils, SettingsDataTransferActivity, 
//            SwitchCheckedCallback

public class SettingsAdvancedActivity extends ActivityBase
    implements com.waze.ConfigManager.IConfigUpdater
{

    protected static final int ACTIVITY_CODE = 1000;
    private static final int AUTO_LEARN_INDEX = 1;
    private static final int AUTO_ZOOM_INDEX = 2;
    public static final String AUTO_ZOOM_OPTIONS[] = {
        "According to speed", "According to distance", "No auto zoom"
    };
    public static final String AUTO_ZOOM_VALUES[] = {
        "speed", "yes", "no"
    };
    private static final int DISPLAY_MAP_INDEX = 0;
    private static final int NORTH_UP_INDEX = 3;
    public static final String screenName = "SettingsAdvanced";
    private SettingsSwitchView AllowAccessToCalendarView;
    private SettingsSwitchView NorthUpView;
    private SettingsSwitchView TargetedAdsView;
    private SettingsSelectionView autoZoomView;
    private SettingsSwitchView displayView;
    private List mConfigItems;
    private NativeManager mNativeManager;

    public SettingsAdvancedActivity()
    {
        mNativeManager = AppService.getNativeManager();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Log.i("waze", "start settings activity");
        setContentView(0x7f0300e4);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_ADVANCED);
        mConfigItems = new ArrayList();
        mConfigItems.add(new ConfigItem("Map Icons", "Show on screen on tap", ""));
        mConfigItems.add(new ConfigItem("Alternative Routes", "Show Suggested", ""));
        mConfigItems.add(new ConfigItem("Routing", "Auto zoom", ""));
        ConfigManager.getInstance().getConfig(this, mConfigItems, "SettingsAdvanced");
        Analytics.log("SETTINGS_CLICK", "VAUE", "ADVANCED");
        displayView = (SettingsSwitchView)findViewById(0x7f09061a);
        DisplayStrings displaystrings = DisplayStrings.DS_DISPLAY_MAP_CONTROLS_ON_TAP;
        final NativeManager nm = NativeManager.getInstance();
        displayView.setText(nm.getLanguageString(displaystrings));
        NorthUpView = (SettingsSwitchView)findViewById(0x7f09061c);
        DisplayStrings displaystrings1 = DisplayStrings.DS_LOCK_NORTH_UP_MODE;
        NorthUpView.setText(nm.getLanguageString(displaystrings1));
        NorthUpView.setText(nm.getLanguageString(DisplayStrings.DS_LOCK_NORTH_UP_MODE));
        NorthUpView.setValue(nm.getNorthUp());
        NorthUpView.setOnChecked(new SwitchCheckedCallback() {

            final SettingsAdvancedActivity this$0;
            private final NativeManager val$nm;

            public void OnCallback(boolean flag)
            {
                if (flag)
                {
                    nm.setNorthUp(1);
                    return;
                } else
                {
                    nm.setNorthUp(0);
                    return;
                }
            }

            
            {
                this$0 = SettingsAdvancedActivity.this;
                nm = nativemanager;
                super();
            }
        });
        AllowAccessToCalendarView = (SettingsSwitchView)findViewById(0x7f09061e);
        TextView textview;
        if (nm.CalendarFeatureEnabled())
        {
            AllowAccessToCalendarView.setText(nm.getLanguageString(DisplayStrings.DS_ALLOW_ACCESS_TO_CALENDAR));
            AllowAccessToCalendarView.setValue(nm.getAccessToCalendarAllowed());
            AllowAccessToCalendarView.setOnChecked(new SwitchCheckedCallback() {

                final SettingsAdvancedActivity this$0;
                private final NativeManager val$nm;

                public void OnCallback(boolean flag)
                {
                    if (flag)
                    {
                        nm.CalendaRequestAccessNTV();
                        DriveToNativeManager.getInstance().fetchCalendarEvents();
                        return;
                    } else
                    {
                        nm.CalendaDenyAccessNTV();
                        return;
                    }
                }

            
            {
                this$0 = SettingsAdvancedActivity.this;
                nm = nativemanager;
                super();
            }
            });
        } else
        {
            AllowAccessToCalendarView.setVisibility(8);
        }
        autoZoomView = (SettingsSelectionView)findViewById(0x7f09061b);
        SettingsUtils.createSettingsSelectionView(this, "SettingsAdvanced", mConfigItems, autoZoomView, DisplayStrings.DS_AUTO_ZOOM, AUTO_ZOOM_OPTIONS, AUTO_ZOOM_VALUES, 2);
        SettingsUtils.createDrillDownButton(this, 0x7f09061d, DisplayStrings.DS_DATA_TRANSFER, com/waze/settings/SettingsDataTransferActivity, 1000);
        TargetedAdsView = (SettingsSwitchView)findViewById(0x7f09061f);
        TargetedAdsView.setText(nm.getLanguageString(DisplayStrings.DS_ADVANCED_SETTINGS_TARGETED_ADS));
        TargetedAdsView.setValue(ConfigManager.getInstance().getConfigSwitchValue(0));
        TargetedAdsView.setOnChecked(new SwitchCheckedCallback() {

            final SettingsAdvancedActivity this$0;

            public void OnCallback(boolean flag)
            {
                ConfigManager.getInstance().setConfigSwitchValue(0, flag);
            }

            
            {
                this$0 = SettingsAdvancedActivity.this;
                super();
            }
        });
        TargetedAdsView.setVisibility(8);
        textview = (TextView)findViewById(0x7f090620);
        textview.setText(nm.getLanguageString(DisplayStrings.DS_ADVANCED_SETTINGS_TARGETED_ADS_EXPLANATION));
        textview.setVisibility(8);
    }

    public void updateConfigItems(List list)
    {
        displayView.setValue(((ConfigItem)list.get(0)).getValue().equals("yes"));
        SettingsUtils.setSwitchCallback("SettingsAdvanced", mConfigItems, displayView, 0);
        int i = SettingsUtils.findValueIndex(AUTO_ZOOM_VALUES, ((ConfigItem)list.get(2)).getValue());
        autoZoomView.setValueText(mNativeManager.getLanguageString(AUTO_ZOOM_OPTIONS[i]));
    }

}
