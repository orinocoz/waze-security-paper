// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;

// Referenced classes of package com.waze:
//            AppService, FreeMapAppActivity

class this._cls1
    implements Runnable
{

    final this._cls1 this$1;

    public void run()
    {
        Intent intent = new Intent(AppService.getAppContext(), com/waze/FreeMapAppActivity);
        intent.setAction("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setFlags(0x10000000);
        cess._mth1(this._cls1.this).startActivity(intent);
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
