// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.SeekBar;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import com.waze.NativeSoundManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            SettingsNativeManager, SettingsSoundConstants, SettingsSelectionView, SettingsSwitchView, 
//            SettingsUtils, SettingsSeekbarView, SettingsValue, SettingsNavigationGuidanceActivity, 
//            SwitchCheckedCallback

public class SettingsSoundActivity extends ActivityBase
    implements com.waze.ConfigManager.IConfigUpdater
{

    private List mConfigItems;
    private SettingsSeekbarView mPromptsSoundVolumeBar;
    private SettingsSwitchView mSpeakerChkBox;
    private SettingsSelectionView navLanguageView;
    private String navigationGuidanceValueStrings[];
    private SettingsValue navigationGuidanceValues[];
    private SettingsNativeManager settingsNativeManager;

    public SettingsSoundActivity()
    {
        mSpeakerChkBox = null;
        mPromptsSoundVolumeBar = null;
        navigationGuidanceValueStrings = null;
        navigationGuidanceValues = null;
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
        setContentView(0x7f0300f7);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_SOUND);
        settingsNativeManager = new SettingsNativeManager();
        Analytics.log("SETTINGS_CLICK", "VAUE", "SOUND");
        mConfigItems = new ArrayList();
        mConfigItems.add(0, SettingsSoundConstants.CFG_ITEM_ROUTE_2_SPEAKER);
        mConfigItems.add(1, SettingsSoundConstants.CFG_ITEM_PROMPTS_VOLUME);
        navLanguageView = (SettingsSelectionView)findViewById(0x7f090200);
        navLanguageView.setKeyText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_NAVIGATION_GUIDANCE));
        findViewById(0x7f090200).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsSoundActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(SettingsSoundActivity.this, com/waze/settings/SettingsNavigationGuidanceActivity);
                startActivityForResult(intent, 0);
            }

            
            {
                this$0 = SettingsSoundActivity.this;
                super();
            }
        });
        mSpeakerChkBox = (SettingsSwitchView)findViewById(0x7f09066e);
        mSpeakerChkBox.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SOUND_ROUTE_2_SPEAKER));
        SettingsUtils.setSwitchCallback("", mConfigItems, mSpeakerChkBox, 0);
        mSpeakerChkBox.setOnChecked(new SwitchCheckedCallback() {

            final SettingsSoundActivity this$0;

            public void OnCallback(boolean flag)
            {
                setRoute2Speaker(flag);
            }

            
            {
                this$0 = SettingsSoundActivity.this;
                super();
            }
        });
        NativeManager nativemanager = NativeManager.getInstance();
        mPromptsSoundVolumeBar = (SettingsSeekbarView)findViewById(0x7f09066d);
        mPromptsSoundVolumeBar.setText(nativemanager.getLanguageString(DisplayStrings.DS_SOUND_PROMPTS_VOLUME));
        mPromptsSoundVolumeBar.setOnSeekBarChangeListener(new SettingsSeekbarView.OnSeekBarChangeListenerBasic() {

            final SettingsSoundActivity this$0;

            public void onProgressChanged(SeekBar seekbar, int i)
            {
                setPromptsVolume(i);
            }

            
            {
                this$0 = SettingsSoundActivity.this;
                super();
            }
        });
    }

    protected void onResume()
    {
        super.onResume();
        ConfigManager.getInstance().getConfig(this, mConfigItems, "");
        settingsNativeManager.getNavigationGuidanceTypes(new SettingsNativeManager.SettingsValuesListener() {

            final SettingsSoundActivity this$0;

            public void onComplete(SettingsValue asettingsvalue[])
            {
                if (asettingsvalue == null)
                {
                    navLanguageView.setVisibility(8);
                } else
                {
                    int i = asettingsvalue.length;
                    int j = 0;
                    while (j < i) 
                    {
                        SettingsValue settingsvalue = asettingsvalue[j];
                        if (settingsvalue.isSelected)
                        {
                            navLanguageView.setValueText(settingsvalue.display);
                            return;
                        }
                        j++;
                    }
                }
            }

            
            {
                this$0 = SettingsSoundActivity.this;
                super();
            }
        });
    }

    protected void setPromptsVolume(int i)
    {
        NativeSoundManager nativesoundmanager = NativeSoundManager.getInstance();
        ConfigItem configitem = new ConfigItem("Sound", "Prompts Volume", String.valueOf(i));
        ConfigManager.getInstance().setConfig(configitem, "");
        nativesoundmanager.setVolume(i);
    }

    protected void setRoute2Speaker(boolean flag)
    {
        NativeSoundManager nativesoundmanager = NativeSoundManager.getInstance();
        String s;
        ConfigItem configitem;
        if (flag)
        {
            s = "yes";
        } else
        {
            s = "no";
        }
        configitem = new ConfigItem("Sound", "Route2Speaker", s);
        ConfigManager.getInstance().setConfig(configitem, "");
        nativesoundmanager.routeSoundToSpeaker(flag);
    }

    public void updateConfigItems(List list)
    {
        boolean flag = ((ConfigItem)list.get(0)).getValue().equals("yes");
        mSpeakerChkBox.setValue(flag);
        String s = ((ConfigItem)list.get(1)).getValue();
        mPromptsSoundVolumeBar.setProgress(Integer.valueOf(s).intValue());
    }

}
