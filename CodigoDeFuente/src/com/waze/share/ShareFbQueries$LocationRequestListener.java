// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.util.Log;
import com.facebook.Response;
import com.facebook.model.GraphObject;
import com.waze.Logger;
import com.waze.ifs.ui.ProgressBarDialog;
import com.waze.location.Position;
import java.util.ArrayList;

// Referenced classes of package com.waze.share:
//            ShareFbQueries

public static class mCenter
    implements com.facebook.r
{

    private mProgress mCallback;
    private Position mCenter;
    private ProgressBarDialog mProgress;

    public void onCompleted(Response response)
    {
        com.facebook.FacebookRequestError facebookrequesterror = response.getError();
        GraphObject graphobject = response.getGraphObject();
        Log.d("Facebook queries", (new StringBuilder("Location request completed with response: ")).append(response.toString()).append("Error: ").append(facebookrequesterror).toString());
        ArrayList arraylist = null;
        if (graphobject != null)
        {
            arraylist = ShareFbQueries.access$1(graphobject.getInnerJSONObject(), mCenter, false);
        }
        int i;
        if (arraylist != null)
        {
            i = 0;
            Logger.i_("Facebook queries", (new StringBuilder("Facebook location request has been completed. Got ")).append(arraylist.size()).append(" locations!").toString());
        } else
        {
            i = 0x10000002;
            Logger.i_("Facebook queries", "Facebook location request has been completed. Got no locations!");
        }
        if (mCallback != null)
        {
            mCallback.nLocationsListResult(arraylist, i, null);
        }
        if (mProgress != null)
        {
            mProgress.cancel();
        }
    }

    public (ProgressBarDialog progressbardialog,  , Position position)
    {
        mProgress = null;
        mCallback = null;
        mProgress = progressbardialog;
        mCallback = ;
        mCenter = position;
    }
}
