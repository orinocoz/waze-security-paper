// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.graphics.Bitmap;
import android.widget.ImageView;

// Referenced classes of package com.waze.view.popups:
//            SharePopup

class val.Userimg
    implements com.waze.utils.ry.ImageRepositoryListener
{

    final SharePopup this$0;
    private final ImageView val$Userimg;

    public void onImageRetrieved(final Bitmap bitmap)
    {
        post(new Runnable() {

            final SharePopup._cls3 this$1;
            private final ImageView val$Userimg;
            private final Bitmap val$bitmap;

            public void run()
            {
                Userimg.setImageBitmap(bitmap);
            }

            
            {
                this$1 = SharePopup._cls3.this;
                Userimg = imageview;
                bitmap = bitmap1;
                super();
            }
        });
    }

    _cls1.val.bitmap()
    {
        this$0 = final_sharepopup;
        val$Userimg = ImageView.this;
        super();
    }
}
