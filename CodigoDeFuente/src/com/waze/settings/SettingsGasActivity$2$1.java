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

    final tPreferredStation this$1;

    public void onComplete(int i)
    {
        SettingsGasActivity.access$0(_fld0).setValueText(NativeManager.getInstance().getLanguageString(SettingsGasActivity.access$2(_fld0)[i]));
        SettingsGasActivity.access$3(_fld0).setPreferredStation(i);
    }

    l.preferredStationStr()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/settings/SettingsGasActivity$2

/* anonymous class */
    class SettingsGasActivity._cls2
        implements android.view.View.OnClickListener
    {

        final SettingsGasActivity this$0;
        private final String val$preferredStationStr;

        public void onClick(View view)
        {
            SettingsUtils.showSubmenu(SettingsGasActivity.this, preferredStationStr, SettingsGasActivity.access$2(SettingsGasActivity.this), new SettingsGasActivity._cls2._cls1());
        }


            
            {
                this$0 = final_settingsgasactivity;
                preferredStationStr = String.this;
                super();
            }
    }

}
