// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.hn;

// Referenced classes of package com.google.android.gms.games.internal:
//            AbstractGamesCallbacks, GamesClientImpl

private final class OL extends AbstractGamesCallbacks
{

    final GamesClientImpl NB;
    private final com.google.android.gms.common.api.cks.OL OL;

    public void q(DataHolder dataholder)
    {
        OL.OL(new OL(dataholder));
    }

    public (GamesClientImpl gamesclientimpl, com.google.android.gms.common.api.cks cks)
    {
        NB = gamesclientimpl;
        super();
        OL = (com.google.android.gms.common.api.cks.OL)hn.b(cks, "Holder must not be null");
    }
}
