// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.os.HandlerThread;
import android.util.Log;

// Referenced classes of package com.waze:
//            NativeManager

private final class this._cls0 extends HandlerThread
{

    final NativeManager this$0;

    protected void onLooperPrepared()
    {
        Log.w("WAZE", "Native thread is running");
        NativeManager.access$11(NativeManager.this, new er());
        NativeManager.access$12(NativeManager.this);
        NativeManager.access$14(NativeManager.access$13());
        NativeManager.access$15(NativeManager.access$13()).run();
    }

    public er(String s)
    {
        this$0 = NativeManager.this;
        super(s);
    }
}
