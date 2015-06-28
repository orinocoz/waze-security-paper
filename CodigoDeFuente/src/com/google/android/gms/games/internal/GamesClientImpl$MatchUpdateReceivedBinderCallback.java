// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchBuffer;

// Referenced classes of package com.google.android.gms.games.internal:
//            AbstractGamesCallbacks, GamesClientImpl

private final class Og extends AbstractGamesCallbacks
{

    final GamesClientImpl NB;
    private final OnTurnBasedMatchUpdateReceivedListener Og;

    public void onTurnBasedMatchRemoved(String s)
    {
        NB.a(new NB(NB, Og, s));
    }

    public void t(DataHolder dataholder)
    {
        TurnBasedMatchBuffer turnbasedmatchbuffer = new TurnBasedMatchBuffer(dataholder);
        int i = turnbasedmatchbuffer.getCount();
        TurnBasedMatch turnbasedmatch;
        turnbasedmatch = null;
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        turnbasedmatch = (TurnBasedMatch)((TurnBasedMatch)turnbasedmatchbuffer.get(0)).freeze();
        turnbasedmatchbuffer.close();
        if (turnbasedmatch != null)
        {
            NB.a(new (NB, Og, turnbasedmatch));
        }
        return;
        Exception exception;
        exception;
        turnbasedmatchbuffer.close();
        throw exception;
    }

    r(GamesClientImpl gamesclientimpl, OnTurnBasedMatchUpdateReceivedListener onturnbasedmatchupdatereceivedlistener)
    {
        NB = gamesclientimpl;
        super();
        Og = onturnbasedmatchupdatereceivedlistener;
    }
}
