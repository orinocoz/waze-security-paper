// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

// Referenced classes of package com.waze:
//            NativeManager

public class CloseIntent extends BroadcastReceiver
{

    public static final String ActionName = "Eliran_Close_Intent";

    public CloseIntent()
    {
    }

    public static void Register(Context context)
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("Eliran_Close_Intent");
        intentfilter.addCategory("android.intent.category.DEFAULT");
        context.registerReceiver(new CloseIntent(), intentfilter);
    }

    public void onReceive(Context context, Intent intent)
    {
        try
        {
            NativeManager.getInstance().StopWaze();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }
}
