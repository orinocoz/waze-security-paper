// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            AppService, MainActivity, LayoutManager

class 
    implements Runnable
{

    public void run()
    {
        LayoutManager layoutmanager = AppService.access$11().getLayoutMgr();
        AppService.access$11().setContentView(layoutmanager.getMainLayout());
    }

    ()
    {
    }
}
