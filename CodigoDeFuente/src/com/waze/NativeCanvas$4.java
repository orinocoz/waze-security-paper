// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeCanvas

class val.aHeight
    implements Runnable
{

    final NativeCanvas this$0;
    private final int val$aHeight;
    private final int val$aWidth;

    public void run()
    {
        if (NativeCanvas.access$3(NativeCanvas.this))
        {
            CanvasDestroyNTV();
        }
        NativeCanvas.access$4(NativeCanvas.this, val$aWidth, val$aHeight);
        NativeCanvas.access$5(NativeCanvas.this);
    }

    ()
    {
        this$0 = final_nativecanvas;
        val$aWidth = i;
        val$aHeight = I.this;
        super();
    }
}
