// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

// Referenced classes of package com.waze:
//            NativeManager, IntentManager

public static class  extends BroadcastReceiver
{

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if ("android.intent.action.MEDIA_REMOVED".equals(s) || "android.intent.action.MEDIA_UNMOUNTED".equals(s))
        {
            Log.e("WAZE", "Received media removed/unmounted event. WAZE cannot continue!");
            NativeManager.CheckSDCardAvailable();
        }
    }

    public ()
    {
    }
}
