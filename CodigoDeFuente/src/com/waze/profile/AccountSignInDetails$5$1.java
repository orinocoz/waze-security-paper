// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.graphics.Bitmap;
import android.os.Handler;
import android.widget.ImageView;

// Referenced classes of package com.waze.profile:
//            AccountSignInDetails

class val.drawable
    implements Runnable
{

    final val.drawable this$1;
    private final Bitmap val$drawable;
    private final ImageView val$picture;

    public void run()
    {
        val$picture.setImageBitmap(val$drawable);
    }

    l.picture()
    {
        this$1 = final_picture1;
        val$picture = imageview;
        val$drawable = Bitmap.this;
        super();
    }

    // Unreferenced inner class com/waze/profile/AccountSignInDetails$5

/* anonymous class */
    class AccountSignInDetails._cls5
        implements com.waze.utils.ImageRepository.ImageRepositoryListener
    {

        final AccountSignInDetails this$0;
        private final ImageView val$picture;

        public void onImageRetrieved(Bitmap bitmap)
        {
            AccountSignInDetails.access$4(AccountSignInDetails.this).post(bitmap. new AccountSignInDetails._cls5._cls1());
        }

            
            {
                this$0 = final_accountsignindetails;
                picture = ImageView.this;
                super();
            }
    }

}
