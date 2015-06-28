// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.routes;

import android.view.View;

// Referenced classes of package com.waze.routes:
//            RouteAdapter, AlternativeRoute

class e
    implements Runnable
{

    final RouteAdapter this$0;
    private final View val$myView;
    private final AlternativeRoute val$route;

    public void run()
    {
        RouteAdapter.access$0(RouteAdapter.this, val$myView, val$route);
    }

    e()
    {
        this$0 = final_routeadapter;
        val$myView = view;
        val$route = AlternativeRoute.this;
        super();
    }
}
