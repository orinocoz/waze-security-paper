// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.graphics.Bitmap;
import android.widget.ImageView;

// Referenced classes of package com.waze.view.popups:
//            AlertTicker

class val.UserSmallImg
    implements com.waze.utils.y.ImageRepositoryListener
{

    final AlertTicker this$0;
    private final ImageView val$UserSmallImg;

    public void onImageRetrieved(final Bitmap bitmap)
    {
        post(new Runnable() {

            final AlertTicker._cls1 this$1;
            private final ImageView val$UserSmallImg;
            private final Bitmap val$bitmap;

            public void run()
            {
                UserSmallImg.setImageBitmap(bitmap);
            }

            
            {
                this$1 = AlertTicker._cls1.this;
                UserSmallImg = imageview;
                bitmap = bitmap1;
                super();
            }
        });
    }

    _cls1.val.bitmap()
    {
        this$0 = final_alertticker;
        val$UserSmallImg = ImageView.this;
        super();
    }
}
