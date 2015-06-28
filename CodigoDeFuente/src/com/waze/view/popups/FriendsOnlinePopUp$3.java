// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.waze.AppService;

// Referenced classes of package com.waze.view.popups:
//            FriendsOnlinePopUp

class val.friendImageInLayout
    implements com.waze.utils.RepositoryListener
{

    final FriendsOnlinePopUp this$0;
    private final ImageView val$friendImageInLayout;

    public void onImageRetrieved(final Bitmap bitmap)
    {
        AppService.Post(new Runnable() {

            final FriendsOnlinePopUp._cls3 this$1;
            private final Bitmap val$bitmap;
            private final ImageView val$friendImageInLayout;

            public void run()
            {
                friendImageInLayout.setImageBitmap(bitmap);
            }

            
            {
                this$1 = FriendsOnlinePopUp._cls3.this;
                friendImageInLayout = imageview;
                bitmap = bitmap1;
                super();
            }
        });
    }

    _cls1.val.bitmap()
    {
        this$0 = final_friendsonlinepopup;
        val$friendImageInLayout = ImageView.this;
        super();
    }
}
