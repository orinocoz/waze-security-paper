// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query;

import com.google.android.gms.drive.query.internal.LogicalFilter;
import com.google.android.gms.drive.query.internal.MatchAllFilter;
import com.google.android.gms.drive.query.internal.Operator;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.drive.query:
//            Query, SortOrder, Filter

public static class tor
{

    private String KC;
    private SortOrder KD;
    private final List KE = new ArrayList();

    public tor addFilter(Filter filter)
    {
        if (!(filter instanceof MatchAllFilter))
        {
            KE.add(filter);
        }
        return this;
    }

    public Query build()
    {
        return new Query(new LogicalFilter(Operator.Lc, KE), KC, KD);
    }

    public KD setPageToken(String s)
    {
        KC = s;
        return this;
    }

    public KC setSortOrder(SortOrder sortorder)
    {
        KD = sortorder;
        return this;
    }

    public tor()
    {
    }
}
