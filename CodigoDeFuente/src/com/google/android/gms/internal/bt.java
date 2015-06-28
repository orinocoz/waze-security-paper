// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.NetworkExtras;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            ca, by, ev, bv

public final class bt extends bu.a
{

    private Map nO;

    public bt()
    {
    }

    private bv n(String s)
        throws RemoteException
    {
        try
        {
            Class class1 = Class.forName(s, false, com/google/android/gms/internal/bt.getClassLoader());
            if (com/google/ads/mediation/MediationAdapter.isAssignableFrom(class1))
            {
                MediationAdapter mediationadapter = (MediationAdapter)class1.newInstance();
                return new ca(mediationadapter, (NetworkExtras)nO.get(mediationadapter.getAdditionalParametersType()));
            }
            if (com/google/android/gms/ads/mediation/MediationAdapter.isAssignableFrom(class1))
            {
                return new by((com.google.android.gms.ads.mediation.MediationAdapter)class1.newInstance());
            } else
            {
                ev.D((new StringBuilder()).append("Could not instantiate mediation adapter: ").append(s).append(" (not a valid adapter).").toString());
                throw new RemoteException();
            }
        }
        catch (Throwable throwable)
        {
            ev.D((new StringBuilder()).append("Could not instantiate mediation adapter: ").append(s).append(". ").append(throwable.getMessage()).toString());
        }
        throw new RemoteException();
    }

    public void c(Map map)
    {
        nO = map;
    }

    public bv m(String s)
        throws RemoteException
    {
        return n(s);
    }
}
