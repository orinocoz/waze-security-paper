// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.waze.AppService;

// Referenced classes of package com.waze.share:
//            ShareFbWithListAdapter

class val.imageView
    implements com.waze.utils.sitoryListener
{

    private final ImageView val$imageView;

    public void onImageRetrieved(final Bitmap bitmap)
    {
        AppService.Post(new Runnable() {

            final ShareFbWithListAdapter._cls1 this$1;
            private final Bitmap val$bitmap;
            private final ImageView val$imageView;

            public void run()
            {
                imageView.setImageBitmap(bitmap);
            }

            
            {
                this$1 = ShareFbWithListAdapter._cls1.this;
                imageView = imageview;
                bitmap = bitmap1;
                super();
            }
        });
    }

    _cls1.val.bitmap()
    {
        val$imageView = imageview;
        super();
    }
}
