// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.graphics.Bitmap;
import android.widget.ImageView;

// Referenced classes of package com.waze.view.popups:
//            SharePopup

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

    // Unreferenced inner class com/waze/view/popups/SharePopup$3

/* anonymous class */
    class SharePopup._cls3
        implements com.waze.utils.ImageRepository.ImageRepositoryListener
    {

        final SharePopup this$0;
        private final ImageView val$Userimg;

        public void onImageRetrieved(Bitmap bitmap1)
        {
            post(bitmap1. new SharePopup._cls3._cls1());
        }

            
            {
                this$0 = final_sharepopup;
                Userimg = ImageView.this;
                super();
            }
    }

}
