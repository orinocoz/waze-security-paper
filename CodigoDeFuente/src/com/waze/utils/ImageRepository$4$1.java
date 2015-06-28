// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.waze.ifs.ui.ActivityBase;

// Referenced classes of package com.waze.utils:
//            ImageRepository

class val.bitmap
    implements Runnable
{

    final val.bitmap this$1;
    private final Bitmap val$bitmap;
    private final View val$toRemove;
    private final ImageView val$toSet;
    private final String val$urlStr;

    public void run()
    {
        if (val$toSet != null && val$urlStr.equals(val$toSet.getTag()))
        {
            ImageRepository.imageViewAnimatedChange(val$toSet, val$toRemove, val$bitmap);
        }
    }

    l.toRemove()
    {
        this$1 = final_toremove;
        val$toSet = imageview;
        val$urlStr = s;
        val$toRemove = view;
        val$bitmap = Bitmap.this;
        super();
    }

    // Unreferenced inner class com/waze/utils/ImageRepository$4

/* anonymous class */
    class ImageRepository._cls4
        implements ImageRepository.ImageRepositoryListener
    {

        final ImageRepository this$0;
        private final ActivityBase val$ab;
        private final View val$toRemove;
        private final ImageView val$toSet;
        private final String val$urlStr;

        public void onImageRetrieved(Bitmap bitmap1)
        {
            if (bitmap1 == null)
            {
                return;
            } else
            {
                ab.runOnUiThread(bitmap1. new ImageRepository._cls4._cls1());
                return;
            }
        }

            
            {
                this$0 = final_imagerepository;
                ab = activitybase;
                toSet = imageview;
                urlStr = s;
                toRemove = View.this;
                super();
            }
    }

}
