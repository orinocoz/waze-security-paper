// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.view.View;

// Referenced classes of package com.waze.view.popups:
//            EtaUpdatePopUp

class this._cls0
    implements Runnable
{

    final EtaUpdatePopUp this$0;

    public void run()
    {
        findViewById(0x7f090296).requestLayout();
        findViewById(0x7f090296).invalidate();
    }

    ()
    {
        this$0 = EtaUpdatePopUp.this;
        super();
    }
}
