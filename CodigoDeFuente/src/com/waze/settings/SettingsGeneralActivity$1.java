// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.view.View;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;
import java.util.ArrayList;

// Referenced classes of package com.waze.settings:
//            SettingsGeneralActivity, SettingsUtils, SettingsDialogListener, SettingsSelectionView

class val.unitStr
    implements android.view.ty._cls1
{

    final SettingsGeneralActivity this$0;
    private final int val$radiuses[];
    private final String val$unitStr;

    public void onClick(View view)
    {
        final String displayOptions[];
        int i;
        int ai[];
        int j;
        int k;
        displayOptions = new String[val$radiuses.length];
        i = 0;
        ai = val$radiuses;
        j = ai.length;
        k = 0;
_L2:
        int l;
        if (k >= j)
        {
            SettingsUtils.showSubmenu(SettingsGeneralActivity.this, NativeManager.getInstance().getLanguageString(getString(0x7f07008a)), displayOptions, new SettingsDialogListener() {

                final SettingsGeneralActivity._cls1 this$1;
                private final String val$displayOptions[];
                private final int val$radiuses[];

                public void onComplete(int i1)
                {
                    ConfigItem configitem = (ConfigItem)mConfigItems.get(2);
                    SettingsGeneralActivity.access$1(this$0).setValueText(NativeManager.getInstance().getLanguageString(displayOptions[i1]));
                    configitem.setValue((new StringBuilder()).append(radiuses[i1]).toString());
                    ConfigManager.getInstance().setConfig(configitem, "SettingsGeneral");
                }

            
            {
                this$1 = SettingsGeneralActivity._cls1.this;
                displayOptions = as;
                radiuses = ai;
                super();
            }
            });
            return;
        }
        l = ai[k];
        if (l != -1)
        {
            break; /* Loop/switch isn't completed */
        }
        displayOptions[i] = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ALL);
_L3:
        i++;
        k++;
        if (true) goto _L2; else goto _L1
_L1:
        if (l == -2)
        {
            displayOptions[i] = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ON_ROUTE_ONLY);
        } else
        {
            displayOptions[i] = (new StringBuilder()).append(SettingsGeneralActivity.access$0()[i]).append(" ").append(NativeManager.getInstance().getLanguageString(val$unitStr)).toString();
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }


    _cls1.val.radiuses()
    {
        this$0 = final_settingsgeneralactivity;
        val$radiuses = ai;
        val$unitStr = String.this;
        super();
    }
}
