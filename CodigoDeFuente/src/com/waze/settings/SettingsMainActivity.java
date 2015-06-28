// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import com.waze.AppService;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.VideoActivity;
import com.waze.install.InstallNativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.mywaze.social.SocialActivity;
import com.waze.profile.MyProfileActivity;
import com.waze.profile.TempUserProfileActivity;
import com.waze.share.SpreadTheWordActivity;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            SettingsNativeManager, SettingsTitleText, SettingsSelectionView, SettingsUtils, 
//            SettingsUtilsMultipleConfig, SettingsGeneralActivity, SettingsVoiceCommandsActivity, SettingsMapActivity, 
//            SettingsSoundActivity, SettingsNotificationActivity, SettingsGasActivity, SettingsNavigationActivity, 
//            SettingsAdvancedActivity, DrillDownSettingView

public class SettingsMainActivity extends ActivityBase
    implements com.waze.ConfigManager.IConfigUpdater
{

    protected static final int ACTIVITY_CODE = 1000;
    private static final int ASR_ENABLED = 2;
    private static final int AUTO_NIGHT_MODE_INDEX = 3;
    private static final int MAP_DISPLAY_INDEX = 1;
    private static final String MAP_DISPLAY_OPTIONS[] = {
        "2D", "3D", "Auto"
    };
    private static final String MAP_DISPLAY_VALUES[] = {
        "2D", "3D", "Auto"
    };
    private static final int MAP_MODE_INDEX;
    private static final int MAP_MODE_INDEXES[];
    private static final String MAP_MODE_OPTIONS[] = {
        "Day", "Auto", "Night"
    };
    private static final String MAP_MODE_VALUES[] = {
        "day", "yes", "night"
    };
    protected ConfigItem editVideoUrl;
    List mConfigItems;
    private NativeManager mNativeManager;
    private SettingsSelectionView mapDisplay;
    private SettingsSelectionView mapMode;
    final String screenName = "MainSettings";
    protected boolean showGuidedTour;
    protected boolean showHowToEditMap;

    public SettingsMainActivity()
    {
        showGuidedTour = true;
        showHowToEditMap = true;
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
        setContentView(0x7f0300ef);
        mConfigItems = new ArrayList();
        mConfigItems.add(new ConfigItem("Display", "Map sub_skin", ""));
        mConfigItems.add(new ConfigItem("Map", "Orientation", ""));
        mConfigItems.add(new ConfigItem("ASR", "Feature enabled", ""));
        mConfigItems.add(new ConfigItem("Display", "Auto night mode", ""));
        mConfigItems.add(new ConfigItem("Help", "How to edit map url", ""));
        mConfigItems.add(new ConfigItem("Help", "Show Guided Tour", ""));
        mConfigItems.add(new ConfigItem("Help", "Show how to edit", ""));
        ConfigManager.getInstance().getConfig(this, mConfigItems, "MainSettings");
        new SettingsNativeManager();
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_SETTINGS);
        ((SettingsTitleText)findViewById(0x7f090640)).setText(mNativeManager.getLanguageString(DisplayStrings.DS_QUICK_SETTINGS));
        ((SettingsTitleText)findViewById(0x7f090643)).setText(mNativeManager.getLanguageString(DisplayStrings.DS_SETTINGS));
        ((SettingsTitleText)findViewById(0x7f090650)).setText(mNativeManager.getLanguageString(DisplayStrings.DS_HELP));
        mapDisplay = (SettingsSelectionView)findViewById(0x7f090641);
        SettingsUtils.createSettingsSelectionView(this, "MainSettings", mConfigItems, mapDisplay, DisplayStrings.DS_DISPLAY, MAP_DISPLAY_OPTIONS, MAP_DISPLAY_VALUES, 1);
        mapMode = (SettingsSelectionView)findViewById(0x7f090642);
        SettingsUtilsMultipleConfig.createSettingsSelectionView(this, "MainSettings", mConfigItems, mapMode, DisplayStrings.DS_MODE, MAP_MODE_OPTIONS, MAP_MODE_VALUES, MAP_MODE_INDEXES);
        SettingsUtils.createDrillDownButton(this, 0x7f090644, DisplayStrings.DS_GENERAL, com/waze/settings/SettingsGeneralActivity, 1000);
        SettingsUtils.createDrillDownButton(this, 0x7f090645, DisplayStrings.DS_SOCIAL_NETWORKS, com/waze/mywaze/social/SocialActivity, 1000);
        if (MyWazeNativeManager.getInstance().isRandomUserNTV())
        {
            SettingsUtils.createDrillDownButton(this, 0x7f09064b, DisplayStrings.DS_ACCOUNT_AND_SETTINGS, com/waze/profile/TempUserProfileActivity, 1000);
        } else
        {
            SettingsUtils.createDrillDownButton(this, 0x7f09064b, DisplayStrings.DS_ACCOUNT_AND_SETTINGS, com/waze/profile/MyProfileActivity, 1000);
        }
        SettingsUtils.createDrillDownButton(this, 0x7f09064a, DisplayStrings.DS_VOICE_COMMANDS, com/waze/settings/SettingsVoiceCommandsActivity, 1000);
        SettingsUtils.createDrillDownButton(this, 0x7f090646, DisplayStrings.DS_DISPLAY_SETTINGS, com/waze/settings/SettingsMapActivity, 1000);
        SettingsUtils.createDrillDownButton(this, 0x7f090647, DisplayStrings.DS_SOUND, com/waze/settings/SettingsSoundActivity, 1000);
        SettingsUtils.createDrillDownButton(this, 0x7f09064c, DisplayStrings.DS_NOTIFICATIONS, com/waze/settings/SettingsNotificationActivity, 1000);
        SettingsUtils.createDrillDownButton(this, 0x7f090649, DisplayStrings.DS_GAS_STATIONS, com/waze/settings/SettingsGasActivity, 1000);
        if (NativeManager.getInstance().ShouldDisplayGasInSettings())
        {
            findViewById(0x7f090649).setVisibility(0);
        }
        SettingsUtils.createDrillDownButton(this, 0x7f090648, DisplayStrings.DS_NAVIGATION, com/waze/settings/SettingsNavigationActivity, 1000);
        SettingsUtils.createDrillDownButton(this, 0x7f09064d, DisplayStrings.DS_ADVANCED, com/waze/settings/SettingsAdvancedActivity, 1000);
        SettingsUtils.createDrillDownButton(this, 0x7f09064e, DisplayStrings.DS_SPREAD_THE_WORD, com/waze/share/SpreadTheWordActivity, 1000);
        ((DrillDownSettingView)findViewById(0x7f09064f)).setText(mNativeManager.getLanguageString(DisplayStrings.DS_ABOUT_AND_NOTICES));
        findViewById(0x7f09064f).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsMainActivity this$0;

            public void onClick(View view)
            {
                ConfigManager.getInstance().aboutClick();
            }

            
            {
                this$0 = SettingsMainActivity.this;
                super();
            }
        });
        if (showGuidedTour)
        {
            ((DrillDownSettingView)findViewById(0x7f090639)).setText(mNativeManager.getLanguageString(DisplayStrings.DS_WATCH_THE_GUIDED_TOUR));
        } else
        {
            ((DrillDownSettingView)findViewById(0x7f090639)).setVisibility(8);
        }
        if (showHowToEditMap)
        {
            if (NativeManager.getInstance().GetIsShowHowToEditNTV())
            {
                ((DrillDownSettingView)findViewById(0x7f09063a)).setText(mNativeManager.getLanguageString(DisplayStrings.DS_HOW_TO_EDIT_THE_MAP));
            } else
            {
                ((DrillDownSettingView)findViewById(0x7f09063a)).setVisibility(8);
            }
        }
        ((DrillDownSettingView)findViewById(0x7f09063b)).setText(mNativeManager.getLanguageString(DisplayStrings.DS_HELP_CENTER));
        ((DrillDownSettingView)findViewById(0x7f09063c)).setText(mNativeManager.getLanguageString(DisplayStrings.DS_SEND_LOGS));
        findViewById(0x7f090639).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsMainActivity this$0;

            public void onClick(View view)
            {
                DisplayMetrics displaymetrics = new DisplayMetrics();
                getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
                (new InstallNativeManager()).getVideoUrl(false, displaymetrics.widthPixels, displaymetrics.heightPixels, new com.waze.install.InstallNativeManager.VideoUrlListener() {

                    final _cls2 this$1;

                    public void onComplete(String s)
                    {
                        Intent intent = new Intent(_fld0, com/waze/ifs/ui/VideoActivity);
                        intent.putExtra("url", s);
                        startActivity(intent);
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                });
            }


            
            {
                this$0 = SettingsMainActivity.this;
                super();
            }
        });
        findViewById(0x7f09063a).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsMainActivity this$0;

            public void onClick(View view)
            {
                if (editVideoUrl != null)
                {
                    Intent intent = new Intent(SettingsMainActivity.this, com/waze/ifs/ui/VideoActivity);
                    intent.putExtra("url", editVideoUrl.getValue());
                    intent.putExtra("landscape", true);
                    startActivity(intent);
                }
            }

            
            {
                this$0 = SettingsMainActivity.this;
                super();
            }
        });
        findViewById(0x7f09063b).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsMainActivity this$0;

            public void onClick(View view)
            {
                ConfigManager.getInstance().helpAskQuestion();
            }

            
            {
                this$0 = SettingsMainActivity.this;
                super();
            }
        });
        findViewById(0x7f09063c).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsMainActivity this$0;

            public void onClick(View view)
            {
                ConfigManager.getInstance().sendLogsClick();
            }

            
            {
                this$0 = SettingsMainActivity.this;
                super();
            }
        });
    }

    public void updateConfigItems(List list)
    {
        int i = SettingsUtilsMultipleConfig.findValueIndex(MAP_MODE_VALUES, ((ConfigItem)list.get(0)).getValue(), ((ConfigItem)list.get(3)).getValue());
        mapMode.setValueText(mNativeManager.getLanguageString(MAP_MODE_OPTIONS[i]));
        int j = SettingsUtils.findValueIndex(MAP_DISPLAY_VALUES, ((ConfigItem)list.get(1)).getValue());
        mapDisplay.setValueText(mNativeManager.getLanguageString(MAP_DISPLAY_OPTIONS[j]));
        if (((ConfigItem)list.get(2)).getValue().equals("yes"))
        {
            findViewById(0x7f09064a).setVisibility(0);
        }
        editVideoUrl = (ConfigItem)list.get(4);
        if (((ConfigItem)list.get(5)).getValue().equalsIgnoreCase("yes"))
        {
            showGuidedTour = true;
        } else
        {
            showGuidedTour = false;
            ((DrillDownSettingView)findViewById(0x7f090639)).setVisibility(8);
        }
        if (((ConfigItem)list.get(6)).getValue().equalsIgnoreCase("yes"))
        {
            showHowToEditMap = true;
            return;
        } else
        {
            showHowToEditMap = false;
            ((DrillDownSettingView)findViewById(0x7f09063a)).setVisibility(8);
            return;
        }
    }

    static 
    {
        int ai[] = new int[3];
        ai[1] = 3;
        MAP_MODE_INDEXES = ai;
    }
}
