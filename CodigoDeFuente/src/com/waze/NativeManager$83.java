// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import com.waze.reports.NearbyGasStationsActivity;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
        Intent intent = new Intent(AppService.getAppContext(), com/waze/reports/NearbyGasStationsActivity);
        AppService.getMainActivity().startActivityForResult(intent, 32780);
    }

    StationsActivity()
    {
        this$0 = NativeManager.this;
        super();
    }
}
