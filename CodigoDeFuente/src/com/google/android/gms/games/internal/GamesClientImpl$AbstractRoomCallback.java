// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private abstract class NB extends com.google.android.gms.internal.lback
{

    final GamesClientImpl NB;

    protected void a(RoomUpdateListener roomupdatelistener, DataHolder dataholder)
    {
        a(roomupdatelistener, GamesClientImpl.a(NB, dataholder), dataholder.getStatusCode());
    }

    protected abstract void a(RoomUpdateListener roomupdatelistener, Room room, int i);

    protected volatile void a(Object obj, DataHolder dataholder)
    {
        a((RoomUpdateListener)obj, dataholder);
    }

    (GamesClientImpl gamesclientimpl, RoomUpdateListener roomupdatelistener, DataHolder dataholder)
    {
        NB = gamesclientimpl;
        super(gamesclientimpl, roomupdatelistener, dataholder);
    }
}
