// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.graphics.Bitmap;

// Referenced classes of package com.waze.utils:
//            ImageRepository

class val.bitmap
    implements Runnable
{

    final val.bitmap this$1;
    private final Bitmap val$bitmap;

    public void run()
    {
        ImageRetrievedCallback(val$bitmap);
    }

    ()
    {
        this$1 = final_;
        val$bitmap = Bitmap.this;
        super();
    }
}
