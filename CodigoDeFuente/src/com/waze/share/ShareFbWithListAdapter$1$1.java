// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.waze.AppService;

// Referenced classes of package com.waze.share:
//            ShareFbWithListAdapter

class val.bitmap
    implements Runnable
{

    final val.bitmap this$1;
    private final Bitmap val$bitmap;
    private final ImageView val$imageView;

    public void run()
    {
        val$imageView.setImageBitmap(val$bitmap);
    }

    l.imageView()
    {
        this$1 = final_imageview;
        val$imageView = imageview1;
        val$bitmap = Bitmap.this;
        super();
    }

    // Unreferenced inner class com/waze/share/ShareFbWithListAdapter$1

/* anonymous class */
    class ShareFbWithListAdapter._cls1
        implements com.waze.utils.ImageRepository.ImageRepositoryListener
    {

        private final ImageView val$imageView;

        public void onImageRetrieved(Bitmap bitmap1)
        {
            AppService.Post(bitmap1. new ShareFbWithListAdapter._cls1._cls1());
        }

            
            {
                imageView = imageview;
                super();
            }
    }

}
