// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.graphics.Bitmap;
import android.widget.ImageView;

// Referenced classes of package com.waze.view.popups:
//            PingPopUP

class val.bitmap
    implements Runnable
{

    final val.bitmap this$1;
    private final ImageView val$Userimg;
    private final Bitmap val$bitmap;

    public void run()
    {
        val$Userimg.setImageBitmap(val$bitmap);
    }

    l.Userimg()
    {
        this$1 = final_userimg;
        val$Userimg = imageview;
        val$bitmap = Bitmap.this;
        super();
    }

    // Unreferenced inner class com/waze/view/popups/PingPopUP$5

/* anonymous class */
    class PingPopUP._cls5
        implements com.waze.utils.ImageRepository.ImageRepositoryListener
    {

        final PingPopUP this$0;
        private final ImageView val$Userimg;

        public void onImageRetrieved(Bitmap bitmap1)
        {
            post(bitmap1. new PingPopUP._cls5._cls1());
        }

            
            {
                this$0 = final_pingpopup;
                Userimg = ImageView.this;
                super();
            }
    }

}
