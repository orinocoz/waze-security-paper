// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.routes;

import com.waze.main.navigate.MajorEventOnRoute;

// Referenced classes of package com.waze.routes:
//            RoutesMapActivity, AlternativeRoute

class this._cls0
    implements com.waze.navigate..MajorEventsOnRouteListener
{

    final RoutesMapActivity this$0;

    public void onComplete(MajorEventOnRoute amajoreventonroute[])
    {
        if (amajoreventonroute == null) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        i = amajoreventonroute.length;
        j = 0;
_L6:
        if (j < i) goto _L3; else goto _L2
_L2:
        return;
_L3:
        MajorEventOnRoute majoreventonroute = amajoreventonroute[j];
        if (majoreventonroute.alertType != 12) goto _L5; else goto _L4
_L4:
        int k = 0;
_L7:
        if (k < routes.length)
        {
label0:
            {
                if (majoreventonroute.alertRouteId != routes[k].id)
                {
                    break label0;
                }
                routes[k].closure = true;
            }
        }
_L5:
        j++;
          goto _L6
        k++;
          goto _L7
    }

    oute()
    {
        this$0 = RoutesMapActivity.this;
        super();
    }
}
