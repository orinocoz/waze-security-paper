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
//            SettingsDialogListener, SettingsGeneralActivity, SettingsSelectionView, SettingsUtils

class val.radiuses
    implements SettingsDialogListener
{

    final val.radiuses this$1;
    private final String val$displayOptions[];
    private final int val$radiuses[];

    public void onComplete(int i)
    {
        ConfigItem configitem = (ConfigItem)mConfigItems.get(2);
        SettingsGeneralActivity.access$1(_fld0).setValueText(NativeManager.getInstance().getLanguageString(val$displayOptions[i]));
        configitem.setValue((new StringBuilder()).append(val$radiuses[i]).toString());
        ConfigManager.getInstance().setConfig(configitem, "SettingsGeneral");
    }

    l.unitStr()
    {
        this$1 = final_unitstr;
        val$displayOptions = as;
        val$radiuses = _5B_I.this;
        super();
    }

    // Unreferenced inner class com/waze/settings/SettingsGeneralActivity$1

/* anonymous class */
    class SettingsGeneralActivity._cls1
        implements android.view.View.OnClickListener
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
            displayOptions = new String[radiuses.length];
            i = 0;
            ai = radiuses;
            j = ai.length;
            k = 0;
_L2:
            int l;
            if (k >= j)
            {
                SettingsUtils.showSubmenu(SettingsGeneralActivity.this, NativeManager.getInstance().getLanguageString(getString(0x7f07008a)), displayOptions, radiuses. new SettingsGeneralActivity._cls1._cls1());
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
                displayOptions[i] = (new StringBuilder()).append(SettingsGeneralActivity.access$0()[i]).append(" ").append(NativeManager.getInstance().getLanguageString(unitStr)).toString();
            }
              goto _L3
            if (true) goto _L2; else goto _L4
_L4:
        }


            
            {
                this$0 = final_settingsgeneralactivity;
                radiuses = ai;
                unitStr = String.this;
                super();
            }
    }

}
