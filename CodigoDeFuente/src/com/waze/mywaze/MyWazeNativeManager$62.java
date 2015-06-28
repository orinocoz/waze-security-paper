// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import com.waze.mywaze.social.TwitterActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class val.connected
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final boolean val$connected;

    public void run()
    {
        TwitterActivity.refreshStatus(val$connected);
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$connected = Z.this;
        super();
    }
}
