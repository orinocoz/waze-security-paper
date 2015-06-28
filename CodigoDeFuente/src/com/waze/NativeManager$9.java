// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.nVersion
    implements Runnable
{

    final NativeManager this$0;
    private final String val$Hash;
    private final long val$ID;
    private final int val$nVersion;

    public void run()
    {
        NativeManager.access$25(NativeManager.this, val$Hash, val$ID, val$nVersion);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$Hash = s;
        val$ID = l;
        val$nVersion = I.this;
        super();
    }
}
