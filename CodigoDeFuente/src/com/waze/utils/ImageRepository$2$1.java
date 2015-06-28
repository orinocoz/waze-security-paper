// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.graphics.Bitmap;
import android.widget.ImageView;

// Referenced classes of package com.waze.utils:
//            ImageRepository

class val.bitmap
    implements Runnable
{

    final val.bitmap this$1;
    private final Bitmap val$bitmap;
    private final ImageView val$toSet;
    private final String val$urlStr;

    public void run()
    {
        if (val$toSet != null && val$urlStr.equals(val$toSet.getTag()))
        {
            val$toSet.setImageBitmap(val$bitmap);
        }
    }

    l.urlStr()
    {
        this$1 = final_urlstr;
        val$toSet = imageview;
        val$urlStr = s;
        val$bitmap = Bitmap.this;
        super();
    }

    // Unreferenced inner class com/waze/utils/ImageRepository$2

/* anonymous class */
    class ImageRepository._cls2
        implements ImageRepository.ImageRepositoryListener
    {

        final ImageRepository this$0;
        private final ImageView val$toSet;
        private final String val$urlStr;

        public void onImageRetrieved(Bitmap bitmap1)
        {
            while (bitmap1 == null || toSet == null) 
            {
                return;
            }
            toSet.post(bitmap1. new ImageRepository._cls2._cls1());
        }

            
            {
                this$0 = final_imagerepository;
                toSet = imageview;
                urlStr = String.this;
                super();
            }
    }

}
