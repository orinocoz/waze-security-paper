// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.type
    implements Runnable
{

    final NativeManager this$0;
    private final String val$imageId;
    private final int val$type;
    private final String val$venueId;

    public void run()
    {
        NativeManager.access$84(NativeManager.this, val$venueId, val$imageId, val$type);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$venueId = s;
        val$imageId = s1;
        val$type = I.this;
        super();
    }
}
