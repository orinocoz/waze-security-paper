// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private final class back extends back
{

    final GamesClientImpl NB;

    protected void a(RoomStatusUpdateListener roomstatusupdatelistener, Room room, ArrayList arraylist)
    {
        roomstatusupdatelistener.onPeersConnected(room, arraylist);
    }

    back(GamesClientImpl gamesclientimpl, RoomStatusUpdateListener roomstatusupdatelistener, DataHolder dataholder, String as[])
    {
        NB = gamesclientimpl;
        super(gamesclientimpl, roomstatusupdatelistener, dataholder, as);
    }
}
