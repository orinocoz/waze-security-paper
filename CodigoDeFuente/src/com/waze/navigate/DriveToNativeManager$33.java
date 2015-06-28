// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.app.PendingIntent;
import android.util.Log;
import com.waze.AppService;
import com.waze.widget.WazeAppWidgetLog;
import com.waze.widget.WazeAppWidgetProvider;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class this._cls0
    implements Runnable
{

    final DriveToNativeManager this$0;

    public void run()
    {
        try
        {
            WazeAppWidgetLog.d("in DriveToNativeManager :: forceWidgetRefresh");
            WazeAppWidgetProvider.getControlIntent(AppService.getActiveActivity(), "AppWidget Action Command Force Refresh").send();
            return;
        }
        catch (Exception exception)
        {
            Log.e("WAZE", (new StringBuilder("failed firing widget refresh. exception:")).append(exception.getMessage()).append(" trace:").append(exception.getStackTrace()).toString());
        }
    }

    ()
    {
        this$0 = DriveToNativeManager.this;
        super();
    }
}
