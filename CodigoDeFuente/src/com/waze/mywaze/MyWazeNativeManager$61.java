// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import com.waze.mywaze.social.FoursquareActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class val.connected
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final boolean val$connected;

    public void run()
    {
        FoursquareActivity.refreshStatus(val$connected);
    }

    ty()
    {
        this$0 = final_mywazenativemanager;
        val$connected = Z.this;
        super();
    }
}
