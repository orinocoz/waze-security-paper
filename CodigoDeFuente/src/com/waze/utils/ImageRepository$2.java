// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.graphics.Bitmap;
import android.widget.ImageView;

// Referenced classes of package com.waze.utils:
//            ImageRepository

class val.urlStr
    implements ageRepositoryListener
{

    final ImageRepository this$0;
    private final ImageView val$toSet;
    private final String val$urlStr;

    public void onImageRetrieved(final Bitmap bitmap)
    {
        while (bitmap == null || val$toSet == null) 
        {
            return;
        }
        val$toSet.post(new Runnable() {

            final ImageRepository._cls2 this$1;
            private final Bitmap val$bitmap;
            private final ImageView val$toSet;
            private final String val$urlStr;

            public void run()
            {
                if (toSet != null && urlStr.equals(toSet.getTag()))
                {
                    toSet.setImageBitmap(bitmap);
                }
            }

            
            {
                this$1 = ImageRepository._cls2.this;
                toSet = imageview;
                urlStr = s;
                bitmap = bitmap1;
                super();
            }
        });
    }

    _cls1.val.bitmap()
    {
        this$0 = final_imagerepository;
        val$toSet = imageview;
        val$urlStr = String.this;
        super();
    }
}
