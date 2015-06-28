// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MapViewWrapper, MainActivity

class val.special
    implements Runnable
{

    final NativeManager this$0;
    private final String val$iconName;
    private final boolean val$moreActionEnabled;
    private final String val$msg;
    private final String val$special;
    private final String val$title;
    private final int val$x;
    private final int val$y;

    public void run()
    {
        MapViewWrapper mapviewwrapper = AppService.getActiveMapViewWrapper();
        if (mapviewwrapper != null)
        {
            mapviewwrapper.showDetailsPopup(val$x, val$y, val$title, val$msg, val$iconName, val$moreActionEnabled, val$special);
            return;
        } else
        {
            Log.e("WAZE", "Cannot show DetailsPopup. MapView is not available");
            MainActivity.registerOnResumeEvent(this);
            return;
        }
    }

    ()
    {
        this$0 = final_nativemanager;
        val$x = i;
        val$y = j;
        val$title = s;
        val$msg = s1;
        val$iconName = s2;
        val$moreActionEnabled = flag;
        val$special = String.this;
        super();
    }
}
