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
//            RemoteMediaPlayer, MediaInfo

class <init> extends <init>
{

    final RemoteMediaPlayer AX;
    final GoogleApiClient AY;
    final MediaInfo Bb;
    final boolean Bc;
    final long Bd;
    final JSONObject Be;

    protected volatile void a(com.google.android.gms.common.api. )
        throws RemoteException
    {
        a((gi));
    }

    protected void a(gi gi1)
    {
        Object obj = RemoteMediaPlayer.c(AX);
        obj;
        JVM INSTR monitorenter ;
        RemoteMediaPlayer.d(AX).b(AY);
        RemoteMediaPlayer.e(AX).a(Bn, Bb, Bc, Bd, Be);
        RemoteMediaPlayer.d(AX).b(null);
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception;
        ioexception;
        b(l(new Status(1)));
        RemoteMediaPlayer.d(AX).b(null);
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        Exception exception1;
        exception1;
        RemoteMediaPlayer.d(AX).b(null);
        throw exception1;
    }

    t(RemoteMediaPlayer remotemediaplayer, GoogleApiClient googleapiclient, MediaInfo mediainfo, boolean flag, long l, JSONObject jsonobject)
    {
        AX = remotemediaplayer;
        AY = googleapiclient;
        Bb = mediainfo;
        Bc = flag;
        Bd = l;
        Be = jsonobject;
        super();
    }
}
