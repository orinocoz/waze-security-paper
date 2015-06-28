// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.Request;
import com.facebook.Response;

// Referenced classes of package com.facebook.internal:
//            LikeActionController, Logger

private class setRequest extends setRequest
{

    final LikeActionController this$0;
    private String unlikeToken;

    protected void processError(FacebookRequestError facebookrequesterror)
    {
        LoggingBehavior loggingbehavior = LoggingBehavior.REQUESTS;
        String s = LikeActionController.access$1();
        Object aobj[] = new Object[2];
        aobj[0] = unlikeToken;
        aobj[1] = facebookrequesterror;
        Logger.log(loggingbehavior, s, "Error unliking object with unlike token '%s' : %s", aobj);
        LikeActionController.access$2(LikeActionController.this, "publish_unlike", facebookrequesterror);
    }

    protected void processSuccess(Response response)
    {
    }

    (String s)
    {
        this$0 = LikeActionController.this;
        super(LikeActionController.this, null);
        unlikeToken = s;
        setRequest(new Request(LikeActionController.access$0(LikeActionController.this), s, null, HttpMethod.DELETE));
    }
}
