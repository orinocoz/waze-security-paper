// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Handler;
import android.os.RemoteException;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;

// Referenced classes of package com.google.android.gms.internal:
//            ev, eu, bw, cc

public final class cb
    implements MediationBannerListener, MediationInterstitialListener
{

    private final bw nR;

    public cb(bw bw1)
    {
        nR = bw1;
    }

    static bw a(cb cb1)
    {
        return cb1.nR;
    }

    public void onClick(MediationBannerAdapter mediationbanneradapter)
    {
        ev.z("Adapter called onClick.");
        if (!eu.bR())
        {
            ev.D("onClick must be called on the main UI thread.");
            eu.ss.post(new Runnable() {

                final cb nU;

                public void run()
                {
                    try
                    {
                        cb.a(nU).onAdClicked();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        ev.c("Could not call onAdClicked.", remoteexception1);
                    }
                }

            
            {
                nU = cb.this;
                super();
            }
            });
            return;
        }
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

    public void onDismissScreen(MediationBannerAdapter mediationbanneradapter)
    {
        ev.z("Adapter called onDismissScreen.");
        if (!eu.bR())
        {
            ev.D("onDismissScreen must be called on the main UI thread.");
            eu.ss.post(new Runnable() {

                final cb nU;

                public void run()
                {
                    try
                    {
                        cb.a(nU).onAdClosed();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        ev.c("Could not call onAdClosed.", remoteexception1);
                    }
                }

            
            {
                nU = cb.this;
                super();
            }
            });
            return;
        }
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

    public void onDismissScreen(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        ev.z("Adapter called onDismissScreen.");
        if (!eu.bR())
        {
            ev.D("onDismissScreen must be called on the main UI thread.");
            eu.ss.post(new Runnable() {

                final cb nU;

                public void run()
                {
                    try
                    {
                        cb.a(nU).onAdClosed();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        ev.c("Could not call onAdClosed.", remoteexception1);
                    }
                }

            
            {
                nU = cb.this;
                super();
            }
            });
            return;
        }
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

    public void onFailedToReceiveAd(MediationBannerAdapter mediationbanneradapter, com.google.ads.AdRequest.ErrorCode errorcode)
    {
        ev.z((new StringBuilder()).append("Adapter called onFailedToReceiveAd with error. ").append(errorcode).toString());
        if (!eu.bR())
        {
            ev.D("onFailedToReceiveAd must be called on the main UI thread.");
            eu.ss.post(new Runnable(errorcode) {

                final cb nU;
                final com.google.ads.AdRequest.ErrorCode nV;

                public void run()
                {
                    try
                    {
                        cb.a(nU).onAdFailedToLoad(cc.a(nV));
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        ev.c("Could not call onAdFailedToLoad.", remoteexception1);
                    }
                }

            
            {
                nU = cb.this;
                nV = errorcode;
                super();
            }
            });
            return;
        }
        try
        {
            nR.onAdFailedToLoad(cc.a(errorcode));
            return;
        }
        catch (RemoteException remoteexception)
        {
            ev.c("Could not call onAdFailedToLoad.", remoteexception);
        }
    }

    public void onFailedToReceiveAd(MediationInterstitialAdapter mediationinterstitialadapter, com.google.ads.AdRequest.ErrorCode errorcode)
    {
        ev.z((new StringBuilder()).append("Adapter called onFailedToReceiveAd with error ").append(errorcode).append(".").toString());
        if (!eu.bR())
        {
            ev.D("onFailedToReceiveAd must be called on the main UI thread.");
            eu.ss.post(new Runnable(errorcode) {

                final cb nU;
                final com.google.ads.AdRequest.ErrorCode nV;

                public void run()
                {
                    try
                    {
                        cb.a(nU).onAdFailedToLoad(cc.a(nV));
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        ev.c("Could not call onAdFailedToLoad.", remoteexception1);
                    }
                }

            
            {
                nU = cb.this;
                nV = errorcode;
                super();
            }
            });
            return;
        }
        try
        {
            nR.onAdFailedToLoad(cc.a(errorcode));
            return;
        }
        catch (RemoteException remoteexception)
        {
            ev.c("Could not call onAdFailedToLoad.", remoteexception);
        }
    }

    public void onLeaveApplication(MediationBannerAdapter mediationbanneradapter)
    {
        ev.z("Adapter called onLeaveApplication.");
        if (!eu.bR())
        {
            ev.D("onLeaveApplication must be called on the main UI thread.");
            eu.ss.post(new Runnable() {

                final cb nU;

                public void run()
                {
                    try
                    {
                        cb.a(nU).onAdLeftApplication();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        ev.c("Could not call onAdLeftApplication.", remoteexception1);
                    }
                }

            
            {
                nU = cb.this;
                super();
            }
            });
            return;
        }
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

    public void onLeaveApplication(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        ev.z("Adapter called onLeaveApplication.");
        if (!eu.bR())
        {
            ev.D("onLeaveApplication must be called on the main UI thread.");
            eu.ss.post(new Runnable() {

                final cb nU;

                public void run()
                {
                    try
                    {
                        cb.a(nU).onAdLeftApplication();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        ev.c("Could not call onAdLeftApplication.", remoteexception1);
                    }
                }

            
            {
                nU = cb.this;
                super();
            }
            });
            return;
        }
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

    public void onPresentScreen(MediationBannerAdapter mediationbanneradapter)
    {
        ev.z("Adapter called onPresentScreen.");
        if (!eu.bR())
        {
            ev.D("onPresentScreen must be called on the main UI thread.");
            eu.ss.post(new Runnable() {

                final cb nU;

                public void run()
                {
                    try
                    {
                        cb.a(nU).onAdOpened();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        ev.c("Could not call onAdOpened.", remoteexception1);
                    }
                }

            
            {
                nU = cb.this;
                super();
            }
            });
            return;
        }
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

    public void onPresentScreen(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        ev.z("Adapter called onPresentScreen.");
        if (!eu.bR())
        {
            ev.D("onPresentScreen must be called on the main UI thread.");
            eu.ss.post(new Runnable() {

                final cb nU;

                public void run()
                {
                    try
                    {
                        cb.a(nU).onAdOpened();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        ev.c("Could not call onAdOpened.", remoteexception1);
                    }
                }

            
            {
                nU = cb.this;
                super();
            }
            });
            return;
        }
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

    public void onReceivedAd(MediationBannerAdapter mediationbanneradapter)
    {
        ev.z("Adapter called onReceivedAd.");
        if (!eu.bR())
        {
            ev.D("onReceivedAd must be called on the main UI thread.");
            eu.ss.post(new Runnable() {

                final cb nU;

                public void run()
                {
                    try
                    {
                        cb.a(nU).onAdLoaded();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        ev.c("Could not call onAdLoaded.", remoteexception1);
                    }
                }

            
            {
                nU = cb.this;
                super();
            }
            });
            return;
        }
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

    public void onReceivedAd(MediationInterstitialAdapter mediationinterstitialadapter)
    {
        ev.z("Adapter called onReceivedAd.");
        if (!eu.bR())
        {
            ev.D("onReceivedAd must be called on the main UI thread.");
            eu.ss.post(new Runnable() {

                final cb nU;

                public void run()
                {
                    try
                    {
                        cb.a(nU).onAdLoaded();
                        return;
                    }
                    catch (RemoteException remoteexception1)
                    {
                        ev.c("Could not call onAdLoaded.", remoteexception1);
                    }
                }

            
            {
                nU = cb.this;
                super();
            }
            });
            return;
        }
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
}
