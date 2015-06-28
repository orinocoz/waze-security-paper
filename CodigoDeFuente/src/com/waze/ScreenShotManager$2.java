// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.graphics.Bitmap;
import android.view.View;

// Referenced classes of package com.waze:
//            ScreenShotManager

class val.bmp
    implements Runnable
{

    final ScreenShotManager this$0;
    private final Bitmap val$bmp;
    private final View val$view;

    public void run()
    {
        val$view.setVisibility(8);
        val$bmp.recycle();
    }

    ()
    {
        this$0 = final_screenshotmanager;
        val$view = view1;
        val$bmp = Bitmap.this;
        super();
    }
}
