// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;

// Referenced classes of package com.google.android.gms.tagmanager:
//            cw

class bn extends BroadcastReceiver
{

    static final String tO = com/google/android/gms/tagmanager/bn.getName();
    private final cw agj;

    bn(cw cw1)
    {
        agj = cw1;
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
            Bundle bundle = intent.getExtras();
            Boolean boolean1 = Boolean.FALSE;
            if (bundle != null)
            {
                boolean1 = Boolean.valueOf(intent.getExtras().getBoolean("noConnectivity"));
            }
            cw cw1 = agj;
            boolean flag;
            if (!boolean1.booleanValue())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            cw1.t(flag);
        } else
        if ("com.google.analytics.RADIO_POWERED".equals(s1) && !intent.hasExtra(tO))
        {
            agj.cD();
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
