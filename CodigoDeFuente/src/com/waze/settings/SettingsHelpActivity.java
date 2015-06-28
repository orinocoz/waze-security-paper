// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import com.waze.AppService;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.VideoActivity;
import com.waze.install.InstallNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            DrillDownSettingView

public class SettingsHelpActivity extends ActivityBase
{

    protected ConfigItem editVideoUrl;
    ArrayList mConfigItems;
    private NativeManager mNativeManager;
    protected boolean showGuidedTour;
    protected boolean showHowToEditMap;

    public SettingsHelpActivity()
    {
        showGuidedTour = true;
        showHowToEditMap = true;
        mNativeManager = AppService.getNativeManager();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Log.i("waze", "start settings activity");
        setContentView(0x7f0300ec);
        mConfigItems = new ArrayList();
        mConfigItems.add(new ConfigItem("Help", "How to edit map url", ""));
        mConfigItems.add(new ConfigItem("Help", "Show Guided Tour", ""));
        mConfigItems.add(new ConfigItem("Help", "Show how to edit", ""));
        ConfigManager.getInstance().getConfig(new com.waze.ConfigManager.IConfigUpdater() {

            final SettingsHelpActivity this$0;

            public void updateConfigItems(List list)
            {
label0:
                {
                    if (list.size() > 0)
                    {
                        editVideoUrl = (ConfigItem)list.get(0);
                        if (((ConfigItem)list.get(1)).getValue().equalsIgnoreCase("yes"))
                        {
                            showGuidedTour = true;
                        } else
                        {
                            showGuidedTour = false;
                            ((DrillDownSettingView)findViewById(0x7f090639)).setVisibility(8);
                        }
                        if (!((ConfigItem)list.get(2)).getValue().equalsIgnoreCase("yes"))
                        {
                            break label0;
                        }
                        showHowToEditMap = true;
                    }
                    return;
                }
                showHowToEditMap = false;
                ((DrillDownSettingView)findViewById(0x7f09063a)).setVisibility(8);
            }

            
            {
                this$0 = SettingsHelpActivity.this;
                super();
            }
        }, mConfigItems, "");
        Analytics.log("SETTINGS_CLICK", "VAUE", "HELP");
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_HELP);
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
        ((DrillDownSettingView)findViewById(0x7f09063d)).setText(mNativeManager.getLanguageString(DisplayStrings.DS_ABOUT_AND_NOTICES));
        findViewById(0x7f090639).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsHelpActivity this$0;

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
                this$0 = SettingsHelpActivity.this;
                super();
            }
        });
        findViewById(0x7f09063a).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsHelpActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(SettingsHelpActivity.this, com/waze/ifs/ui/VideoActivity);
                intent.putExtra("url", editVideoUrl.getValue());
                startActivity(intent);
            }

            
            {
                this$0 = SettingsHelpActivity.this;
                super();
            }
        });
        findViewById(0x7f09063b).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsHelpActivity this$0;

            public void onClick(View view)
            {
                ConfigManager.getInstance().helpAskQuestion();
            }

            
            {
                this$0 = SettingsHelpActivity.this;
                super();
            }
        });
        findViewById(0x7f09063c).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsHelpActivity this$0;

            public void onClick(View view)
            {
                ConfigManager.getInstance().sendLogsClick();
            }

            
            {
                this$0 = SettingsHelpActivity.this;
                super();
            }
        });
        findViewById(0x7f09063d).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsHelpActivity this$0;

            public void onClick(View view)
            {
                ConfigManager.getInstance().aboutClick();
            }

            
            {
                this$0 = SettingsHelpActivity.this;
                super();
            }
        });
    }
}
