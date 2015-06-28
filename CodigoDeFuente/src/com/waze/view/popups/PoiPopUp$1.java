// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import com.waze.AppService;
import com.waze.NativeManager;

// Referenced classes of package com.waze.view.popups:
//            PoiPopUp

class this._cls0
    implements Runnable
{

    final PoiPopUp this$0;

    public void run()
    {
        AppService.getNativeManager().externalPoiClosedNTV(PoiPopUp.access$13(PoiPopUp.this));
    }

    ()
    {
        this$0 = PoiPopUp.this;
        super();
    }
}
