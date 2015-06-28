// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.bottom;

import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;

// Referenced classes of package com.waze.view.bottom:
//            BottomNotification

class this._cls0
    implements Runnable
{

    final BottomNotification this$0;

    public void run()
    {
        if (AppService.getMainActivity() != null)
        {
            AppService.getMainActivity().getLayoutMgr().displayBottomPrivacyMessage();
        }
    }

    ()
    {
        this$0 = BottomNotification.this;
        super();
    }
}
