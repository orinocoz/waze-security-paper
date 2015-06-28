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
//            SettingsDialogListener, SettingsSelectionView, SettingsUtils

class val.screenName
    implements SettingsDialogListener
{

    final val.screenName this$1;
    private final int val$configIndex;
    private final List val$configItems;
    private final String val$options[];
    private final String val$screenName;
    private final SettingsSelectionView val$selectionView;
    private final String val$values[];

    public void onComplete(int i)
    {
        ConfigItem configitem = (ConfigItem)val$configItems.get(val$configIndex);
        val$selectionView.setValueText(NativeManager.getInstance().getLanguageString(val$options[i]));
        configitem.setValue(val$values[i]);
        ConfigManager.getInstance().setConfig(configitem, val$screenName);
    }

    iew()
    {
        this$1 = final_iew;
        val$configItems = list;
        val$configIndex = i;
        val$selectionView = settingsselectionview;
        val$options = as;
        val$values = as1;
        val$screenName = String.this;
        super();
    }

    // Unreferenced inner class com/waze/settings/SettingsUtils$1

/* anonymous class */
    class SettingsUtils._cls1
        implements android.view.View.OnClickListener
    {

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
                    SettingsUtils.showSubmenu(context, langDisplayStr, as, screenName. new SettingsUtils._cls1._cls1());
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
    }

}
