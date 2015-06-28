// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Context;
import android.view.View;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            SettingsUtilsMultipleConfig, SettingsSelectionView, SettingsDialogListener

class val.values
    implements android.view.ig._cls1
{

    private final int val$configIndex[];
    private final List val$configItems;
    private final Context val$context;
    private final String val$langDisplayStr;
    private final String val$options[];
    private final String val$screenName;
    private final SettingsSelectionView val$selectionView;
    private final String val$values[];

    public void onClick(View view)
    {
        String as[] = new String[val$options.length];
        int i = 0;
        String as1[] = val$options;
        int j = as1.length;
        int k = 0;
        do
        {
            if (k >= j)
            {
                SettingsUtilsMultipleConfig.showSubmenu(val$context, val$langDisplayStr, as, new SettingsDialogListener() {

                    final SettingsUtilsMultipleConfig._cls1 this$1;
                    private final int val$configIndex[];
                    private final List val$configItems;
                    private final String val$options[];
                    private final String val$screenName;
                    private final SettingsSelectionView val$selectionView;
                    private final String val$values[];

                    public void onComplete(int l)
                    {
                        if (l != 1)
                        {
                            ConfigItem configitem1 = (ConfigItem)configItems.get(configIndex[1]);
                            configitem1.setValue("no");
                            ConfigManager.getInstance().setConfig(configitem1, screenName);
                        }
                        ConfigItem configitem = (ConfigItem)configItems.get(configIndex[l]);
                        selectionView.setValueText(NativeManager.getInstance().getLanguageString(options[l]));
                        configitem.setValue(values[l]);
                        ConfigManager.getInstance().setConfig(configitem, screenName);
                    }

            
            {
                this$1 = SettingsUtilsMultipleConfig._cls1.this;
                configItems = list;
                configIndex = ai;
                screenName = s;
                selectionView = settingsselectionview;
                options = as;
                values = as1;
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

    _cls1.val.values()
    {
        val$options = as;
        val$context = context1;
        val$langDisplayStr = s;
        val$configItems = list;
        val$configIndex = ai;
        val$screenName = s1;
        val$selectionView = settingsselectionview;
        val$values = as1;
        super();
    }
}
