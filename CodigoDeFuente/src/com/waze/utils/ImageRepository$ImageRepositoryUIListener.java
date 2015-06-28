// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.graphics.Bitmap;
import com.waze.AppService;

// Referenced classes of package com.waze.utils:
//            ImageRepository

public static abstract class _cls1.val.bitmap
    implements _cls1.val.bitmap
{

    public final void onImageRetrieved(final Bitmap bitmap)
    {
        AppService.Post(new Runnable() {

            final ImageRepository.ImageRepositoryUIListener this$1;
            private final Bitmap val$bitmap;

            public void run()
            {
                onImageRetrievedCallback(bitmap);
            }

            
            {
                this$1 = ImageRepository.ImageRepositoryUIListener.this;
                bitmap = bitmap1;
                super();
            }
        });
    }

    public abstract void onImageRetrievedCallback(Bitmap bitmap);

    public _cls1.val.bitmap()
    {
    }
}
