// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MapViewWrapper, MainActivity

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
        MapViewWrapper mapviewwrapper = AppService.getActiveMapViewWrapper();
        if (mapviewwrapper != null)
        {
            mapviewwrapper.closeDetailsPopup();
            return;
        } else
        {
            Log.e("WAZE", "Cannot close DetailsPopup. Main activity is not available");
            MainActivity.registerOnResumeEvent(this);
            return;
        }
    }

    ()
    {
        this$0 = NativeManager.this;
        super();
    }
}
