// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.nType
    implements Runnable
{

    final NativeManager this$0;
    private final int val$hashes[];
    private final int val$nPhonescount;
    private final int val$nType;
    private final Object val$phones[];

    public void run()
    {
        NativeManager.access$48(NativeManager.this, val$phones, val$hashes, val$nPhonescount, val$nType);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$phones = aobj;
        val$hashes = ai;
        val$nPhonescount = i;
        val$nType = I.this;
        super();
    }
}
