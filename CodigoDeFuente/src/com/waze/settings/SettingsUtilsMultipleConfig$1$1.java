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
//            SettingsDialogListener, SettingsSelectionView, SettingsUtilsMultipleConfig

class val.values
    implements SettingsDialogListener
{

    final val.screenName this$1;
    private final int val$configIndex[];
    private final List val$configItems;
    private final String val$options[];
    private final String val$screenName;
    private final SettingsSelectionView val$selectionView;
    private final String val$values[];

    public void onComplete(int i)
    {
        if (i != 1)
        {
            ConfigItem configitem1 = (ConfigItem)val$configItems.get(val$configIndex[1]);
            configitem1.setValue("no");
            ConfigManager.getInstance().setConfig(configitem1, val$screenName);
        }
        ConfigItem configitem = (ConfigItem)val$configItems.get(val$configIndex[i]);
        val$selectionView.setValueText(NativeManager.getInstance().getLanguageString(val$options[i]));
        configitem.setValue(val$values[i]);
        ConfigManager.getInstance().setConfig(configitem, val$screenName);
    }

    l.values()
    {
        this$1 = final_values1;
        val$configItems = list;
        val$configIndex = ai;
        val$screenName = s;
        val$selectionView = settingsselectionview;
        val$options = as;
        val$values = _5B_Ljava.lang.String_3B_.this;
        super();
    }

    // Unreferenced inner class com/waze/settings/SettingsUtilsMultipleConfig$1

/* anonymous class */
    class SettingsUtilsMultipleConfig._cls1
        implements android.view.View.OnClickListener
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
            String as[] = new String[options.length];
            int i = 0;
            String as1[] = options;
            int j = as1.length;
            int k = 0;
            do
            {
                if (k >= j)
                {
                    SettingsUtilsMultipleConfig.showSubmenu(context, langDisplayStr, as, values. new SettingsUtilsMultipleConfig._cls1._cls1());
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
                configIndex = ai;
                screenName = s1;
                selectionView = settingsselectionview;
                values = as1;
                super();
            }
    }

}
