// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.waze.utils:
//            ImageRepository, ImageUtils

class val.bitmap
    implements Runnable
{

    final val.bitmap this$1;
    private final Bitmap val$bitmap;
    private final View val$toRemove;
    private final ImageView val$toSet;
    private final String val$urlStr;

    public void run()
    {
        if (val$toSet != null && val$urlStr.equals(val$toSet.getTag()))
        {
            ImageRepository.imageViewAnimatedChange(val$toSet, val$toRemove, val$bitmap);
        }
    }

    ry()
    {
        this$1 = final_ry;
        val$toSet = imageview;
        val$urlStr = s;
        val$toRemove = view;
        val$bitmap = Bitmap.this;
        super();
    }

    // Unreferenced inner class com/waze/utils/ImageRepository$3

/* anonymous class */
    class ImageRepository._cls3
        implements Runnable
    {

        int _try;
        final ImageRepository this$0;
        private final ActivityBase val$ab;
        private final long val$retryTimeoutMs;
        private final View val$toRemove;
        private final ImageView val$toSet;
        private final Uri val$tryUri;
        private final String val$urlStr;

        public void run()
        {
            boolean flag = true;
            if (toSet == null || urlStr.equals(toSet.getTag())) goto _L2; else goto _L1
_L1:
            return;
_L2:
            Bitmap bitmap1 = ImageUtils.makeBitmap(100, 16384, tryUri, ab.getContentResolver(), true);
            if (bitmap1 != null)
            {
                break MISSING_BLOCK_LABEL_119;
            }
            ScheduledExecutorService scheduledexecutorservice;
            Analytics.log("LOAD_IMAGE", "STATUS", "FAILURE");
            if (retryTimeoutMs <= 0L)
            {
                continue; /* Loop/switch isn't completed */
            }
            _try = -1 + _try;
            if (_try < 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            scheduledexecutorservice = mExec;
            if (scheduledexecutorservice != null)
            {
                break MISSING_BLOCK_LABEL_219;
            }
            OutOfMemoryError outofmemoryerror;
            try
            {
                Thread.sleep(retryTimeoutMs);
            }
            catch (InterruptedException interruptedexception1) { }
            new Thread(this);
_L3:
            Analytics.log("LOAD_IMAGE", "STATUS", "SUCCESS");
            ImageRepository.ImageCache.access$1(mImageThumbnailCache, urlStr, bitmap1);
            ab.runOnUiThread(bitmap1. new ImageRepository._cls3._cls1());
            return;
            outofmemoryerror;
            _try = -1 + _try;
            if (_try >= 0)
            {
                if (mExec == null)
                {
                    Throwable throwable;
                    try
                    {
                        Thread.sleep(retryTimeoutMs);
                    }
                    catch (InterruptedException interruptedexception) { }
                    new Thread(this);
                    return;
                } else
                {
                    mExec.schedule(this, retryTimeoutMs, TimeUnit.MILLISECONDS);
                    return;
                }
            }
            continue; /* Loop/switch isn't completed */
            mExec.schedule(this, retryTimeoutMs, TimeUnit.MILLISECONDS);
              goto _L3
            throwable;
            if ((2 & ab.getApplicationInfo().flags) == 0)
            {
                flag = false;
            }
            if (flag)
            {
                throwable.printStackTrace();
                return;
            }
            if (true) goto _L1; else goto _L4
_L4:
        }

            
            {
                this$0 = final_imagerepository;
                toSet = imageview;
                urlStr = s;
                tryUri = uri;
                ab = activitybase;
                retryTimeoutMs = J.this;
                toRemove = view;
                super();
                _try = final_i;
            }
    }

}
