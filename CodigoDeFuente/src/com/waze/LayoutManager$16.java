// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.os.Handler;
import android.widget.ImageView;

// Referenced classes of package com.waze:
//            LayoutManager

class val.hn
    implements Runnable
{

    final LayoutManager this$0;
    private final int val$ImagesId[];
    private final Handler val$hn;
    private final ImageView val$image;

    public void run()
    {
        if (LayoutManager.access$20(LayoutManager.this) < val$ImagesId.length)
        {
            val$image.setImageResource(val$ImagesId[LayoutManager.access$20(LayoutManager.this)]);
            LayoutManager layoutmanager = LayoutManager.this;
            LayoutManager.access$21(layoutmanager, 1 + LayoutManager.access$20(layoutmanager));
            val$hn.postDelayed(this, 100L);
            return;
        } else
        {
            LayoutManager.access$21(LayoutManager.this, 0);
            return;
        }
    }

    ()
    {
        this$0 = final_layoutmanager;
        val$ImagesId = ai;
        val$image = imageview;
        val$hn = Handler.this;
        super();
    }
}
