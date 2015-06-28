// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.rtalerts.RTAlertsCommentData;

// Referenced classes of package com.waze.view.popups:
//            CommentPopUP

class this._cls0
    implements Runnable
{

    final CommentPopUP this$0;

    public void run()
    {
        AppService.getNativeManager().ReportAbusNTV(CommentPopUP.access$0(CommentPopUP.this).mAlertID, CommentPopUP.access$0(CommentPopUP.this).mCommentID);
    }

    a()
    {
        this$0 = CommentPopUP.this;
        super();
    }
}
