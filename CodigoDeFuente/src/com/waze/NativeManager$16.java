// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.Region
    implements Runnable
{

    final NativeManager this$0;
    private final String val$Hash;
    private final String val$Region;
    private final int val$nType;
    private final String val$sPhone;

    public void run()
    {
        NativeManager.access$32(NativeManager.this, val$sPhone, val$Hash, val$nType, val$Region, NativeManager.mInviteId);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$sPhone = s;
        val$Hash = s1;
        val$nType = i;
        val$Region = String.this;
        super();
    }
}
