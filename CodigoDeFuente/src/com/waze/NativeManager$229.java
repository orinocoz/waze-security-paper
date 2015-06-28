// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.NetworkInfo;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
        if (!NativeManager.access$115(NativeManager.this).isConnected())
        {
            break MISSING_BLOCK_LABEL_124;
        }
        if (NativeManager.access$115(NativeManager.this).getType() != 0) goto _L2; else goto _L1
_L1:
        Analytics.log("NETWORK_STATE", "MODE|MCC|MNC", (new StringBuilder("CELL|")).append(AppService.getAppResources().getConfiguration().mcc).append("|").append(AppService.getAppResources().getConfiguration().mnc).toString());
_L4:
        return;
_L2:
        if (NativeManager.access$115(NativeManager.this).getType() == 1)
        {
            Analytics.log("NETWORK_STATE", "MODE|MCC|MNC", "WIFI||");
            return;
        }
        if (NativeManager.access$115(NativeManager.this).getType() != 6) goto _L4; else goto _L3
_L3:
        Analytics.log("NETWORK_STATE", "MODE|MCC|MNC", "WIMAX||");
        return;
        Analytics.log("NETWORK_STATE", "MODE|MCC|MNC", "NA||");
        return;
    }

    s()
    {
        this$0 = NativeManager.this;
        super();
    }
}
