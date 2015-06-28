// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import com.waze.AppService;

// Referenced classes of package com.waze.share:
//            ShareNativeManager, ShareFbQueries

class this._cls0
    implements Runnable
{

    final ShareNativeManager this$0;

    public void run()
    {
        com.waze.ifs.ui.ActivityBase activitybase = AppService.getActiveActivity();
        if (activitybase != null)
        {
            ShareFbQueries.postDialogShow(activitybase);
        }
    }

    ()
    {
        this$0 = ShareNativeManager.this;
        super();
    }
}
