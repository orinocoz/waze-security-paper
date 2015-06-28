// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.pioneer;

import jp.pioneer.mbg.pioneerkit.ExtLocation;

// Referenced classes of package com.waze.pioneer:
//            PioneerManager, PioneerNativeManager

class ion
    implements Runnable
{

    final PioneerManager this$0;
    private final ExtLocation val$loc;

    public void run()
    {
        com.waze..NativeLocation nativelocation = PioneerManager.access$0(PioneerManager.this, val$loc);
        PioneerNativeManager.getInstance().LocationCallbackNTV(nativelocation.mGpsTime, nativelocation.mLatitude, nativelocation.mLongtitude, nativelocation.mAltitude, nativelocation.mSpeed, nativelocation.mSteering, nativelocation.mAccuracy);
    }

    ion()
    {
        this$0 = final_pioneermanager;
        val$loc = ExtLocation.this;
        super();
    }
}
