// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.graphics.Bitmap;
import android.widget.ImageView;

// Referenced classes of package com.waze:
//            OGLRenderer

class 
    implements Runnable
{

    final OGLRenderer this$0;
    private final Bitmap val$b;

    public void run()
    {
        if (toRender != null)
        {
            toRender.setImageBitmap(val$b);
            mOnRenderListener.onRender();
        }
    }

    ()
    {
        this$0 = final_oglrenderer;
        val$b = Bitmap.this;
        super();
    }
}
