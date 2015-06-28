// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.util.Log;
import com.facebook.Response;
import com.facebook.model.GraphObject;
import com.waze.Logger;
import com.waze.ifs.ui.ProgressBarDialog;
import java.util.ArrayList;

// Referenced classes of package com.waze.share:
//            ShareFbQueries

public static class mCallback
    implements com.facebook.r
{

    private mProgress mCallback;
    private ProgressBarDialog mProgress;

    public void onCompleted(Response response)
    {
        com.facebook.FacebookRequestError facebookrequesterror = response.getError();
        GraphObject graphobject = response.getGraphObject();
        Log.d("Facebook queries", (new StringBuilder("Friends list request completed with response: ")).append(response.toString()).append("Error: ").append(facebookrequesterror).toString());
        ArrayList arraylist = null;
        if (graphobject != null)
        {
            arraylist = ShareFbQueries.access$0(graphobject.getInnerJSONObject(), true);
        }
        int i;
        if (arraylist != null)
        {
            Logger.i_("Facebook queries", (new StringBuilder("Facebook friends request has been completed. Got ")).append(arraylist.size()).append(" friends!").toString());
            i = 0;
        } else
        {
            Logger.i_("Facebook queries", "Facebook friends request has been completed. Got no results !");
            i = 0x10000002;
        }
        if (mCallback != null)
        {
            mCallback.FriendsListResult(arraylist, i, null);
        }
        if (mProgress != null)
        {
            mProgress.cancel();
        }
    }

    public (ProgressBarDialog progressbardialog,  )
    {
        mProgress = null;
        mCallback = null;
        mProgress = progressbardialog;
        mCallback = ;
    }
}
