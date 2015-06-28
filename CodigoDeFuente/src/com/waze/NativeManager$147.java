// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, LayoutManager

class val.lon
    implements Runnable
{

    final NativeManager this$0;
    private final int val$iID;
    private final int val$lat;
    private final LayoutManager val$layoutMgr;
    private final int val$lon;
    private final String val$url;

    public void run()
    {
        val$layoutMgr.ShowBonusWebPopup(val$iID, val$url, val$lat, val$lon);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$layoutMgr = layoutmanager;
        val$iID = i;
        val$url = s;
        val$lat = j;
        val$lon = I.this;
        super();
    }
}
