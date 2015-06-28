// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.rtalerts.RTAlertsThumbsUpData;

// Referenced classes of package com.waze.view.popups:
//            ThumbsUpPopUP

class this._cls0
    implements Runnable
{

    final ThumbsUpPopUP this$0;

    public void run()
    {
        AppService.getNativeManager().sendCommentNTV(ThumbsUpPopUP.access$0().mAlertID);
    }

    a()
    {
        this$0 = ThumbsUpPopUP.this;
        super();
    }
}
