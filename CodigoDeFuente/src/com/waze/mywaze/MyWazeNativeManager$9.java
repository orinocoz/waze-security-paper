// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.app.Activity;
import android.content.Intent;
import com.waze.AppService;
import com.waze.mywaze.social.FoursquareActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class ursquareSettings
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final ursquareSettings val$settings;

    public void run()
    {
        com.waze.ifs.ui.ActivityBase activitybase = AppService.getActiveActivity();
        if (activitybase != null)
        {
            Intent intent = new Intent(activitybase, com/waze/mywaze/social/FoursquareActivity);
            intent.putExtra("com.waze.mywaze.foursquaresettings", val$settings);
            activitybase.startActivityForResult(intent, 0);
        }
    }

    ursquareSettings()
    {
        this$0 = final_mywazenativemanager;
        val$settings = ursquareSettings.this;
        super();
    }
}
