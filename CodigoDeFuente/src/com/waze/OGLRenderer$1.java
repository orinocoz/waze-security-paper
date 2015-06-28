// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            OGLRenderer, MapView

class 
    implements Runnable
{

    final OGLRenderer this$0;
    private final int val$height;
    private final int val$width;

    public void run()
    {
        OGLRenderer.access$0(OGLRenderer.this).surfaceChangedCompleted(val$width, val$height);
    }

    ()
    {
        this$0 = final_oglrenderer;
        val$width = i;
        val$height = I.this;
        super();
    }
}
