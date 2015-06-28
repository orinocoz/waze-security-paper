// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Intent;
import android.net.Uri;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.share:
//            FacebookLikeActivity

public class FbLikeLauncher
    implements com.waze.mywaze.MyWazeNativeManager.UrlCallback
{

    private ActivityBase mContext;

    private FbLikeLauncher(ActivityBase activitybase)
    {
        mContext = null;
        mContext = activitybase;
        MyWazeNativeManager.getInstance().getFacebookLikeUrl(this, 0, 0);
    }

    public static FbLikeLauncher start(ActivityBase activitybase)
    {
        return new FbLikeLauncher(activitybase);
    }

    public void onUrl(String s)
    {
label0:
        {
            if (mContext != null && s != null)
            {
                if (!s.startsWith("fb://"))
                {
                    break label0;
                }
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
                mContext.startActivity(intent);
            }
            return;
        }
        Intent intent1 = new Intent(mContext, com/waze/share/FacebookLikeActivity);
        intent1.putExtra("LikeUrl", s);
        mContext.startActivityForResult(intent1, 0);
    }
}
