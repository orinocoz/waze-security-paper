// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessageReceivedListener;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import com.google.android.gms.internal.hn;

// Referenced classes of package com.google.android.gms.games.internal:
//            AbstractGamesCallbacks, GamesClientImpl

private final class OF extends AbstractGamesCallbacks
{

    final GamesClientImpl NB;
    private final RoomUpdateListener OD;
    private final RoomStatusUpdateListener OE;
    private final RealTimeMessageReceivedListener OF;

    public void A(DataHolder dataholder)
    {
        NB.a(new Callback(NB, OE, dataholder));
    }

    public void a(DataHolder dataholder, String as[])
    {
        NB.a(new lback(NB, OE, dataholder, as));
    }

    public void b(DataHolder dataholder, String as[])
    {
        NB.a(new ck(NB, OE, dataholder, as));
    }

    public void c(DataHolder dataholder, String as[])
    {
        NB.a(new (NB, OE, dataholder, as));
    }

    public void d(DataHolder dataholder, String as[])
    {
        NB.a(new (NB, OE, dataholder, as));
    }

    public void e(DataHolder dataholder, String as[])
    {
        NB.a(new k(NB, OE, dataholder, as));
    }

    public void f(DataHolder dataholder, String as[])
    {
        NB.a(new back(NB, OE, dataholder, as));
    }

    public void onLeftRoom(int i, String s)
    {
        NB.a(new it>(NB, OD, i, s));
    }

    public void onP2PConnected(String s)
    {
        NB.a(new (NB, OE, s));
    }

    public void onP2PDisconnected(String s)
    {
        NB.a(new ack(NB, OE, s));
    }

    public void onRealTimeMessageReceived(RealTimeMessage realtimemessage)
    {
        NB.a(new ack(NB, OF, realtimemessage));
    }

    public void u(DataHolder dataholder)
    {
        NB.a(new <init>(NB, OD, dataholder));
    }

    public void v(DataHolder dataholder)
    {
        NB.a(new init>(NB, OD, dataholder));
    }

    public void w(DataHolder dataholder)
    {
        NB.a(new ck(NB, OE, dataholder));
    }

    public void x(DataHolder dataholder)
    {
        NB.a(new back(NB, OE, dataholder));
    }

    public void y(DataHolder dataholder)
    {
        NB.a(new k(NB, OD, dataholder));
    }

    public void z(DataHolder dataholder)
    {
        NB.a(new ack(NB, OE, dataholder));
    }

    public istener(GamesClientImpl gamesclientimpl, RoomUpdateListener roomupdatelistener)
    {
        NB = gamesclientimpl;
        super();
        OD = (RoomUpdateListener)hn.b(roomupdatelistener, "Callbacks must not be null");
        OE = null;
        OF = null;
    }

    public istener(GamesClientImpl gamesclientimpl, RoomUpdateListener roomupdatelistener, RoomStatusUpdateListener roomstatusupdatelistener, RealTimeMessageReceivedListener realtimemessagereceivedlistener)
    {
        NB = gamesclientimpl;
        super();
        OD = (RoomUpdateListener)hn.b(roomupdatelistener, "Callbacks must not be null");
        OE = roomstatusupdatelistener;
        OF = realtimemessagereceivedlistener;
    }
}
