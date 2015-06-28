// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

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
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            SettingsSelectionView, SettingsUtils, SettingsSwitchView, SettingsNativeManager, 
//            SettingsDialogListener, SettingsLanguageActivity, SettingsValue

public class SettingsGeneralActivity extends ActivityBase
    implements com.waze.ConfigManager.IConfigUpdater
{

    private static final int KEEP_BACK_LIGHT_INDEX = 1;
    private static final int RADIUS_INDEX = 2;
    private static final int RADIUS_VALUES_KM[] = {
        -2, 5, 25, 50, 100, 200, -1
    };
    private static final int RADIUS_VALUES_MILES[] = {
        -2, 8, 40, 80, 160, 320, -1
    };
    private static final int RETURN_TO_CALL_INDEX = 3;
    private static final int UNIT_INDEX;
    private static final String UNIT_OPTIONS[] = {
        "Mile", "Km"
    };
    private static final String UNIT_VALUES[] = {
        "imperial", "metric"
    };
    static boolean firstCreate = true;
    private SettingsSwitchView keepBackLightView;
    private SettingsSelectionView languageView;
    ArrayList mConfigItems;
    private NativeManager mNativeManager;
    private SettingsNativeManager nativeManager;
    private SettingsSelectionView radiusView;
    private SettingsSwitchView returnToWazeView;
    final String screenName = "SettingsGeneral";
    private SettingsSelectionView unitView;

    public SettingsGeneralActivity()
    {
        mNativeManager = AppService.getNativeManager();
    }

    private void setString(int i, int j)
    {
        ((TextView)findViewById(i)).setText(mNativeManager.getLanguageString(getString(j)));
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
        setContentView(0x7f0300ea);
        mConfigItems = new ArrayList();
        mConfigItems.add(new ConfigItem("General", "User Unit V2", ""));
        mConfigItems.add(new ConfigItem("Display", "BackLight", ""));
        mConfigItems.add(new ConfigItem("Events", "Radius", ""));
        mConfigItems.add(new ConfigItem("Display", "ReturnFromPhoneCall", ""));
        ConfigManager.getInstance().getConfig(this, mConfigItems, "SettingsGeneral");
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_GENERAL);
        Analytics.log("SETTINGS_CLICK", "VAUE", "GENERAL");
        unitView = (SettingsSelectionView)findViewById(0x7f090201);
        DisplayStrings displaystrings = DisplayStrings.DS_UNIT;
        SettingsUtils.createSettingsSelectionView(this, "SettingsGeneral", mConfigItems, unitView, displaystrings, UNIT_OPTIONS, UNIT_VALUES, 0);
        keepBackLightView = (SettingsSwitchView)findViewById(0x7f090634);
        DisplayStrings displaystrings1 = DisplayStrings.DS_KEEP_BACK_LIGHT_ON;
        String s = NativeManager.getInstance().getLanguageString(displaystrings1);
        keepBackLightView.setText(s);
        returnToWazeView = (SettingsSwitchView)findViewById(0x7f090635);
        ((TextView)findViewById(0x7f090636)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_TAKES_YOU_BACK_TO_WAZE));
        DisplayStrings displaystrings2 = DisplayStrings.DS_KEEP_WAZE_ON_TOP;
        String s1 = NativeManager.getInstance().getLanguageString(displaystrings2);
        returnToWazeView.setText(s1);
        languageView = (SettingsSelectionView)findViewById(0x7f0901ff);
        languageView.setKeyText(mNativeManager.getLanguageString(DisplayStrings.DS_LANGUAGE));
        radiusView = (SettingsSelectionView)findViewById(0x7f090633);
        String s2 = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_EVENTS_RADIUS);
        radiusView.setKeyText(s2);
        findViewById(0x7f0901ff).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsGeneralActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(SettingsGeneralActivity.this, com/waze/settings/SettingsLanguageActivity);
                startActivityForResult(intent, 0);
            }

            
            {
                this$0 = SettingsGeneralActivity.this;
                super();
            }
        });
        nativeManager = new SettingsNativeManager();
        nativeManager.getLanguages(new SettingsNativeManager.SettingsValuesListener() {

            final SettingsGeneralActivity this$0;

            public void onComplete(SettingsValue asettingsvalue[])
            {
                int i = asettingsvalue.length;
                int j = 0;
                do
                {
                    if (j >= i)
                    {
                        return;
                    }
                    SettingsValue settingsvalue = asettingsvalue[j];
                    if (settingsvalue.isSelected)
                    {
                        languageView.setValueText(settingsvalue.display);
                        return;
                    }
                    j++;
                } while (true);
            }

            
            {
                this$0 = SettingsGeneralActivity.this;
                super();
            }
        });
    }

    protected void onResume()
    {
        super.onResume();
    }

    public void updateConfigItems(List list)
    {
        String s = ((ConfigItem)list.get(0)).getValue();
        int i = SettingsUtils.findValueIndex(UNIT_VALUES, s);
        final String unitStr = mNativeManager.getLanguageString(UNIT_OPTIONS[i]);
        unitView.setValueText(unitStr);
        keepBackLightView.setValue(((ConfigItem)list.get(1)).getValue().equalsIgnoreCase("yes"));
        returnToWazeView.setValue(((ConfigItem)list.get(3)).getValue().equalsIgnoreCase("yes"));
        SettingsUtils.setSwitchCallback("SettingsGeneral", mConfigItems, keepBackLightView, 1);
        SettingsUtils.setSwitchCallback("SettingsGeneral", mConfigItems, returnToWazeView, 3);
        int ai[] = RADIUS_VALUES_KM;
        if (s.equals("imperial"))
        {
            ai = RADIUS_VALUES_MILES;
        }
        final int radiuses[] = ai;
        String s1 = ((ConfigItem)list.get(2)).getValue();
        if (s1 != null && s1.length() != 0)
        {
            String s2;
            if (s1.equals("-1"))
            {
                s2 = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ALL);
            } else
            if (s1.equals("-2"))
            {
                s2 = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ON_ROUTE_ONLY);
            } else
            {
label0:
                {
                    int j = Integer.valueOf(s1).intValue();
                    if (s.equals("imperial"))
                    {
                        for (int k = 0; k < 6 && RADIUS_VALUES_MILES[k] != j; k++)
                        {
                            break label0;
                        }

                        if (k < 6)
                        {
                            j = RADIUS_VALUES_KM[k];
                        } else
                        {
                            j = Integer.valueOf(s1).intValue();
                        }
                    }
                    s2 = (new StringBuilder(String.valueOf(j))).append(" ").append(unitStr).toString();
                }
            }
            radiusView.setValueText(s2);
            radiusView.findViewById(0x7f09062b).setOnClickListener(new android.view.View.OnClickListener() {

                final SettingsGeneralActivity this$0;
                private final int val$radiuses[];
                private final String val$unitStr;

                public void onClick(View view)
                {
                    final String displayOptions[];
                    int l;
                    int ai1[];
                    int i1;
                    int j1;
                    displayOptions = new String[radiuses.length];
                    l = 0;
                    ai1 = radiuses;
                    i1 = ai1.length;
                    j1 = 0;
_L2:
                    int k1;
                    if (j1 >= i1)
                    {
                        SettingsUtils.showSubmenu(SettingsGeneralActivity.this, NativeManager.getInstance().getLanguageString(getString(0x7f07008a)), displayOptions, radiuses. new SettingsDialogListener() {

                            final _cls1 this$1;
                            private final String val$displayOptions[];
                            private final int val$radiuses[];

                            public void onComplete(int i)
                            {
                                ConfigItem configitem = (ConfigItem)mConfigItems.get(2);
                                radiusView.setValueText(NativeManager.getInstance().getLanguageString(displayOptions[i]));
                                configitem.setValue((new StringBuilder()).append(radiuses[i]).toString());
                                ConfigManager.getInstance().setConfig(configitem, "SettingsGeneral");
                            }

            
            {
                this$1 = final__pcls1;
                displayOptions = as;
                radiuses = _5B_I.this;
                super();
            }
                        });
                        return;
                    }
                    k1 = ai1[j1];
                    if (k1 != -1)
                    {
                        break; /* Loop/switch isn't completed */
                    }
                    displayOptions[l] = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ALL);
_L3:
                    l++;
                    j1++;
                    if (true) goto _L2; else goto _L1
_L1:
                    if (k1 == -2)
                    {
                        displayOptions[l] = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ON_ROUTE_ONLY);
                    } else
                    {
                        displayOptions[l] = (new StringBuilder()).append(SettingsGeneralActivity.RADIUS_VALUES_KM[l]).append(" ").append(NativeManager.getInstance().getLanguageString(unitStr)).toString();
                    }
                      goto _L3
                    if (true) goto _L2; else goto _L4
_L4:
                }


            
            {
                this$0 = SettingsGeneralActivity.this;
                radiuses = ai;
                unitStr = s;
                super();
            }
            });
        }
    }




}
