// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.b;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class NG extends b
    implements com.google.android.gms.games.snapshot.NG
{

    private final SnapshotMetadata NG = null;

    public SnapshotMetadata getSnapshotMetadata()
    {
        return NG;
    }

    (DataHolder dataholder)
    {
        SnapshotMetadataBuffer snapshotmetadatabuffer;
        super(dataholder);
        snapshotmetadatabuffer = new SnapshotMetadataBuffer(dataholder);
        if (snapshotmetadatabuffer.getCount() <= 0) goto _L2; else goto _L1
_L1:
        NG = new SnapshotMetadataEntity(snapshotmetadatabuffer.get(0));
_L4:
        snapshotmetadatabuffer.close();
        return;
_L2:
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        snapshotmetadatabuffer.close();
        throw exception;
    }
}
