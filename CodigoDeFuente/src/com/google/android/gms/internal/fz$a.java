// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.internal:
//            fz

private static abstract class yx
    implements Result
{

    private final Status yw;
    protected final Object yx;

    public Status getStatus()
    {
        return yw;
    }

    public tus(Status status, Object obj)
    {
        yw = status;
        yx = obj;
    }
}
