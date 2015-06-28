// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.fragment;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.ll;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

// Referenced classes of package com.google.android.gms.wallet.fragment:
//            WalletFragmentOptions, SupportWalletFragment, WalletFragmentInitParams

private static class <init>
    implements LifecycleDelegate
{

    private final ll ako;

    static int a(<init> <init>1)
    {
        return <init>1.getState();
    }

    static void a(getState getstate, int i, int j, Intent intent)
    {
        getstate.onActivityResult(i, j, intent);
    }

    static void a(onActivityResult onactivityresult, MaskedWallet maskedwallet)
    {
        onactivityresult.updateMaskedWallet(maskedwallet);
    }

    static void a(updateMaskedWallet updatemaskedwallet, MaskedWalletRequest maskedwalletrequest)
    {
        updatemaskedwallet.updateMaskedWalletRequest(maskedwalletrequest);
    }

    static void a( , WalletFragmentInitParams walletfragmentinitparams)
    {
        .initialize(walletfragmentinitparams);
    }

    static void a( , boolean flag)
    {
        .setEnabled(flag);
    }

    private int getState()
    {
        int i;
        try
        {
            i = ako.getState();
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeException(remoteexception);
        }
        return i;
    }

    private void initialize(WalletFragmentInitParams walletfragmentinitparams)
    {
        try
        {
            ako.initialize(walletfragmentinitparams);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeException(remoteexception);
        }
    }

    private void onActivityResult(int i, int j, Intent intent)
    {
        try
        {
            ako.onActivityResult(i, j, intent);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeException(remoteexception);
        }
    }

    private void setEnabled(boolean flag)
    {
        try
        {
            ako.setEnabled(flag);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeException(remoteexception);
        }
    }

    private void updateMaskedWallet(MaskedWallet maskedwallet)
    {
        try
        {
            ako.updateMaskedWallet(maskedwallet);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeException(remoteexception);
        }
    }

    private void updateMaskedWalletRequest(MaskedWalletRequest maskedwalletrequest)
    {
        try
        {
            ako.updateMaskedWalletRequest(maskedwalletrequest);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeException(remoteexception);
        }
    }

    public void onCreate(Bundle bundle)
    {
        try
        {
            ako.onCreate(bundle);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeException(remoteexception);
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view;
        try
        {
            view = (View)e.e(ako.onCreateView(e.h(layoutinflater), e.h(viewgroup), bundle));
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeException(remoteexception);
        }
        return view;
    }

    public void onDestroy()
    {
    }

    public void onDestroyView()
    {
    }

    public void onInflate(Activity activity, Bundle bundle, Bundle bundle1)
    {
        WalletFragmentOptions walletfragmentoptions = (WalletFragmentOptions)bundle.getParcelable("extraWalletFragmentOptions");
        try
        {
            ako.a(e.h(activity), walletfragmentoptions, bundle1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeException(remoteexception);
        }
    }

    public void onLowMemory()
    {
    }

    public void onPause()
    {
        try
        {
            ako.onPause();
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeException(remoteexception);
        }
    }

    public void onResume()
    {
        try
        {
            ako.onResume();
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeException(remoteexception);
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        try
        {
            ako.onSaveInstanceState(bundle);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeException(remoteexception);
        }
    }

    public void onStart()
    {
        try
        {
            ako.onStart();
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeException(remoteexception);
        }
    }

    public void onStop()
    {
        try
        {
            ako.onStop();
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeException(remoteexception);
        }
    }

    private (ll ll1)
    {
        ako = ll1;
    }

    ako(ll ll1, ako ako1)
    {
        this(ll1);
    }
}
