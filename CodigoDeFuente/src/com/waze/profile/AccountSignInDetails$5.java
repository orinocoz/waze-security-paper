// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.graphics.Bitmap;
import android.os.Handler;
import android.widget.ImageView;

// Referenced classes of package com.waze.profile:
//            AccountSignInDetails

class val.picture
    implements com.waze.utils.positoryListener
{

    final AccountSignInDetails this$0;
    private final ImageView val$picture;

    public void onImageRetrieved(final Bitmap drawable)
    {
        AccountSignInDetails.access$4(AccountSignInDetails.this).post(new Runnable() {

            final AccountSignInDetails._cls5 this$1;
            private final Bitmap val$drawable;
            private final ImageView val$picture;

            public void run()
            {
                picture.setImageBitmap(drawable);
            }

            
            {
                this$1 = AccountSignInDetails._cls5.this;
                picture = imageview;
                drawable = bitmap;
                super();
            }
        });
    }

    _cls1.val.drawable()
    {
        this$0 = final_accountsignindetails;
        val$picture = ImageView.this;
        super();
    }
}
