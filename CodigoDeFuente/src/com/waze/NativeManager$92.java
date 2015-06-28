// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;
import com.waze.rtalerts.RTAlertsCommentData;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity, LayoutManager

class val.nTimeOut
    implements Runnable
{

    final NativeManager this$0;
    private final String val$UserUrlImage;
    private final RTAlertsCommentData val$commentData;
    private final int val$nTimeOut;

    public void run()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity != null)
        {
            LayoutManager layoutmanager = mainactivity.getLayoutMgr();
            if (layoutmanager == null)
            {
                return;
            } else
            {
                layoutmanager.openCommentPopup(val$commentData, val$UserUrlImage, val$nTimeOut);
                return;
            }
        } else
        {
            Log.e("WAZE", "Cannot open ping Popup. Main activity is not available");
            return;
        }
    }

    CommentData()
    {
        this$0 = final_nativemanager;
        val$commentData = rtalertscommentdata;
        val$UserUrlImage = s;
        val$nTimeOut = I.this;
        super();
    }
}
