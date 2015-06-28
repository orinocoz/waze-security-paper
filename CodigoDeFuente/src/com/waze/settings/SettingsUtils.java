// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            DrillDownSettingView, SettingsSelectionView, SettingsCheckboxView, SettingsSwitchView, 
//            SettingsDialogListener, SwitchCheckedCallback

public class SettingsUtils
{

    public SettingsUtils()
    {
    }

    public static void createDrillDownButton(final Activity activity, int i, DisplayStrings displaystrings, final Class activityClass, final int activityCode)
    {
        ((DrillDownSettingView)activity.findViewById(i)).setText(NativeManager.getInstance().getLanguageString(displaystrings));
        activity.findViewById(i).setOnClickListener(new android.view.View.OnClickListener() {

            private final Activity val$activity;
            private final Class val$activityClass;
            private final int val$activityCode;

            public void onClick(View view)
            {
                Intent intent = new Intent(activity, activityClass);
                activity.startActivityForResult(intent, activityCode);
            }

            
            {
                activity = activity1;
                activityClass = class1;
                activityCode = i;
                super();
            }
        });
    }

    public static void createSettingsSelectionView(final Context context, final String screenName, final List configItems, final SettingsSelectionView selectionView, DisplayStrings displaystrings, final String options[], final String values[], final int configIndex)
    {
        final String langDisplayStr = NativeManager.getInstance().getLanguageString(displaystrings);
        selectionView.setKeyText(langDisplayStr);
        selectionView.findViewById(0x7f09062b).setOnClickListener(new android.view.View.OnClickListener() {

            private final int val$configIndex;
            private final List val$configItems;
            private final Context val$context;
            private final String val$langDisplayStr;
            private final String val$options[];
            private final String val$screenName;
            private final SettingsSelectionView val$selectionView;
            private final String val$values[];

            public void onClick(View view)
            {
                String as[] = new String[options.length];
                int i = 0;
                String as1[] = options;
                int j = as1.length;
                int k = 0;
                do
                {
                    if (k >= j)
                    {
                        SettingsUtils.showSubmenu(context, langDisplayStr, as, screenName. new SettingsDialogListener() {

                            final _cls1 this$1;
                            private final int val$configIndex;
                            private final List val$configItems;
                            private final String val$options[];
                            private final String val$screenName;
                            private final SettingsSelectionView val$selectionView;
                            private final String val$values[];

                            public void onComplete(int i)
                            {
                                ConfigItem configitem = (ConfigItem)configItems.get(configIndex);
                                selectionView.setValueText(NativeManager.getInstance().getLanguageString(options[i]));
                                configitem.setValue(values[i]);
                                ConfigManager.getInstance().setConfig(configitem, screenName);
                            }

            
            {
                this$1 = final__pcls1;
                configItems = list;
                configIndex = i;
                selectionView = settingsselectionview;
                options = as;
                values = as1;
                screenName = String.this;
                super();
            }
                        });
                        return;
                    }
                    String s = as1[k];
                    as[i] = NativeManager.getInstance().getLanguageString(s);
                    i++;
                    k++;
                } while (true);
            }

            
            {
                options = as;
                context = context1;
                langDisplayStr = s;
                configItems = list;
                configIndex = i;
                selectionView = settingsselectionview;
                values = as1;
                screenName = s1;
                super();
            }
        });
    }

    public static int findValueIndex(int ai[], int i)
    {
        int j = 0;
_L6:
        if (j < ai.length) goto _L2; else goto _L1
_L1:
        j = 0;
_L4:
        return j;
_L2:
        if (ai[j] == i) goto _L4; else goto _L3
_L3:
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static int findValueIndex(String as[], String s)
    {
        int i = 0;
_L6:
        if (i < as.length) goto _L2; else goto _L1
_L1:
        i = 0;
_L4:
        return i;
_L2:
        if (as[i].equals(s)) goto _L4; else goto _L3
_L3:
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static void setCheckboxCallback(String s, List list, SettingsCheckboxView settingscheckboxview, int i)
    {
        setCheckboxCallback(s, list, settingscheckboxview, i, null);
    }

    public static void setCheckboxCallback(final String screenName, final List configItems, SettingsCheckboxView settingscheckboxview, final int configIndex, final android.widget.CompoundButton.OnCheckedChangeListener customCallback)
    {
        ((CheckBox)settingscheckboxview.findViewById(0x7f090622)).setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            private final int val$configIndex;
            private final List val$configItems;
            private final android.widget.CompoundButton.OnCheckedChangeListener val$customCallback;
            private final String val$screenName;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                ConfigItem configitem = (ConfigItem)configItems.get(configIndex);
                StringBuilder stringbuilder = new StringBuilder();
                String s;
                if (flag)
                {
                    s = "yes";
                } else
                {
                    s = "no";
                }
                configitem.setValue(stringbuilder.append(s).toString());
                ConfigManager.getInstance().setConfig(configitem, screenName);
                if (customCallback != null)
                {
                    customCallback.onCheckedChanged(compoundbutton, flag);
                }
            }

            
            {
                configItems = list;
                configIndex = i;
                screenName = s;
                customCallback = oncheckedchangelistener;
                super();
            }
        });
    }

    public static void setCheckboxLanguageString(SettingsCheckboxView settingscheckboxview, DisplayStrings displaystrings)
    {
        settingscheckboxview.setText(NativeManager.getInstance().getLanguageString(displaystrings));
    }

    public static void setSwitchCallback(String s, List list, SettingsSwitchView settingsswitchview, int i)
    {
        setSwitchCallback(s, list, settingsswitchview, i, null);
    }

    public static void setSwitchCallback(final String screenName, final List configItems, SettingsSwitchView settingsswitchview, final int configIndex, final android.widget.CompoundButton.OnCheckedChangeListener customCallback)
    {
        settingsswitchview.setOnChecked(new SwitchCheckedCallback() {

            private final int val$configIndex;
            private final List val$configItems;
            private final android.widget.CompoundButton.OnCheckedChangeListener val$customCallback;
            private final String val$screenName;

            public void OnCallback(boolean flag)
            {
                ConfigItem configitem = (ConfigItem)configItems.get(configIndex);
                StringBuilder stringbuilder = new StringBuilder();
                String s;
                if (flag)
                {
                    s = "yes";
                } else
                {
                    s = "no";
                }
                configitem.setValue(stringbuilder.append(s).toString());
                ConfigManager.getInstance().setConfig(configitem, screenName);
                if (customCallback != null)
                {
                    customCallback.onCheckedChanged(null, flag);
                }
            }

            
            {
                configItems = list;
                configIndex = i;
                screenName = s;
                customCallback = oncheckedchangelistener;
                super();
            }
        });
    }

    public static void showSubmenu(Context context, String s, String as[], final SettingsDialogListener listener)
    {
        if (as == null)
        {
            return;
        }
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context, 0x7f06000f);
        if (s != null)
        {
            builder.setTitle(s);
        }
        builder.setItems(as, new android.content.DialogInterface.OnClickListener() {

            private final SettingsDialogListener val$listener;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                listener.onComplete(i);
            }

            
            {
                listener = settingsdialoglistener;
                super();
            }
        });
        builder.create().show();
    }
}
