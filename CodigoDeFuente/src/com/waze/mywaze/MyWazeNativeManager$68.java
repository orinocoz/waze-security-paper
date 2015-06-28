// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.content.Intent;
import com.waze.AppService;
import com.waze.mywaze.social.FoursquareListActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class val.distances
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final String val$addresses[];
    private final String val$descriptions[];
    private final String val$distances[];

    public void run()
    {
        Intent intent = new Intent(AppService.getAppContext(), com/waze/mywaze/social/FoursquareListActivity);
        intent.putExtra("com.waze.mywaze.foursquare.descriptions", val$descriptions);
        intent.putExtra("com.waze.mywaze.foursquare.addresses", val$addresses);
        intent.putExtra("com.waze.mywaze.foursquare.distances", val$distances);
        AppService.showActivity(intent);
    }

    tivity()
    {
        this$0 = final_mywazenativemanager;
        val$descriptions = as;
        val$addresses = as1;
        val$distances = _5B_Ljava.lang.String_3B_.this;
        super();
    }
}
