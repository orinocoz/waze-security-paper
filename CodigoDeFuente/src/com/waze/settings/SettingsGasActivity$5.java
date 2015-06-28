// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.widget.CompoundButton;
import com.waze.NativeManager;

// Referenced classes of package com.waze.settings:
//            SettingsGasActivity

class this._cls0
    implements android.widget.edChangeListener
{

    final SettingsGasActivity this$0;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        NativeManager.getInstance().SetShowGasPricePopupAgain(flag);
    }

    hangeListener()
    {
        this$0 = SettingsGasActivity.this;
        super();
    }
}
