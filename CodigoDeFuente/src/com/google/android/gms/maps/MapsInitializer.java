// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.internal.hn;
import com.google.android.gms.maps.internal.c;
import com.google.android.gms.maps.internal.u;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.RuntimeRemoteException;

// Referenced classes of package com.google.android.gms.maps:
//            CameraUpdateFactory

public final class MapsInitializer
{

    private MapsInitializer()
    {
    }

    public static void a(c c1)
    {
        try
        {
            CameraUpdateFactory.a(c1.jC());
            BitmapDescriptorFactory.a(c1.jD());
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public static int initialize(Context context)
    {
        hn.f(context);
        c c1;
        try
        {
            c1 = u.E(context);
        }
        catch (GooglePlayServicesNotAvailableException googleplayservicesnotavailableexception)
        {
            return googleplayservicesnotavailableexception.errorCode;
        }
        a(c1);
        return 0;
    }
}
