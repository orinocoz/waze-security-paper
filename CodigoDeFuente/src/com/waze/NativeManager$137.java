// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.imageId
    implements Runnable
{

    final NativeManager this$0;
    private final String val$imageId;
    private final String val$venueId;

    public void run()
    {
        NativeManager.access$86(NativeManager.this, val$venueId, val$imageId);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$venueId = s;
        val$imageId = String.this;
        super();
    }
}
