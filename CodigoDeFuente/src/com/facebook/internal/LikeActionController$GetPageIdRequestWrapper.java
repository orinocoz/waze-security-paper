// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.os.Bundle;
import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.Request;
import com.facebook.Response;
import org.json.JSONObject;

// Referenced classes of package com.facebook.internal:
//            LikeActionController, Logger, Utility

private class setRequest extends setRequest
{

    boolean objectIsPage;
    final LikeActionController this$0;
    String verifiedObjectId;

    protected void processError(FacebookRequestError facebookrequesterror)
    {
        LoggingBehavior loggingbehavior = LoggingBehavior.REQUESTS;
        String s = LikeActionController.access$1();
        Object aobj[] = new Object[2];
        aobj[0] = objectId;
        aobj[1] = facebookrequesterror;
        Logger.log(loggingbehavior, s, "Error getting the FB id for object '%s' : %s", aobj);
    }

    protected void processSuccess(Response response)
    {
        JSONObject jsonobject = Utility.tryGetJSONObjectFromResponse(response.getGraphObject(), objectId);
        if (jsonobject != null)
        {
            verifiedObjectId = jsonobject.optString("id");
            boolean flag;
            if (Utility.isNullOrEmpty(verifiedObjectId))
            {
                flag = false;
            } else
            {
                flag = true;
            }
            objectIsPage = flag;
        }
    }

    (String s)
    {
        this$0 = LikeActionController.this;
        super(LikeActionController.this, s);
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id");
        bundle.putString("ids", s);
        setRequest(new Request(LikeActionController.access$0(LikeActionController.this), "", bundle, HttpMethod.GET));
    }
}
