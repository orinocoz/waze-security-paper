// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.os.Bundle;
import android.widget.TextView;
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
//            SettingsCheckboxView, SettingsUtils, SettingsSelectionView

public class SettingsVoiceCommandsActivity extends ActivityBase
    implements com.waze.ConfigManager.IConfigUpdater
{

    private static final String ACTIVATION_OPTIONS[] = {
        "3 finger tap", "3 fingers or wave", "3 fingers or wave twice"
    };
    private static final String ACTIVATION_VALUES[] = {
        "no", "yes", "twice"
    };
    private static final int ENABLE_INDEX = 0;
    private static final int PROXIMITY_INDEX = 1;
    private SettingsCheckboxView enableView;
    ArrayList mConfigItems;
    private NativeManager nativeManager;
    private SettingsSelectionView proximityEnabledView;
    final String screenName = "SettingsVoice";

    public SettingsVoiceCommandsActivity()
    {
        nativeManager = AppService.getNativeManager();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300fb);
        mConfigItems = new ArrayList();
        mConfigItems.add(new ConfigItem("ASR", "Enabled", ""));
        mConfigItems.add(new ConfigItem("ASR", "Proximity activation", ""));
        ConfigManager.getInstance().getConfig(this, mConfigItems, "SettingsVoice");
        Analytics.log("SETTINGS_CLICK", "VAUE", "VOICE");
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_VOICE_COMMANDS);
        enableView = (SettingsCheckboxView)findViewById(0x7f090675);
        SettingsUtils.setCheckboxLanguageString(enableView, DisplayStrings.DS_ENABLE);
        proximityEnabledView = (SettingsSelectionView)findViewById(0x7f090676);
        SettingsUtils.createSettingsSelectionView(this, "SettingsVoice", mConfigItems, proximityEnabledView, DisplayStrings.DS_ACTIVATION, ACTIVATION_OPTIONS, ACTIVATION_VALUES, 1);
        ((TextView)findViewById(0x7f090677)).setText(nativeManager.getLanguageString(DisplayStrings.DS_YOU_CAN_USE_VOICE_COMMANDS_FOR_FOLLOWING_FUNCTIONSC));
        ((TextView)findViewById(0x7f090678)).setText(nativeManager.getLanguageString(DisplayStrings.DS_REPORT));
        String s = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(nativeManager.getLanguageString(DisplayStrings.DS_EXC_SREPORT_HEAVY_TRAFFICS__YOUSLL)))).append(" ").append(nativeManager.getLanguageString(DisplayStrings.DS_BE_PROMPTED_FOR_ADDITIONAL)).toString()))).append(" ").append(nativeManager.getLanguageString(DisplayStrings.DS_DETAILS)).toString();
        ((TextView)findViewById(0x7f090679)).setText(s);
        ((TextView)findViewById(0x7f09067a)).setText(nativeManager.getLanguageString(DisplayStrings.DS_NAVIGATE_TO_S_DRIVE_TO));
        String s1 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(nativeManager.getLanguageString(DisplayStrings.DS_NOTEC__IN_THIS_VERSION_YOU_CAN)))).append(" ").append(nativeManager.getLanguageString(DisplayStrings.DS_ONLY_COMMAND_NAVIGATION_TO)).toString()))).append(" ").append(nativeManager.getLanguageString(DisplayStrings.DS_HOME_OR_TO_WORK)).toString();
        ((TextView)findViewById(0x7f09067b)).setText(s1);
        ((TextView)findViewById(0x7f09067c)).setText(nativeManager.getLanguageString(DisplayStrings.DS_EXC_SDRIVE_HOMES));
        (new StringBuilder(String.valueOf(nativeManager.getLanguageString(DisplayStrings.DS_STOP_NAVIGATION_OR_STOP)))).append(" ").append(nativeManager.getLanguageString(DisplayStrings.DS_NAVIGATING)).toString();
        ((TextView)findViewById(0x7f09067d)).setText(nativeManager.getLanguageString(DisplayStrings.DS_CANCEL_CANCELS_THE_COMMAND));
        ((TextView)findViewById(0x7f09067e)).setText(nativeManager.getLanguageString(DisplayStrings.DS_BACK_TAKES_YOU_BACK_ONE_LEVEL));
    }

    public void updateConfigItems(List list)
    {
        enableView.setValue(((ConfigItem)list.get(0)).getValue().equalsIgnoreCase("yes"));
        SettingsUtils.setCheckboxCallback("SettingsVoice", mConfigItems, enableView, 0);
        String s = ((ConfigItem)list.get(1)).getValue();
        if (s.equalsIgnoreCase("no"))
        {
            proximityEnabledView.setValueText(nativeManager.getLanguageString(DisplayStrings.DS_3_FINGER_TAP));
        } else
        {
            if (s.equalsIgnoreCase("yes"))
            {
                proximityEnabledView.setValueText(nativeManager.getLanguageString(DisplayStrings.DS_3_FINGERS_OR_WAVE));
                return;
            }
            if (s.equalsIgnoreCase("twice"))
            {
                proximityEnabledView.setValueText(nativeManager.getLanguageString(DisplayStrings.DS_3_FINGERS_OR_WAVE_TWICE));
                return;
            }
        }
    }

}
