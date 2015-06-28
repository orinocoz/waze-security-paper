// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.routes;

import com.waze.main.navigate.EventOnRoute;

// Referenced classes of package com.waze.routes:
//            RoutesActivity

class this._cls0
    implements com.waze.navigate.ger.EventsOnRouteListener
{

    final RoutesActivity this$0;

    public void onComplete(EventOnRoute aeventonroute[])
    {
        events = aeventonroute;
        RoutesActivity.access$4(RoutesActivity.this, true);
        RoutesActivity.access$3(RoutesActivity.this);
    }

    te()
    {
        this$0 = RoutesActivity.this;
        super();
    }
}
