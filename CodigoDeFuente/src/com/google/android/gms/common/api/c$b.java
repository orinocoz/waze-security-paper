// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.concurrent.locks.Lock;

// Referenced classes of package com.google.android.gms.common.api:
//            c

class Eh extends Handler
{

    final c Eh;

    public void handleMessage(Message message)
    {
        if (message.what != 1)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        c.a(Eh).lock();
        if (!Eh.isConnected() && !Eh.isConnecting())
        {
            Eh.connect();
        }
        c.a(Eh).unlock();
        return;
        Exception exception;
        exception;
        c.a(Eh).unlock();
        throw exception;
        Log.wtf("GoogleApiClientImpl", "Don't know how to handle this message.");
        return;
    }

    (c c1, Looper looper)
    {
        Eh = c1;
        super(looper);
    }
}
