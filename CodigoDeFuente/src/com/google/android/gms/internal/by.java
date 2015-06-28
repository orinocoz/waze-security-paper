// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.a;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            ev, aj, bx, bz, 
//            am, bw

public final class by extends bv.a
{

    private final MediationAdapter nQ;

    public by(MediationAdapter mediationadapter)
    {
        nQ = mediationadapter;
    }

    private Bundle a(String s, int i, String s1)
        throws RemoteException
    {
        Bundle bundle;
        Bundle bundle1;
        ev.D((new StringBuilder()).append("Server parameters: ").append(s).toString());
        JSONObject jsonobject;
        Iterator iterator;
        String s2;
        try
        {
            bundle = new Bundle();
        }
        catch (Throwable throwable)
        {
            ev.c("Could not get Server Parameters Bundle.", throwable);
            throw new RemoteException();
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        jsonobject = new JSONObject(s);
        bundle1 = new Bundle();
        for (iterator = jsonobject.keys(); iterator.hasNext(); bundle1.putString(s2, jsonobject.getString(s2)))
        {
            s2 = (String)iterator.next();
        }

        bundle = bundle1;
        if (nQ instanceof AdMobAdapter)
        {
            bundle.putString("adJson", s1);
            bundle.putInt("tagForChildDirectedTreatment", i);
        }
        return bundle;
    }

    public void a(d d, aj aj1, String s, bw bw)
        throws RemoteException
    {
        a(d, aj1, s, null, bw);
    }

    public void a(d d, aj aj1, String s, String s1, bw bw)
        throws RemoteException
    {
        if (!(nQ instanceof MediationInterstitialAdapter))
        {
            ev.D((new StringBuilder()).append("MediationAdapter is not a MediationInterstitialAdapter: ").append(nQ.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        ev.z("Requesting interstitial ad from adapter.");
        MediationInterstitialAdapter mediationinterstitialadapter;
        HashSet hashset;
        mediationinterstitialadapter = (MediationInterstitialAdapter)nQ;
        if (aj1.lS == null)
        {
            break MISSING_BLOCK_LABEL_187;
        }
        hashset = new HashSet(aj1.lS);
_L1:
        bx bx1;
        Bundle bundle;
        bx1 = new bx(new Date(aj1.lQ), aj1.lR, hashset, aj1.lT, aj1.lU);
        bundle = aj1.ma;
        Bundle bundle1;
        bundle1 = null;
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        bundle1 = aj1.ma.getBundle(mediationinterstitialadapter.getClass().getName());
        mediationinterstitialadapter.requestInterstitialAd((Context)e.e(d), new bz(bw), a(s, aj1.lU, s1), bx1, bundle1);
        return;
        hashset = null;
          goto _L1
        Throwable throwable;
        throwable;
        ev.c("Could not request interstitial ad from adapter.", throwable);
        throw new RemoteException();
    }

    public void a(d d, am am1, aj aj1, String s, bw bw)
        throws RemoteException
    {
        a(d, am1, aj1, s, null, bw);
    }

    public void a(d d, am am1, aj aj1, String s, String s1, bw bw)
        throws RemoteException
    {
        if (!(nQ instanceof MediationBannerAdapter))
        {
            ev.D((new StringBuilder()).append("MediationAdapter is not a MediationBannerAdapter: ").append(nQ.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        ev.z("Requesting banner ad from adapter.");
        MediationBannerAdapter mediationbanneradapter;
        HashSet hashset;
        mediationbanneradapter = (MediationBannerAdapter)nQ;
        if (aj1.lS == null)
        {
            break MISSING_BLOCK_LABEL_203;
        }
        hashset = new HashSet(aj1.lS);
_L1:
        bx bx1;
        Bundle bundle;
        bx1 = new bx(new Date(aj1.lQ), aj1.lR, hashset, aj1.lT, aj1.lU);
        bundle = aj1.ma;
        Bundle bundle1;
        bundle1 = null;
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        bundle1 = aj1.ma.getBundle(mediationbanneradapter.getClass().getName());
        mediationbanneradapter.requestBannerAd((Context)e.e(d), new bz(bw), a(s, aj1.lU, s1), com.google.android.gms.ads.a.a(am1.width, am1.height, am1.mc), bx1, bundle1);
        return;
        hashset = null;
          goto _L1
        Throwable throwable;
        throwable;
        ev.c("Could not request banner ad from adapter.", throwable);
        throw new RemoteException();
    }

    public void destroy()
        throws RemoteException
    {
        try
        {
            nQ.onDestroy();
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
        if (!(nQ instanceof MediationBannerAdapter))
        {
            ev.D((new StringBuilder()).append("MediationAdapter is not a MediationBannerAdapter: ").append(nQ.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        d d;
        try
        {
            d = e.h(((MediationBannerAdapter)nQ).getBannerView());
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
        try
        {
            nQ.onPause();
            return;
        }
        catch (Throwable throwable)
        {
            ev.c("Could not pause adapter.", throwable);
        }
        throw new RemoteException();
    }

    public void resume()
        throws RemoteException
    {
        try
        {
            nQ.onResume();
            return;
        }
        catch (Throwable throwable)
        {
            ev.c("Could not resume adapter.", throwable);
        }
        throw new RemoteException();
    }

    public void showInterstitial()
        throws RemoteException
    {
        if (!(nQ instanceof MediationInterstitialAdapter))
        {
            ev.D((new StringBuilder()).append("MediationAdapter is not a MediationInterstitialAdapter: ").append(nQ.getClass().getCanonicalName()).toString());
            throw new RemoteException();
        }
        ev.z("Showing interstitial from adapter.");
        try
        {
            ((MediationInterstitialAdapter)nQ).showInterstitial();
            return;
        }
        catch (Throwable throwable)
        {
            ev.c("Could not show interstitial from adapter.", throwable);
        }
        throw new RemoteException();
    }
}
