// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.a.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import jp.pioneer.mbg.pioneerkit.a.a.m;

// Referenced classes of package jp.pioneer.mbg.pioneerkit.a.b:
//            a, c

class d extends Handler
{

    final c a;

    public d(c c, Looper looper)
    {
        a = c;
        super(looper);
    }

    public void handleMessage(Message message)
    {
        if (message.what != 61440 && message.what == 65288)
        {
            jp.pioneer.mbg.pioneerkit.a.b.a.a(m.a(message));
        }
    }
}
