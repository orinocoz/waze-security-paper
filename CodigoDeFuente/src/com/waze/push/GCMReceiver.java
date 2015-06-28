// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

// Referenced classes of package com.waze.push:
//            HandlerService

public class GCMReceiver extends BroadcastReceiver
{

    public GCMReceiver()
    {
    }

    public final void onReceive(Context context, Intent intent)
    {
        Log.d("Push Service", (new StringBuilder("onReceive: ")).append(intent.getAction()).toString());
        HandlerService.handleIntent(context, intent);
    }
}
