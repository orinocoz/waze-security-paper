// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.hn;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.internal.t;
import com.google.android.gms.maps.model.RuntimeRemoteException;

// Referenced classes of package com.google.android.gms.maps:
//            StreetViewPanoramaFragment

static class Mg
    implements LifecycleDelegate
{

    private final Fragment Mg;
    private final IStreetViewPanoramaFragmentDelegate ZR;

    public IStreetViewPanoramaFragmentDelegate jx()
    {
        return ZR;
    }

    public void onCreate(Bundle bundle)
    {
        if (bundle != null)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        bundle = new Bundle();
        Bundle bundle1 = Mg.getArguments();
        if (bundle1 == null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        if (bundle1.containsKey("StreetViewPanoramaOptions"))
        {
            t.a(bundle, "StreetViewPanoramaOptions", bundle1.getParcelable("StreetViewPanoramaOptions"));
        }
        ZR.onCreate(bundle);
        return;
        RemoteException remoteexception;
        remoteexception;
        throw new RuntimeRemoteException(remoteexception);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        com.google.android.gms.dynamic.d d;
        try
        {
            d = ZR.onCreateView(e.h(layoutinflater), e.h(viewgroup), bundle);
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return (View)e.e(d);
    }

    public void onDestroy()
    {
        try
        {
            ZR.onDestroy();
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public void onDestroyView()
    {
        try
        {
            ZR.onDestroyView();
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public void onInflate(Activity activity, Bundle bundle, Bundle bundle1)
    {
        try
        {
            ZR.onInflate(e.h(activity), null, bundle1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public void onLowMemory()
    {
        try
        {
            ZR.onLowMemory();
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public void onPause()
    {
        try
        {
            ZR.onPause();
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public void onResume()
    {
        try
        {
            ZR.onResume();
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        try
        {
            ZR.onSaveInstanceState(bundle);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public void onStart()
    {
    }

    public void onStop()
    {
    }

    public ragmentDelegate(Fragment fragment, IStreetViewPanoramaFragmentDelegate istreetviewpanoramafragmentdelegate)
    {
        ZR = (IStreetViewPanoramaFragmentDelegate)hn.f(istreetviewpanoramafragmentdelegate);
        Mg = (Fragment)hn.f(fragment);
    }
}
