// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.os.Bundle;
import com.facebook.HttpMethod;
import com.facebook.Request;
import com.facebook.RequestAsyncTask;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.ProgressBarDialog;
import com.waze.location.Position;
import com.waze.social.facebook.FacebookWrapper;

// Referenced classes of package com.waze.share:
//            ShareFbQueries

class val.cb
    implements com.waze.social.facebook.OnAuthorizeCompletedListener
{

    private final ocationsListCallback val$cb;
    private final ActivityBase val$context;
    private final String val$pattern;
    private final Position val$pos;
    private final boolean val$showProgress;

    public void onAuthorizeCompleted(boolean flag, int i)
    {
        Bundle bundle = new Bundle();
        boolean flag1;
        boolean flag2;
        boolean flag3;
        ProgressBarDialog progressbardialog;
        if (val$pattern != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (val$pattern.length() > 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (flag1 & flag2)
        {
            bundle.putString("q", val$pattern);
        }
        bundle.putString("type", "place");
        bundle.putString("center", (new StringBuilder(String.valueOf(Double.toString(val$pos.latitude)))).append(",").append(Double.toString(val$pos.longitude)).toString());
        bundle.putString("distance", Integer.toString(5000));
        flag3 = val$showProgress;
        progressbardialog = null;
        if (flag3)
        {
            progressbardialog = new ProgressBarDialog(val$context);
            progressbardialog.show();
        }
        (new RequestAsyncTask(new Request[] {
            new Request(FacebookWrapper.session(), "search", bundle, HttpMethod.GET, new cationRequestListener(progressbardialog, val$cb, val$pos))
        })).execute(new Void[0]);
    }

    ocationsListCallback()
    {
        val$pattern = s;
        val$pos = position;
        val$showProgress = flag;
        val$context = activitybase;
        val$cb = ocationslistcallback;
        super();
    }
}
