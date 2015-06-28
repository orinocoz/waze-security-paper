// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.social;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.settings.SettingsSelectionView;
import com.waze.settings.SettingsSwitchView;
import com.waze.settings.SettingsTitleText;
import com.waze.settings.SettingsUtils;
import com.waze.settings.SwitchCheckedCallback;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.mywaze.social:
//            FacebookActivity, FoursquareActivity, TwitterActivity

public class SocialActivity extends ActivityBase
    implements com.waze.mywaze.MyWazeNativeManager.FacebookCallback, com.waze.mywaze.MyWazeNativeManager.FoursquareCallback, com.waze.mywaze.MyWazeNativeManager.TwitterCallback, com.waze.ConfigManager.IConfigUpdater
{

    private static final int GROUPS_ICONS_INDEX = 1;
    public static final String GROUP_ICONS_OPTIONS[] = {
        "All groups", "From all groups I follow", "From my main group"
    };
    public static final String GROUP_ICONS_VALUES[] = {
        "All", "following", "main"
    };
    private static final int POPUP_REPORTS_INDEX = 0;
    public static final String POPUP_REPORTS_OPTIONS[] = {
        "None", "From all groups I follow", "From my main group"
    };
    public static final String POPUP_REPORTS_VALUES[] = {
        "none", "following", "main"
    };
    public static final String screenName = "SocialActivity";
    private SettingsSwitchView PMView;
    private SettingsSelectionView iconsView;
    private List mConfigItems;
    private NativeManager nativeManager;
    private SettingsSwitchView pingView;
    private SettingsSelectionView reportsView;

    public SocialActivity()
    {
        nativeManager = AppService.getNativeManager();
    }

    public void SetAllowPM(boolean flag)
    {
        ((SettingsSwitchView)findViewById(0x7f090701)).setValue(flag);
    }

    public void SetAllowPing(boolean flag)
    {
        ((SettingsSwitchView)findViewById(0x7f090700)).setValue(flag);
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
        setContentView(0x7f03010e);
        ((TitleBar)findViewById(0x7f0906f6)).init(this, DisplayStrings.DS_SOCIAL_NETWORKS);
        Analytics.log("SETTINGS_CLICK", "VAUE", "SOCIAL_NETWORKS");
        ((TextView)findViewById(0x7f0906f9)).setText(nativeManager.getLanguageString(DisplayStrings.DS_FACEBOOK));
        ((SettingsTitleText)findViewById(0x7f0906f7)).setText(nativeManager.getLanguageString(DisplayStrings.DS_CONNECT_TO_NETWORK));
        ((TextView)findViewById(0x7f0906fb)).setText(nativeManager.getLanguageString(DisplayStrings.DS_TWITTER));
        ((TextView)findViewById(0x7f0906fd)).setText(nativeManager.getLanguageString(DisplayStrings.DS_FOURSQUARE));
        ((SettingsTitleText)findViewById(0x7f0906fe)).setText(nativeManager.getLanguageString(DisplayStrings.DS_CHIT_CHATS));
        ((TextView)findViewById(0x7f0906ff)).setText(nativeManager.getLanguageString(DisplayStrings.DS_CHIT_CHATS_ARE_PUBLIC));
        ((SettingsTitleText)findViewById(0x7f090702)).setText(nativeManager.getLanguageString(DisplayStrings.DS_GROUPS));
        mConfigItems = new ArrayList();
        mConfigItems.add(new ConfigItem("Groups", "Pop-up reports", ""));
        mConfigItems.add(new ConfigItem("Groups", "Show wazers", ""));
        ConfigManager.getInstance().getConfig(this, mConfigItems, "SocialActivity");
        reportsView = (SettingsSelectionView)findViewById(0x7f090637);
        SettingsUtils.createSettingsSelectionView(this, "SocialActivity", mConfigItems, reportsView, DisplayStrings.DS_POPHUP_REPORTS, POPUP_REPORTS_OPTIONS, POPUP_REPORTS_VALUES, 0);
        iconsView = (SettingsSelectionView)findViewById(0x7f090638);
        SettingsUtils.createSettingsSelectionView(this, "SocialActivity", mConfigItems, iconsView, DisplayStrings.DS_GROUP_ICONS, GROUP_ICONS_OPTIONS, GROUP_ICONS_VALUES, 1);
        pingView = (SettingsSwitchView)findViewById(0x7f090700);
        PMView = (SettingsSwitchView)findViewById(0x7f090701);
        MyWazeNativeManager.getInstance().GetAllowPM(this);
        MyWazeNativeManager.getInstance().GetAllowPing(this);
        PMView.setText(nativeManager.getLanguageString(DisplayStrings.DS_LET_OTHER_SEND_ME_PRIVATE_PINGS));
        pingView.setText(nativeManager.getLanguageString(DisplayStrings.DS_LET_OTHER_SEND_ME_PUBLIC_PINGS));
        pingView.setOnChecked(new SwitchCheckedCallback() {

            final SocialActivity this$0;

            public void OnCallback(boolean flag)
            {
                MyWazeNativeManager.getInstance().allowPings(flag);
                MyWazeNativeManager.getInstance().OnSettingChange_SetVisibilty();
            }

            
            {
                this$0 = SocialActivity.this;
                super();
            }
        });
        PMView.setOnChecked(new SwitchCheckedCallback() {

            final SocialActivity this$0;

            public void OnCallback(boolean flag)
            {
                MyWazeNativeManager.getInstance().SetallowPM(flag);
                MyWazeNativeManager.getInstance().OnSettingChange_SetVisibilty();
            }

            
            {
                this$0 = SocialActivity.this;
                super();
            }
        });
        if (MyWazeNativeManager.getInstance().FacebookEnabledNTV())
        {
            findViewById(0x7f0906f8).setOnClickListener(new android.view.View.OnClickListener() {

                final SocialActivity this$0;

                public void onClick(View view)
                {
                    MyWazeNativeManager.getInstance().getFacebookSettings(SocialActivity.this);
                }

            
            {
                this$0 = SocialActivity.this;
                super();
            }
            });
        } else
        {
            findViewById(0x7f0906f8).setVisibility(8);
        }
        if (MyWazeNativeManager.getInstance().TwitterEnabledNTV())
        {
            findViewById(0x7f0906fa).setOnClickListener(new android.view.View.OnClickListener() {

                final SocialActivity this$0;

                public void onClick(View view)
                {
                    MyWazeNativeManager.getInstance().getTwitterSettings(SocialActivity.this);
                }

            
            {
                this$0 = SocialActivity.this;
                super();
            }
            });
        } else
        {
            findViewById(0x7f0906fa).setVisibility(8);
        }
        if (MyWazeNativeManager.getInstance().FoursquareEnabledNTV())
        {
            findViewById(0x7f0906fc).setOnClickListener(new android.view.View.OnClickListener() {

                final SocialActivity this$0;

                public void onClick(View view)
                {
                    MyWazeNativeManager.getInstance().getFoursquareSettings(SocialActivity.this);
                }

            
            {
                this$0 = SocialActivity.this;
                super();
            }
            });
            return;
        } else
        {
            findViewById(0x7f0906fc).setVisibility(8);
            return;
        }
    }

    public void onFacebookSettings(com.waze.mywaze.MyWazeNativeManager.FacebookSettings facebooksettings)
    {
        Intent intent = new Intent(this, com/waze/mywaze/social/FacebookActivity);
        intent.putExtra("com.waze.mywaze.facebooksettings", facebooksettings);
        startActivityForResult(intent, 0);
    }

    public void onFoursquareSettings(com.waze.mywaze.MyWazeNativeManager.FoursquareSettings foursquaresettings)
    {
        Intent intent = new Intent(this, com/waze/mywaze/social/FoursquareActivity);
        intent.putExtra("com.waze.mywaze.foursquaresettings", foursquaresettings);
        startActivityForResult(intent, 0);
    }

    public void onTwitterSettings(com.waze.mywaze.MyWazeNativeManager.TwitterSettings twittersettings)
    {
        Intent intent = new Intent(this, com/waze/mywaze/social/TwitterActivity);
        intent.putExtra("com.waze.mywaze.twittersettings", twittersettings);
        startActivityForResult(intent, 0);
    }

    public void updateConfigItems(List list)
    {
        int i = SettingsUtils.findValueIndex(POPUP_REPORTS_VALUES, ((ConfigItem)list.get(0)).getValue());
        reportsView.setValueText(nativeManager.getLanguageString(POPUP_REPORTS_OPTIONS[i]));
        int j = SettingsUtils.findValueIndex(GROUP_ICONS_VALUES, ((ConfigItem)list.get(1)).getValue());
        iconsView.setValueText(nativeManager.getLanguageString(GROUP_ICONS_OPTIONS[j]));
    }

}
