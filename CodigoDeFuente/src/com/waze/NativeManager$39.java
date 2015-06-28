// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.context
    implements Runnable
{

    final NativeManager this$0;
    private final long val$aCb;
    private final int val$aRes;
    private final long val$context;

    public void run()
    {
        NativeManager.access$56(NativeManager.this, val$aRes, val$aCb, val$context);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$aRes = i;
        val$aCb = l;
        val$context = J.this;
        super();
    }
}
