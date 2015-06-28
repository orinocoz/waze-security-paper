// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.os.Bundle;
import android.util.Log;
import android.widget.CompoundButton;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.push.Registrar;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            SettingsSwitchView, SettingsUtils

public class SettingsNotificationActivity extends ActivityBase
    implements com.waze.ConfigManager.IConfigUpdater
{

    private static final String ASK_ME_PLACES_VALUE = "SettingsAskMePlacesOnOff";
    public static final String NOTIFICATIONS_CATEGORY = "Display";
    public static final String NOTIFICATIONS_VALUE = "SettingsNotificationOnOff";
    private static final int Settings_AskMe_INDEX = 1;
    private static final int Settings_Notification_INDEX = 0;
    public static final String screenName = "SettingsNotification";
    private SettingsSwitchView SettingsAskMeOnOff;
    private SettingsSwitchView SettingsNotificationOnOff;
    private final android.widget.CompoundButton.OnCheckedChangeListener mAskMeheckedListener = new android.widget.CompoundButton.OnCheckedChangeListener() {

        final SettingsNotificationActivity this$0;

        public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
        {
            if (flag)
            {
                Analytics.log("PUSH_PLACES", "VAUE", "ON");
                return;
            } else
            {
                Analytics.log("PUSH_PLACES", "VAUE", "OFF");
                return;
            }
        }

            
            {
                this$0 = SettingsNotificationActivity.this;
                super();
            }
    };
    private List mConfigItems;
    private final android.widget.CompoundButton.OnCheckedChangeListener mNotificationsCheckedListener = new android.widget.CompoundButton.OnCheckedChangeListener() {

        final SettingsNotificationActivity this$0;

        public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
        {
            Log.d("WAZE", (new StringBuilder("Notifications checked: ")).append(flag).toString());
            if (flag)
            {
                Registrar.instance().register();
                return;
            } else
            {
                Registrar.instance().unregister();
                return;
            }
        }

            
            {
                this$0 = SettingsNotificationActivity.this;
                super();
            }
    };

    public SettingsNotificationActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Log.i("waze", "start settings activity");
        setContentView(0x7f0300f2);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_NOTIFICATIONS);
        mConfigItems = new ArrayList();
        mConfigItems.add(new ConfigItem("Display", "SettingsNotificationOnOff", ""));
        mConfigItems.add(new ConfigItem("Display", "SettingsAskMePlacesOnOff", ""));
        NativeManager nativemanager = NativeManager.getInstance();
        SettingsNotificationOnOff = (SettingsSwitchView)findViewById(0x7f09065b);
        SettingsNotificationOnOff.setText(nativemanager.getLanguageString(DisplayStrings.DS_ENABLE_PUSH));
        SettingsAskMeOnOff = (SettingsSwitchView)findViewById(0x7f09065c);
        SettingsAskMeOnOff.setText(nativemanager.getLanguageString(DisplayStrings.DS_ASK_ME_ABOUT_PLACES));
    }

    protected void onResume()
    {
        super.onResume();
        ConfigManager.getInstance().getConfig(this, mConfigItems, "SettingsNotification");
    }

    public void updateConfigItems(List list)
    {
        SettingsNotificationOnOff.setValue(((ConfigItem)list.get(0)).getValue().equals("yes"));
        SettingsUtils.setSwitchCallback("SettingsNotification", mConfigItems, SettingsNotificationOnOff, 0, mNotificationsCheckedListener);
        SettingsAskMeOnOff.setValue(((ConfigItem)list.get(1)).getValue().equals("yes"));
        SettingsUtils.setSwitchCallback("SettingsNotification", mConfigItems, SettingsAskMeOnOff, 1, mAskMeheckedListener);
    }
}
