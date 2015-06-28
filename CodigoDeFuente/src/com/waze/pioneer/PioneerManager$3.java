// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.pioneer;

import jp.pioneer.ce.aam2.AAM2Kit.AAM2LocationInfo;

// Referenced classes of package com.waze.pioneer:
//            PioneerManager, PioneerNativeManager

class ationInfo
    implements Runnable
{

    final PioneerManager this$0;
    private final AAM2LocationInfo val$arg0;

    public void run()
    {
        com.waze..NativeLocation nativelocation = PioneerManager.access$1(PioneerManager.this, val$arg0);
        PioneerNativeManager.getInstance().LocationCallbackNTV(nativelocation.mGpsTime, nativelocation.mLatitude, nativelocation.mLongtitude, nativelocation.mAltitude, nativelocation.mSpeed, nativelocation.mSteering, nativelocation.mAccuracy);
    }

    ationInfo()
    {
        this$0 = final_pioneermanager;
        val$arg0 = AAM2LocationInfo.this;
        super();
    }
}
