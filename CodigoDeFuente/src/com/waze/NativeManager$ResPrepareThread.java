// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;

// Referenced classes of package com.waze:
//            ResManager, NativeManager

private static final class  extends Thread
{

    public void run()
    {
        Log.w("WAZE", "Resources prepare thread start");
        ResManager.Prepare();
        Log.w("WAZE", "Resources prepare thread finish");
    }

    private ()
    {
    }
}
