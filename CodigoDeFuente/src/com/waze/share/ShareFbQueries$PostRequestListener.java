// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.util.Log;
import com.facebook.FacebookRequestError;
import com.facebook.Response;
import com.facebook.model.GraphObject;
import com.waze.ifs.ui.ProgressBarDialog;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.waze.share:
//            ShareFbQueries

public static class mCallback
    implements com.facebook.r
{

    private Result mCallback;
    private ProgressBarDialog mProgress;

    public void onCompleted(Response response)
    {
        Log.d("Facebook queries", (new StringBuilder("Post request completed with response: ")).append(response.toString()).toString());
        FacebookRequestError facebookrequesterror = response.getError();
        if (facebookrequesterror == null) goto _L2; else goto _L1
_L1:
        String s;
        try
        {
            if (mCallback != null)
            {
                mCallback.Result(0x10000001, facebookrequesterror.getErrorMessage());
            }
        }
        catch (JSONException jsonexception)
        {
            if (mCallback != null)
            {
                mCallback.Result(0x10000004, null);
            }
        }
_L3:
        if (mProgress != null)
        {
            mProgress.cancel();
        }
        return;
_L2:
        s = response.getGraphObject().getInnerJSONObject().getString("id");
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        if (mCallback == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        mCallback.Result(0x10000001, "No post id");
        break MISSING_BLOCK_LABEL_59;
        Log.d("Facebook queries", (new StringBuilder("Post request succeeded. Id: ")).append(s).toString());
        if (mCallback != null)
        {
            mCallback.Result(0, null);
        }
          goto _L3
    }

    public (ProgressBarDialog progressbardialog,  )
    {
        mProgress = null;
        mCallback = null;
        mProgress = progressbardialog;
        mCallback = ;
    }
}
