// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.internal.gi;

// Referenced classes of package com.google.android.gms.cast:
//            Cast

class zU extends zU
{

    final N zT;
    final String zU;

    protected volatile void a(com.google.android.gms.common.api. )
        throws RemoteException
    {
        a((gi));
    }

    protected void a(gi gi1)
        throws RemoteException
    {
        try
        {
            gi1.b(zU, null, this);
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            N(2001);
        }
    }

    ( , String s)
    {
        zT = ;
        zU = s;
        super(null);
    }
}
