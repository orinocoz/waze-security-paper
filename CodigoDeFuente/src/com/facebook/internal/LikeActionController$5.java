// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.os.Bundle;
import com.facebook.AppEventsLogger;
import com.facebook.LoggingBehavior;
import java.util.UUID;

// Referenced classes of package com.facebook.internal:
//            LikeActionController, Logger

class val.analyticsParameters
    implements com.facebook.widget.
{

    final LikeActionController this$0;
    private final Bundle val$analyticsParameters;

    public void onComplete(com.facebook.widget.all all, Bundle bundle)
    {
        if (bundle == null || !bundle.containsKey("object_is_liked"))
        {
            return;
        }
        boolean flag = bundle.getBoolean("object_is_liked");
        String s = LikeActionController.access$4(LikeActionController.this);
        String s1 = LikeActionController.access$5(LikeActionController.this);
        if (bundle.containsKey("like_count_string"))
        {
            s = bundle.getString("like_count_string");
            s1 = s;
        }
        String s2 = LikeActionController.access$6(LikeActionController.this);
        String s3 = LikeActionController.access$7(LikeActionController.this);
        if (bundle.containsKey("social_sentence"))
        {
            s2 = bundle.getString("social_sentence");
            s3 = s2;
        }
        String s4;
        Bundle bundle1;
        if (bundle.containsKey("object_is_liked"))
        {
            s4 = bundle.getString("unlike_token");
        } else
        {
            s4 = LikeActionController.access$20(LikeActionController.this);
        }
        if (val$analyticsParameters == null)
        {
            bundle1 = new Bundle();
        } else
        {
            bundle1 = val$analyticsParameters;
        }
        bundle1.putString("call_id", all.getCallId().toString());
        LikeActionController.access$21(LikeActionController.this).logSdkEvent("fb_like_control_dialog_did_succeed", null, bundle1);
        LikeActionController.access$22(LikeActionController.this, flag, s, s1, s2, s3, s4);
    }

    public void onError(com.facebook.widget.all all, Exception exception, Bundle bundle)
    {
        Logger.log(LoggingBehavior.REQUESTS, LikeActionController.access$1(), "Like Dialog failed with error : %s", new Object[] {
            exception
        });
        Bundle bundle1;
        if (val$analyticsParameters == null)
        {
            bundle1 = new Bundle();
        } else
        {
            bundle1 = val$analyticsParameters;
        }
        bundle1.putString("call_id", all.getCallId().toString());
        LikeActionController.access$23(LikeActionController.this, "present_dialog", bundle1);
        LikeActionController.access$25(LikeActionController.access$24(LikeActionController.this), LikeActionController.this, "com.facebook.sdk.LikeActionController.DID_ERROR", bundle);
    }

    l()
    {
        this$0 = final_likeactioncontroller;
        val$analyticsParameters = Bundle.this;
        super();
    }
}
