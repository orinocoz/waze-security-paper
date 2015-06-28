// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.waze.AppService;

// Referenced classes of package com.waze.view.popups:
//            FriendsOnlinePopUp

class val.bitmap
    implements Runnable
{

    final val.bitmap this$1;
    private final Bitmap val$bitmap;
    private final ImageView val$friendImageInLayout;

    public void run()
    {
        val$friendImageInLayout.setImageBitmap(val$bitmap);
    }

    l.friendImageInLayout()
    {
        this$1 = final_friendimageinlayout;
        val$friendImageInLayout = imageview;
        val$bitmap = Bitmap.this;
        super();
    }

    // Unreferenced inner class com/waze/view/popups/FriendsOnlinePopUp$3

/* anonymous class */
    class FriendsOnlinePopUp._cls3
        implements com.waze.utils.ImageRepository.ImageRepositoryListener
    {

        final FriendsOnlinePopUp this$0;
        private final ImageView val$friendImageInLayout;

        public void onImageRetrieved(Bitmap bitmap1)
        {
            AppService.Post(bitmap1. new FriendsOnlinePopUp._cls3._cls1());
        }

            
            {
                this$0 = final_friendsonlinepopup;
                friendImageInLayout = ImageView.this;
                super();
            }
    }

}
