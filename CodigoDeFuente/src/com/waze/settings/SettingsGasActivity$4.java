// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.view.View;
import com.waze.NativeManager;

// Referenced classes of package com.waze.settings:
//            SettingsGasActivity, SettingsUtils, SettingsDialogListener, SettingsSelectionView, 
//            SettingsNativeManager

class val.gasTypeStr
    implements android.view.ty._cls4
{

    final SettingsGasActivity this$0;
    private final String val$gasTypeStr;

    public void onClick(View view)
    {
        SettingsUtils.showSubmenu(SettingsGasActivity.this, val$gasTypeStr, SettingsGasActivity.access$6(SettingsGasActivity.this), new SettingsDialogListener() {

            final SettingsGasActivity._cls4 this$1;

            public void onComplete(int i)
            {
                SettingsGasActivity.access$4(this$0).setValueText(NativeManager.getInstance().getLanguageString(SettingsGasActivity.access$6(this$0)[i]));
                SettingsGasActivity.access$3(this$0).setPreferredType(i);
            }

            
            {
                this$1 = SettingsGasActivity._cls4.this;
                super();
            }
        });
    }


    _cls1.this._cls1()
    {
        this$0 = final_settingsgasactivity;
        val$gasTypeStr = String.this;
        super();
    }
}
