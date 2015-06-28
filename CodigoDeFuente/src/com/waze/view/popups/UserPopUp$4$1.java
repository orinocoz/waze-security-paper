// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.graphics.Bitmap;
import android.widget.ImageView;

// Referenced classes of package com.waze.view.popups:
//            UserPopUp

class val.bitmap
    implements Runnable
{

    final val.bitmap this$1;
    private final Bitmap val$bitmap;
    private final ImageView val$picture;

    public void run()
    {
        val$picture.setImageBitmap(val$bitmap);
    }

    l.picture()
    {
        this$1 = final_picture1;
        val$picture = imageview;
        val$bitmap = Bitmap.this;
        super();
    }

    // Unreferenced inner class com/waze/view/popups/UserPopUp$4

/* anonymous class */
    class UserPopUp._cls4
        implements com.waze.utils.ImageRepository.ImageRepositoryListener
    {

        final UserPopUp this$0;
        private final ImageView val$picture;

        public void onImageRetrieved(Bitmap bitmap1)
        {
            post(bitmap1. new UserPopUp._cls4._cls1());
        }

            
            {
                this$0 = final_userpopup;
                picture = ImageView.this;
                super();
            }
    }

}
