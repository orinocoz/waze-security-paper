// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, LayoutManager

class val.VenueContext
    implements Runnable
{

    final NativeManager this$0;
    private final String val$Address;
    private final int val$Height;
    private final int val$ServerID;
    private final String val$VenueContext;
    private final String val$VenueId;
    private final int val$iID;
    private final String val$inforUrl;
    private final boolean val$isNavigable;
    private final int val$lat;
    private final LayoutManager val$layoutMgr;
    private final int val$lon;
    private final String val$popupUrl;
    private final String val$promotionUrl;
    private final int val$seconds;
    private final int val$x;
    private final int val$y;

    public void run()
    {
        val$layoutMgr.openPoi(val$iID, val$popupUrl, val$inforUrl, val$promotionUrl, val$x, val$y, val$lat, val$lon, val$seconds, val$isNavigable, val$Address, val$Height, val$ServerID, val$VenueId, val$VenueContext);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$layoutMgr = layoutmanager;
        val$iID = i;
        val$popupUrl = s;
        val$inforUrl = s1;
        val$promotionUrl = s2;
        val$x = j;
        val$y = k;
        val$lat = l;
        val$lon = i1;
        val$seconds = j1;
        val$isNavigable = flag;
        val$Address = s3;
        val$Height = k1;
        val$ServerID = l1;
        val$VenueId = s4;
        val$VenueContext = String.this;
        super();
    }
}
