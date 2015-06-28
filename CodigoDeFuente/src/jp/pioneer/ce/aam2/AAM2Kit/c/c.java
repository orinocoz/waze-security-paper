// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.c:
//            a

class c extends BroadcastReceiver
{

    final a a;

    c(a a1)
    {
        a = a1;
        super();
    }

    public void onReceive(Context context, Intent intent)
    {
        a.a();
    }
}
