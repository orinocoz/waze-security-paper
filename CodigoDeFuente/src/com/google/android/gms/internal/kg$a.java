// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.internal:
//            kd, kg

private static final class yO extends yO
{

    private final com.google.android.gms.common.api.s yO;

    public void a(int i, Bundle bundle, int j, Intent intent)
    {
        PendingIntent pendingintent;
        Status status;
        if (bundle != null)
        {
            pendingintent = (PendingIntent)bundle.getParcelable("pendingIntent");
        } else
        {
            pendingintent = null;
        }
        status = new Status(i, null, pendingintent);
        yO.(new kd(status, intent, j));
    }

    public (com.google.android.gms.common.api.s s)
    {
        yO = s;
    }
}
