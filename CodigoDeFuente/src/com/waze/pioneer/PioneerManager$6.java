// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.pioneer;


// Referenced classes of package com.waze.pioneer:
//            PioneerManager, PioneerNativeManager

class this._cls0
    implements Runnable
{

    final PioneerManager this$0;

    public void run()
    {
        PioneerNativeManager.create();
        PioneerManager.access$2(PioneerManager.this);
    }

    ger()
    {
        this$0 = PioneerManager.this;
        super();
    }
}
