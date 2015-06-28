// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.content.Intent;
import com.waze.AppService;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.social.FoursquareCheckedinActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class val.points
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final String val$address;
    private final String val$label;
    private final String val$points;

    public void run()
    {
        ActivityBase activitybase = AppService.getActiveActivity();
        if (activitybase != null)
        {
            Intent intent = new Intent(activitybase, com/waze/mywaze/social/FoursquareCheckedinActivity);
            intent.putExtra("com.waze.mywaze.foursquare_label", val$label);
            intent.putExtra("com.waze.mywaze.foursquare_address", val$address);
            intent.putExtra("com.waze.mywaze.foursquare_points", val$points);
            AppService.getActiveActivity().startActivityForResult(intent, 0);
        }
    }

    dinActivity()
    {
        this$0 = final_mywazenativemanager;
        val$label = s;
        val$address = s1;
        val$points = String.this;
        super();
    }
}
