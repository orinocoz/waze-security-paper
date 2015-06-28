// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.graphics.Bitmap;
import android.widget.ImageView;

// Referenced classes of package com.waze.view.popups:
//            AlertTicker

class val.bitmap
    implements Runnable
{

    final val.bitmap this$1;
    private final ImageView val$UserSmallImg;
    private final Bitmap val$bitmap;

    public void run()
    {
        val$UserSmallImg.setImageBitmap(val$bitmap);
    }

    l.UserSmallImg()
    {
        this$1 = final_usersmallimg;
        val$UserSmallImg = imageview;
        val$bitmap = Bitmap.this;
        super();
    }

    // Unreferenced inner class com/waze/view/popups/AlertTicker$1

/* anonymous class */
    class AlertTicker._cls1
        implements com.waze.utils.ImageRepository.ImageRepositoryListener
    {

        final AlertTicker this$0;
        private final ImageView val$UserSmallImg;

        public void onImageRetrieved(Bitmap bitmap1)
        {
            post(bitmap1. new AlertTicker._cls1._cls1());
        }

            
            {
                this$0 = final_alertticker;
                UserSmallImg = ImageView.this;
                super();
            }
    }

}
