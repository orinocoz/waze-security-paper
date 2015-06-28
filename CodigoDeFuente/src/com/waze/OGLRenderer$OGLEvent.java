// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;

// Referenced classes of package com.waze:
//            NativeManager, NativeCanvas, OGLRenderer

private static final class mEventId
    implements Runnable
{

    final int mEventId;

    public void run()
    {
        NativeCanvas nativecanvas = NativeManager.getNativeCanvas();
        if (mEventId == -1)
        {
            nativecanvas.FlushNTV();
            return;
        }
        if (mEventId == -2)
        {
            Log.w("WAZE DEBUG", "OGL RENDERER DEBUG EVENT");
            NativeManager.Notify(0L);
            return;
        } else
        {
            nativecanvas.OGLEventNTV(mEventId);
            return;
        }
    }

    public (int i)
    {
        mEventId = i;
    }
}
