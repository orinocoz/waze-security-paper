// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.bAvoiderPin
    implements Runnable
{

    final NativeManager this$0;
    private final boolean val$bAvoiderPin;
    private final int val$lat;
    private final int val$lon;
    private final int val$radius;

    public void run()
    {
        NativeManager.access$77(NativeManager.this, val$lon, val$lat, val$radius, val$bAvoiderPin);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$lon = i;
        val$lat = j;
        val$radius = k;
        val$bAvoiderPin = Z.this;
        super();
    }
}
