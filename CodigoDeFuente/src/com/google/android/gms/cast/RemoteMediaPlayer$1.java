// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.cast;

import com.google.android.gms.internal.gp;

// Referenced classes of package com.google.android.gms.cast:
//            RemoteMediaPlayer

class AX extends gp
{

    final RemoteMediaPlayer AX;

    protected void onMetadataUpdated()
    {
        RemoteMediaPlayer.b(AX);
    }

    protected void onStatusUpdated()
    {
        RemoteMediaPlayer.a(AX);
    }

    (RemoteMediaPlayer remotemediaplayer)
    {
        AX = remotemediaplayer;
        super();
    }
}
