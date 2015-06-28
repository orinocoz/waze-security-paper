// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;

// Referenced classes of package com.google.android.gms.internal:
//            hn, ev, bw

public final class bz
    implements MediationBannerListener, MediationInterstitialListener
{

    private final bw nR;

    public bz(bw bw1)
    {
        nR = bw1;
    }

    public void onAdClicked(MediationBannerAdapter mediationbanneradapter)
    {
        hn.ay("onAdClicked must be called on the main UI thread.");
        ev.z("Adapter called onAdClicked.");
        try
        {
            nR.onAdClicked();
            return;
        }
        catch (RemoteException remoteexception)
        {
            ev.c("Could not call onAdClicked.", remoteexception);
        }
    }

    public void onAdClicked(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        hn.ay("onAdClicked must be called on the main UI thread.");
        ev.z("Adapter called onAdClicked.");
        try
        {
            nR.onAdClicked();
            return;
        }
        catch (RemoteException remoteexception)
        {
            ev.c("Could not call onAdClicked.", remoteexception);
        }
    }

    public void onAdClosed(MediationBannerAdapter mediationbanneradapter)
    {
        hn.ay("onAdClosed must be called on the main UI thread.");
        ev.z("Adapter called onAdClosed.");
        try
        {
            nR.onAdClosed();
            return;
        }
        catch (RemoteException remoteexception)
        {
            ev.c("Could not call onAdClosed.", remoteexception);
        }
    }

    public void onAdClosed(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        hn.ay("onAdClosed must be called on the main UI thread.");
        ev.z("Adapter called onAdClosed.");
        try
        {
            nR.onAdClosed();
            return;
        }
        catch (RemoteException remoteexception)
        {
            ev.c("Could not call onAdClosed.", remoteexception);
        }
    }

    public void onAdFailedToLoad(MediationBannerAdapter mediationbanneradapter, int i)
    {
        hn.ay("onAdFailedToLoad must be called on the main UI thread.");
        ev.z((new StringBuilder()).append("Adapter called onAdFailedToLoad with error. ").append(i).toString());
        try
        {
            nR.onAdFailedToLoad(i);
            return;
        }
        catch (RemoteException remoteexception)
        {
            ev.c("Could not call onAdFailedToLoad.", remoteexception);
        }
    }

    public void onAdFailedToLoad(MediationInterstitialAdapter mediationinterstitialadapter, int i)
    {
        hn.ay("onAdFailedToLoad must be called on the main UI thread.");
        ev.z((new StringBuilder()).append("Adapter called onAdFailedToLoad with error ").append(i).append(".").toString());
        try
        {
            nR.onAdFailedToLoad(i);
            return;
        }
        catch (RemoteException remoteexception)
        {
            ev.c("Could not call onAdFailedToLoad.", remoteexception);
        }
    }

    public void onAdLeftApplication(MediationBannerAdapter mediationbanneradapter)
    {
        hn.ay("onAdLeftApplication must be called on the main UI thread.");
        ev.z("Adapter called onAdLeftApplication.");
        try
        {
            nR.onAdLeftApplication();
            return;
        }
        catch (RemoteException remoteexception)
        {
            ev.c("Could not call onAdLeftApplication.", remoteexception);
        }
    }

    public void onAdLeftApplication(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        hn.ay("onAdLeftApplication must be called on the main UI thread.");
        ev.z("Adapter called onAdLeftApplication.");
        try
        {
            nR.onAdLeftApplication();
            return;
        }
        catch (RemoteException remoteexception)
        {
            ev.c("Could not call onAdLeftApplication.", remoteexception);
        }
    }

    public void onAdLoaded(MediationBannerAdapter mediationbanneradapter)
    {
        hn.ay("onAdLoaded must be called on the main UI thread.");
        ev.z("Adapter called onAdLoaded.");
        try
        {
            nR.onAdLoaded();
            return;
        }
        catch (RemoteException remoteexception)
        {
            ev.c("Could not call onAdLoaded.", remoteexception);
        }
    }

    public void onAdLoaded(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        hn.ay("onAdLoaded must be called on the main UI thread.");
        ev.z("Adapter called onAdLoaded.");
        try
        {
            nR.onAdLoaded();
            return;
        }
        catch (RemoteException remoteexception)
        {
            ev.c("Could not call onAdLoaded.", remoteexception);
        }
    }

    public void onAdOpened(MediationBannerAdapter mediationbanneradapter)
    {
        hn.ay("onAdOpened must be called on the main UI thread.");
        ev.z("Adapter called onAdOpened.");
        try
        {
            nR.onAdOpened();
            return;
        }
        catch (RemoteException remoteexception)
        {
            ev.c("Could not call onAdOpened.", remoteexception);
        }
    }

    public void onAdOpened(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        hn.ay("onAdOpened must be called on the main UI thread.");
        ev.z("Adapter called onAdOpened.");
        try
        {
            nR.onAdOpened();
            return;
        }
        catch (RemoteException remoteexception)
        {
            ev.c("Could not call onAdOpened.", remoteexception);
        }
    }
}
