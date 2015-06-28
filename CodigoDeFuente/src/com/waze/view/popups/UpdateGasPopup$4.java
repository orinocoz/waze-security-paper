// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.widget.CompoundButton;
import com.waze.NativeManager;

// Referenced classes of package com.waze.view.popups:
//            UpdateGasPopup

class this._cls0
    implements android.widget.CheckedChangeListener
{

    final UpdateGasPopup this$0;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        NativeManager nativemanager = NativeManager.getInstance();
        boolean flag1;
        if (flag)
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        nativemanager.SetShowGasPricePopupAgain(flag1);
    }

    dChangeListener()
    {
        this$0 = UpdateGasPopup.this;
        super();
    }
}
