// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

// Referenced classes of package com.google.android.gms.analytics:
//            af

class q extends BroadcastReceiver
{

    static final String tO = com/google/android/gms/analytics/q.getName();
    private final af tP;

    q(af af1)
    {
        tP = af1;
    }

    public static void t(Context context)
    {
        Intent intent = new Intent("com.google.analytics.RADIO_POWERED");
        intent.addCategory(context.getPackageName());
        intent.putExtra(tO, true);
        context.sendBroadcast(intent);
    }

    public void onReceive(Context context, Intent intent)
    {
        String s1 = intent.getAction();
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(s1))
        {
            boolean flag = intent.getBooleanExtra("noConnectivity", false);
            af af1 = tP;
            boolean flag1 = false;
            if (!flag)
            {
                flag1 = true;
            }
            af1.t(flag1);
        } else
        if ("com.google.analytics.RADIO_POWERED".equals(s1) && !intent.hasExtra(tO))
        {
            tP.cD();
            return;
        }
    }

    public void s(Context context)
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(this, intentfilter);
        IntentFilter intentfilter1 = new IntentFilter();
        intentfilter1.addAction("com.google.analytics.RADIO_POWERED");
        intentfilter1.addCategory(context.getPackageName());
        context.registerReceiver(this, intentfilter1);
    }

}
