// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.graphics.Bitmap;
import android.widget.ImageView;

// Referenced classes of package com.waze.view.popups:
//            UserPopUp

class val.picture
    implements com.waze.utils.ory.ImageRepositoryListener
{

    final UserPopUp this$0;
    private final ImageView val$picture;

    public void onImageRetrieved(final Bitmap bitmap)
    {
        post(new Runnable() {

            final UserPopUp._cls4 this$1;
            private final Bitmap val$bitmap;
            private final ImageView val$picture;

            public void run()
            {
                picture.setImageBitmap(bitmap);
            }

            
            {
                this$1 = UserPopUp._cls4.this;
                picture = imageview;
                bitmap = bitmap1;
                super();
            }
        });
    }

    _cls1.val.bitmap()
    {
        this$0 = final_userpopup;
        val$picture = ImageView.this;
        super();
    }
}
