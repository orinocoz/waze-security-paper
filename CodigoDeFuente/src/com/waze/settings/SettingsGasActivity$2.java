// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.view.View;
import com.waze.NativeManager;

// Referenced classes of package com.waze.settings:
//            SettingsGasActivity, SettingsUtils, SettingsDialogListener, SettingsSelectionView, 
//            SettingsNativeManager

class val.preferredStationStr
    implements android.view.ty._cls2
{

    final SettingsGasActivity this$0;
    private final String val$preferredStationStr;

    public void onClick(View view)
    {
        SettingsUtils.showSubmenu(SettingsGasActivity.this, val$preferredStationStr, SettingsGasActivity.access$2(SettingsGasActivity.this), new SettingsDialogListener() {

            final SettingsGasActivity._cls2 this$1;

            public void onComplete(int i)
            {
                SettingsGasActivity.access$0(this$0).setValueText(NativeManager.getInstance().getLanguageString(SettingsGasActivity.access$2(this$0)[i]));
                SettingsGasActivity.access$3(this$0).setPreferredStation(i);
            }

            
            {
                this$1 = SettingsGasActivity._cls2.this;
                super();
            }
        });
    }


    _cls1.this._cls1()
    {
        this$0 = final_settingsgasactivity;
        val$preferredStationStr = String.this;
        super();
    }
}
