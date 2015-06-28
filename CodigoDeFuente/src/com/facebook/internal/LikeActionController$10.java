// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import com.facebook.LoggingBehavior;
import com.facebook.RequestBatch;

// Referenced classes of package com.facebook.internal:
//            LikeActionController, Utility, Logger

class uestCompletionCallback
    implements com.facebook.oller._cls10
{

    final LikeActionController this$0;
    private final uestCompletionCallback val$completionHandler;
    private final OGObjectIdRequestWrapper val$objectIdRequest;
    private final PageIdRequestWrapper val$pageIdRequest;

    public void onBatchCompleted(RequestBatch requestbatch)
    {
        LikeActionController.access$33(LikeActionController.this, val$objectIdRequest.verifiedObjectId);
        if (Utility.isNullOrEmpty(LikeActionController.access$26(LikeActionController.this)))
        {
            LikeActionController.access$33(LikeActionController.this, val$pageIdRequest.verifiedObjectId);
            LikeActionController.access$34(LikeActionController.this, val$pageIdRequest.objectIsPage);
        }
        if (Utility.isNullOrEmpty(LikeActionController.access$26(LikeActionController.this)))
        {
            LoggingBehavior loggingbehavior = LoggingBehavior.DEVELOPER_ERRORS;
            String s = LikeActionController.access$1();
            Object aobj[] = new Object[1];
            aobj[0] = LikeActionController.access$32(LikeActionController.this);
            Logger.log(loggingbehavior, s, "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", aobj);
            LikeActionController likeactioncontroller = LikeActionController.this;
            com.facebook.FacebookRequestError facebookrequesterror;
            if (val$pageIdRequest.error != null)
            {
                facebookrequesterror = val$pageIdRequest.error;
            } else
            {
                facebookrequesterror = val$objectIdRequest.error;
            }
            LikeActionController.access$2(likeactioncontroller, "get_verified_id", facebookrequesterror);
        }
        if (val$completionHandler != null)
        {
            val$completionHandler.onComplete();
        }
    }

    uestCompletionCallback()
    {
        this$0 = final_likeactioncontroller;
        val$objectIdRequest = ogobjectidrequestwrapper;
        val$pageIdRequest = pageidrequestwrapper;
        val$completionHandler = uestCompletionCallback.this;
        super();
    }
}
