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
    private final boolean val$bIsShareWithMap;
    private final boolean val$bToSave;
    private final int val$hashes[];
    private final int val$lat;
    private final int val$lon;
    private final int val$nCount;
    private final int val$nPhonescount;
    private final String val$name;
    private final Object val$phones[];
    private final String val$type;
    private final String val$venueId;
    private final int val$waze_ids[];
    private final Object val$wazes_phones[];

    public void run()
    {
        NativeManager.access$51(NativeManager.this, val$name, val$type, val$lon, val$lat, val$waze_ids, val$phones, val$hashes, val$nCount, val$nPhonescount, val$bIsShareWithMap, val$wazes_phones, val$Street, val$City, val$Country, val$bToSave, val$venueId);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$name = s;
        val$type = s1;
        val$lon = i;
        val$lat = j;
        val$waze_ids = ai;
        val$phones = aobj;
        val$hashes = ai1;
        val$nCount = k;
        val$nPhonescount = l;
        val$bIsShareWithMap = flag;
        val$wazes_phones = aobj1;
        val$Street = s2;
        val$City = s3;
        val$Country = s4;
        val$bToSave = flag1;
        val$venueId = String.this;
        super();
    }
}
