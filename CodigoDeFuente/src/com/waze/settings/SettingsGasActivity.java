// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.os.Bundle;
import android.view.View;
import android.widget.CompoundButton;
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
//            SettingsSelectionView, SettingsUtils, SettingsNativeManager, SettingsCheckboxView, 
//            SettingsValue, SettingsDialogListener

public class SettingsGasActivity extends ActivityBase
    implements com.waze.ConfigManager.IConfigUpdater
{

    private static final int SORT_BY_INDEX;
    private static final String SORT_BY_OPTIONS[] = {
        "Price", "Distance", "Brand"
    };
    private static final String SORT_BY_VALUES[] = {
        "0", "1", "2"
    };
    private SettingsCheckboxView GasPopUpVisibilty;
    private SettingsSelectionView gasSortBy;
    private List mConfigItems;
    private SettingsSelectionView preferredGasStations;
    private SettingsSelectionView preferredGasType;
    private final String screenName = "SettingsGas";
    private SettingsNativeManager settingsNativeManager;
    private String stationStrings[];
    private String typeStrings[];

    public SettingsGasActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mConfigItems = new ArrayList();
        mConfigItems.add(new ConfigItem("Provider Search", "Gas stations sort", ""));
        ConfigManager.getInstance().getConfig(this, mConfigItems, "SettingsGas");
        Analytics.log("SETTINGS_CLICK", "VAUE", "GAS_STATIONS");
        final NativeManager mgr = NativeManager.getInstance();
        setContentView(0x7f0300e9);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_GAS_STATIONS);
        gasSortBy = (SettingsSelectionView)findViewById(0x7f090631);
        DisplayStrings displaystrings = DisplayStrings.DS_SORT_BY;
        SettingsUtils.createSettingsSelectionView(this, "SettingsGas", mConfigItems, gasSortBy, displaystrings, SORT_BY_OPTIONS, SORT_BY_VALUES, 0);
        preferredGasType = (SettingsSelectionView)findViewById(0x7f090630);
        final String gasTypeStr = mgr.getLanguageString(DisplayStrings.DS_PREFERRED_GAS_TYPE);
        preferredGasType.setKeyText(gasTypeStr);
        preferredGasStations = (SettingsSelectionView)findViewById(0x7f09062f);
        final String preferredStationStr = mgr.getLanguageString(DisplayStrings.DS_PREFERRED_STATION);
        preferredGasStations.setKeyText(preferredStationStr);
        settingsNativeManager = new SettingsNativeManager();
        settingsNativeManager.getPreferredGasStations(new SettingsNativeManager.SettingsValuesListener() {

            final SettingsGasActivity this$0;
            private final NativeManager val$mgr;

            public void onComplete(SettingsValue asettingsvalue[])
            {
                boolean flag1 = false;
                ArrayList arraylist = new ArrayList();
                arraylist.add(mgr.getLanguageString(DisplayStrings.DS_ALL_STATIONS));
                int i = asettingsvalue.length;
                int j = 0;
                do
                {
                    if (j >= i)
                    {
                        stationStrings = (String[])arraylist.toArray(new String[arraylist.size()]);
                        if (!flag1)
                        {
                            preferredGasStations.setValueText(mgr.getLanguageString(DisplayStrings.DS_ALL_STATIONS));
                        }
                        return;
                    }
                    SettingsValue settingsvalue = asettingsvalue[j];
                    arraylist.add(settingsvalue.value);
                    if (settingsvalue.isSelected)
                    {
                        preferredGasStations.setValueText(settingsvalue.value);
                        flag1 = true;
                    }
                    j++;
                } while (true);
            }

            
            {
                this$0 = SettingsGasActivity.this;
                mgr = nativemanager;
                super();
            }
        });
        preferredGasStations.findViewById(0x7f09062b).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsGasActivity this$0;
            private final String val$preferredStationStr;

            public void onClick(View view)
            {
                SettingsUtils.showSubmenu(SettingsGasActivity.this, preferredStationStr, stationStrings, new SettingsDialogListener() {

                    final _cls2 this$1;

                    public void onComplete(int i)
                    {
                        preferredGasStations.setValueText(NativeManager.getInstance().getLanguageString(stationStrings[i]));
                        settingsNativeManager.setPreferredStation(i);
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                });
            }


            
            {
                this$0 = SettingsGasActivity.this;
                preferredStationStr = s;
                super();
            }
        });
        settingsNativeManager.getPreferredGasType(new SettingsNativeManager.SettingsValuesListener() {

            final SettingsGasActivity this$0;

            public void onComplete(SettingsValue asettingsvalue[])
            {
                ArrayList arraylist = new ArrayList();
                int i = asettingsvalue.length;
                int j = 0;
                do
                {
                    if (j >= i)
                    {
                        typeStrings = (String[])arraylist.toArray(new String[arraylist.size()]);
                        return;
                    }
                    SettingsValue settingsvalue = asettingsvalue[j];
                    arraylist.add(settingsvalue.value);
                    if (settingsvalue.isSelected)
                    {
                        preferredGasType.setValueText(settingsvalue.value);
                    }
                    j++;
                } while (true);
            }

            
            {
                this$0 = SettingsGasActivity.this;
                super();
            }
        });
        preferredGasType.findViewById(0x7f09062b).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsGasActivity this$0;
            private final String val$gasTypeStr;

            public void onClick(View view)
            {
                SettingsUtils.showSubmenu(SettingsGasActivity.this, gasTypeStr, typeStrings, new SettingsDialogListener() {

                    final _cls4 this$1;

                    public void onComplete(int i)
                    {
                        preferredGasType.setValueText(NativeManager.getInstance().getLanguageString(typeStrings[i]));
                        settingsNativeManager.setPreferredType(i);
                    }

            
            {
                this$1 = _cls4.this;
                super();
            }
                });
            }


            
            {
                this$0 = SettingsGasActivity.this;
                gasTypeStr = s;
                super();
            }
        });
        GasPopUpVisibilty = (SettingsCheckboxView)findViewById(0x7f090632);
        boolean flag;
        if (!NativeManager.getInstance().IsGasPopUpFeatureEnabled())
        {
            GasPopUpVisibilty.setVisibility(8);
        } else
        {
            GasPopUpVisibilty.setVisibility(0);
        }
        flag = NativeManager.getInstance().getGasPopupVisibilty();
        GasPopUpVisibilty.setValue(flag);
        GasPopUpVisibilty.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_AUTO_SUGGEST_GAS_UPDATE));
        GasPopUpVisibilty.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final SettingsGasActivity this$0;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag1)
            {
                NativeManager.getInstance().SetShowGasPricePopupAgain(flag1);
            }

            
            {
                this$0 = SettingsGasActivity.this;
                super();
            }
        });
    }

    public void updateConfigItems(List list)
    {
        NativeManager nativemanager = NativeManager.getInstance();
        String s = ((ConfigItem)list.get(0)).getValue();
        int i = SettingsUtils.findValueIndex(SORT_BY_VALUES, s);
        String s1 = nativemanager.getLanguageString(SORT_BY_OPTIONS[i]);
        gasSortBy.setValueText(s1);
    }








}
