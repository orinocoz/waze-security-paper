// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.os.Looper;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.common.api:
//            GoogleApiClient, BatchResultToken, Batch, PendingResult

public static final class t.getLooper
{

    private List DB;
    private Looper DC;

    public BatchResultToken add(PendingResult pendingresult)
    {
        BatchResultToken batchresulttoken = new BatchResultToken(DB.size());
        DB.add(pendingresult);
        return batchresulttoken;
    }

    public Batch build()
    {
        return new Batch(DB, DC, null);
    }

    public t(GoogleApiClient googleapiclient)
    {
        DB = new ArrayList();
        DC = googleapiclient.getLooper();
    }
}
