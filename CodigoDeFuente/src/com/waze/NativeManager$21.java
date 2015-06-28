// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.lat
    implements Runnable
{

    final NativeManager this$0;
    private final int val$lat;
    private final int val$lon;

    public void run()
    {
        NativeManager.access$39(NativeManager.this, val$lon, val$lat);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$lon = i;
        val$lat = I.this;
        super();
    }
}
