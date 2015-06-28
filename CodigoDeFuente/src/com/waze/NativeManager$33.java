// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.venueId
    implements Runnable
{

    final NativeManager this$0;
    private final String val$City;
    private final String val$Country;
    private final String val$Street;
    private final int val$lat;
    private final int val$lon;
    private final String val$name;
    private final String val$type;
    private final String val$venueId;

    public void run()
    {
        NativeManager.access$50(NativeManager.this, val$name, val$type, val$lon, val$lat, val$Street, val$City, val$Country, val$venueId);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$name = s;
        val$type = s1;
        val$lon = i;
        val$lat = j;
        val$Street = s2;
        val$City = s3;
        val$Country = s4;
        val$venueId = String.this;
        super();
    }
}
