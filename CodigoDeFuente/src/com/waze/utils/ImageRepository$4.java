// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.waze.ifs.ui.ActivityBase;

// Referenced classes of package com.waze.utils:
//            ImageRepository

class val.toRemove
    implements ageRepositoryListener
{

    final ImageRepository this$0;
    private final ActivityBase val$ab;
    private final View val$toRemove;
    private final ImageView val$toSet;
    private final String val$urlStr;


// JavaClassFileOutputException: Stack underflow

    _cls1.val.bitmap()
    {
        this$0 = final_imagerepository;
        val$ab = activitybase;
        val$toSet = imageview;
        val$urlStr = s;
        val$toRemove = View.this;
        super();
    }

    // Unreferenced inner class com/waze/utils/ImageRepository$4$1

/* anonymous class */
    class _cls1
        implements Runnable
    {

        final ImageRepository._cls4 this$1;
        private final Bitmap val$bitmap;
        private final View val$toRemove;
        private final ImageView val$toSet;
        private final String val$urlStr;

        public void run()
        {
            if (toSet != null && urlStr.equals(toSet.getTag()))
            {
                ImageRepository.imageViewAnimatedChange(toSet, toRemove, bitmap);
            }
        }

            
            {
                this$1 = ImageRepository._cls4.this;
                toSet = imageview;
                urlStr = s;
                toRemove = view;
                bitmap = bitmap1;
                super();
            }
    }

}
