// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.gi;
import com.google.android.gms.internal.gp;
import java.io.IOException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.cast:
//            RemoteMediaPlayer

class init> extends init>
{

    final RemoteMediaPlayer AX;
    final GoogleApiClient AY;
    final JSONObject Be;
    final boolean Bi;

    protected volatile void a(com.google.android.gms.common.api.ent_20_g_11_ ent_20_g_11_)
        throws RemoteException
    {
        a((gi)ent_20_g_11_);
    }

    protected void a(gi gi1)
    {
        Object obj = RemoteMediaPlayer.c(AX);
        obj;
        JVM INSTR monitorenter ;
        RemoteMediaPlayer.d(AX).(AY);
        RemoteMediaPlayer.e(AX).a(Bn, Bi, Be);
        RemoteMediaPlayer.d(AX).(null);
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        b(l(new Status(1)));
        RemoteMediaPlayer.d(AX).(null);
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        IOException ioexception;
        ioexception;
        b(l(new Status(1)));
        RemoteMediaPlayer.d(AX).(null);
          goto _L1
        Exception exception1;
        exception1;
        RemoteMediaPlayer.d(AX).(null);
        throw exception1;
    }

    (RemoteMediaPlayer remotemediaplayer, GoogleApiClient googleapiclient, boolean flag, JSONObject jsonobject)
    {
        AX = remotemediaplayer;
        AY = googleapiclient;
        Bi = flag;
        Be = jsonobject;
        super();
    }
}
