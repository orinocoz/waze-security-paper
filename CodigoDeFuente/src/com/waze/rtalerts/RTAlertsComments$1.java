// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.view.View;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsComments, RTAlertsNativeManager

class val.alertId
    implements android.view.r
{

    final RTAlertsComments this$0;
    private final int val$alertId;
    private final RTAlertsNativeManager val$mgr;

    public void onClick(View view)
    {
        val$mgr.postCommentValidate(RTAlertsComments.this, val$alertId);
    }

    er()
    {
        this$0 = final_rtalertscomments;
        val$mgr = rtalertsnativemanager;
        val$alertId = I.this;
        super();
    }
}
