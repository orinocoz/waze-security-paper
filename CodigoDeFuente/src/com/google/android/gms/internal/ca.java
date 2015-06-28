// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.os.RemoteException;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ev, cb, aj, cc, 
//            bw, am

public final class ca extends bv.a
{

    private final MediationAdapter nS;
    private final NetworkExtras nT;

    public ca(MediationAdapter mediationadapter, NetworkExtras networkextras)
    {
        nS = mediationadapter;
        nT = networkextras;
    }

    private MediationServerParameters b(String s, int i, String s1)
        throws RemoteException
    {
        HashMap hashmap;
        if (s != null)
        {
            try
            {
                JSONObject jsonobject = new JSONObject(s);
                hashmap = new HashMap(jsonobject.length());
                String s2;
                for (Iterator iterator = jsonobject.keys(); iterator.hasNext(); hashmap.put(s2, jsonobject.getString(s2)))
                {
                    s2 = (String)iterator.next();
                }

            }
            catch (Throwable throwable)
            {
                ev.c("Could not get MediationServerParameters.", throwable);
                throw new RemoteException();
            }
            break MISSING_BLOCK_LABEL_104;
        }
        hashmap = new HashMap(0);
        Class class1 = nS.getServerParametersType();
        MediationServerParameters mediationserverparameters;
        mediationserverparameters = null;
        if (class1 == null)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        mediationserverparameters = (MediationServerParameters)class1.newInstance();
        mediationserverparameters.load(hashmap);
        return mediationserverparameters;
    }

    public void a(d d, aj aj1, String s, bw bw)
        throws RemoteException
    {
        a(d, aj1, s, null, bw);
    }

    public void a(d d, aj aj1, String s, String s1, bw bw)
        throws RemoteException
    {
        if (!(nS instanceof MediationInterstitialAdapter))
        {
            ev.D((new StringBuilder()).append("MediationAdapter is not a MediationInterstitialAdapter: ").append(nS.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        ev.z("Requesting interstitial ad from adapter.");
        try
        {
            ((MediationInterstitialAdapter)nS).requestInterstitialAd(new cb(bw), (Activity)e.e(d), b(s, aj1.lU, s1), com.google.android.gms.internal.cc.e(aj1), nT);
            return;
        }
        catch (Throwable throwable)
        {
            ev.c("Could not request interstitial ad from adapter.", throwable);
        }
        throw new RemoteException();
    }

    public void a(d d, am am, aj aj1, String s, bw bw)
        throws RemoteException
    {
        a(d, am, aj1, s, null, bw);
    }

    public void a(d d, am am, aj aj1, String s, String s1, bw bw)
        throws RemoteException
    {
        if (!(nS instanceof MediationBannerAdapter))
        {
            ev.D((new StringBuilder()).append("MediationAdapter is not a MediationBannerAdapter: ").append(nS.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        ev.z("Requesting banner ad from adapter.");
        try
        {
            ((MediationBannerAdapter)nS).requestBannerAd(new cb(bw), (Activity)e.e(d), b(s, aj1.lU, s1), cc.b(am), com.google.android.gms.internal.cc.e(aj1), nT);
            return;
        }
        catch (Throwable throwable)
        {
            ev.c("Could not request banner ad from adapter.", throwable);
        }
        throw new RemoteException();
    }

    public void destroy()
        throws RemoteException
    {
        try
        {
            nS.destroy();
            return;
        }
        catch (Throwable throwable)
        {
            ev.c("Could not destroy adapter.", throwable);
        }
        throw new RemoteException();
    }

    public d getView()
        throws RemoteException
    {
        if (!(nS instanceof MediationBannerAdapter))
        {
            ev.D((new StringBuilder()).append("MediationAdapter is not a MediationBannerAdapter: ").append(nS.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        d d;
        try
        {
            d = e.h(((MediationBannerAdapter)nS).getBannerView());
        }
        catch (Throwable throwable)
        {
            ev.c("Could not get banner view from adapter.", throwable);
            throw new RemoteException();
        }
        return d;
    }

    public void pause()
        throws RemoteException
    {
        throw new RemoteException();
    }

    public void resume()
        throws RemoteException
    {
        throw new RemoteException();
    }

    public void showInterstitial()
        throws RemoteException
    {
        if (!(nS instanceof MediationInterstitialAdapter))
        {
            ev.D((new StringBuilder()).append("MediationAdapter is not a MediationInterstitialAdapter: ").append(nS.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        ev.z("Showing interstitial from adapter.");
        try
        {
            ((MediationInterstitialAdapter)nS).showInterstitial();
            return;
        }
        catch (Throwable throwable)
        {
            ev.c("Could not show interstitial from adapter.", throwable);
        }
        throw new RemoteException();
    }
}
