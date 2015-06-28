// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.view.View;
import com.waze.NativeManager;

// Referenced classes of package com.waze.settings:
//            SettingsDialogListener, SettingsGasActivity, SettingsSelectionView, SettingsNativeManager, 
//            SettingsUtils

class this._cls1
    implements SettingsDialogListener
{

    final tPreferredType this$1;

    public void onComplete(int i)
    {
        SettingsGasActivity.access$4(_fld0).setValueText(NativeManager.getInstance().getLanguageString(SettingsGasActivity.access$6(_fld0)[i]));
        SettingsGasActivity.access$3(_fld0).setPreferredType(i);
    }

    l.gasTypeStr()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/settings/SettingsGasActivity$4

/* anonymous class */
    class SettingsGasActivity._cls4
        implements android.view.View.OnClickListener
    {

        final SettingsGasActivity this$0;
        private final String val$gasTypeStr;

        public void onClick(View view)
        {
            SettingsUtils.showSubmenu(SettingsGasActivity.this, gasTypeStr, SettingsGasActivity.access$6(SettingsGasActivity.this), new SettingsGasActivity._cls4._cls1());
        }


            
            {
                this$0 = final_settingsgasactivity;
                gasTypeStr = String.this;
                super();
            }
    }

}
