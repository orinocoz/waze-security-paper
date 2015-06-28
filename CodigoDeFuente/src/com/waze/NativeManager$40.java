// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze:
//            NativeManager

class eUICallback extends RunnableUICallback
{

    private int res;
    final NativeManager this$0;
    private final int val$Id;
    private final sultCode val$iRes;
    private final int val$lat;
    private final int val$lon;
    private final int val$steering;

    public void callback()
    {
        if (val$iRes != null)
        {
            val$iRes.onResult(res);
        }
    }

    public void event()
    {
        res = sendBeepBeepNTV(val$lat, val$lon, val$steering, val$Id);
    }

    sultCode()
    {
        this$0 = final_nativemanager;
        val$lat = i;
        val$lon = j;
        val$steering = k;
        val$Id = l;
        val$iRes = sultCode.this;
        super();
    }
}
