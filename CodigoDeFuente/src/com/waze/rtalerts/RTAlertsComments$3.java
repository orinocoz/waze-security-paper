// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.view.View;
import android.widget.LinearLayout;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsComments, RTAlertsCommentsAdapter, RTAlertsCommentData

class val.commentsListContainer
    implements er.IAlertsCommentDataHandler
{

    final RTAlertsComments this$0;
    private final LinearLayout val$commentsListContainer;

    public void handler(RTAlertsCommentData artalertscommentdata[])
    {
        if (artalertscommentdata == null) goto _L2; else goto _L1
_L1:
        int i;
        mAdapter.update(artalertscommentdata);
        i = 0;
_L6:
        if (i < mAdapter.getCount()) goto _L4; else goto _L3
_L3:
        val$commentsListContainer.setPadding(0, 0, 0, 0);
        val$commentsListContainer.requestLayout();
_L2:
        return;
_L4:
        if (i > 0)
        {
            View view = new View(RTAlertsComments.this);
            view.setBackgroundResource(0x7f080037);
            val$commentsListContainer.addView(view, new android.view.ams(-1, 1));
        }
        View view1 = mAdapter.getView(i, null, val$commentsListContainer);
        val$commentsListContainer.addView(view1);
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    ()
    {
        this$0 = final_rtalertscomments;
        val$commentsListContainer = LinearLayout.this;
        super();
    }
}
