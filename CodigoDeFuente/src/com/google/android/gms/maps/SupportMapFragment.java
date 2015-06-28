// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.internal.hn;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.internal.c;
import com.google.android.gms.maps.internal.t;
import com.google.android.gms.maps.internal.u;
import com.google.android.gms.maps.model.RuntimeRemoteException;

// Referenced classes of package com.google.android.gms.maps:
//            GoogleMap, GoogleMapOptions, MapsInitializer

public class SupportMapFragment extends Fragment
{
    static class a
        implements LifecycleDelegate
    {

        private final Fragment FS;
        private final IMapFragmentDelegate ZB;

        public IMapFragmentDelegate jt()
        {
            return ZB;
        }

        public void onCreate(Bundle bundle)
        {
            if (bundle != null)
            {
                break MISSING_BLOCK_LABEL_12;
            }
            bundle = new Bundle();
            Bundle bundle1 = FS.getArguments();
            if (bundle1 == null)
            {
                break MISSING_BLOCK_LABEL_45;
            }
            if (bundle1.containsKey("MapOptions"))
            {
                t.a(bundle, "MapOptions", bundle1.getParcelable("MapOptions"));
            }
            ZB.onCreate(bundle);
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
                d = ZB.onCreateView(e.h(layoutinflater), e.h(viewgroup), bundle);
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
                ZB.onDestroy();
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
                ZB.onDestroyView();
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }

        public void onInflate(Activity activity, Bundle bundle, Bundle bundle1)
        {
            GoogleMapOptions googlemapoptions = (GoogleMapOptions)bundle.getParcelable("MapOptions");
            try
            {
                ZB.onInflate(e.h(activity), googlemapoptions, bundle1);
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
                ZB.onLowMemory();
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
                ZB.onPause();
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
                ZB.onResume();
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
                ZB.onSaveInstanceState(bundle);
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

        public a(Fragment fragment, IMapFragmentDelegate imapfragmentdelegate)
        {
            ZB = (IMapFragmentDelegate)hn.f(imapfragmentdelegate);
            FS = (Fragment)hn.f(fragment);
        }
    }

    static class b extends com.google.android.gms.dynamic.a
    {

        private final Fragment FS;
        protected f ZC;
        private Activity oe;

        static void a(b b1, Activity activity)
        {
            b1.setActivity(activity);
        }

        private void setActivity(Activity activity)
        {
            oe = activity;
            ju();
        }

        protected void a(f f1)
        {
            ZC = f1;
            ju();
        }

        public void ju()
        {
            if (oe == null || ZC == null || gC() != null)
            {
                break MISSING_BLOCK_LABEL_72;
            }
            MapsInitializer.initialize(oe);
            IMapFragmentDelegate imapfragmentdelegate = u.E(oe).i(e.h(oe));
            ZC.a(new a(FS, imapfragmentdelegate));
            return;
            RemoteException remoteexception;
            remoteexception;
            throw new RuntimeRemoteException(remoteexception);
            GooglePlayServicesNotAvailableException googleplayservicesnotavailableexception;
            googleplayservicesnotavailableexception;
        }

        b(Fragment fragment)
        {
            FS = fragment;
        }
    }


    private GoogleMap ZA;
    private final b aad = new b(this);

    public SupportMapFragment()
    {
    }

    public static SupportMapFragment newInstance()
    {
        return new SupportMapFragment();
    }

    public static SupportMapFragment newInstance(GoogleMapOptions googlemapoptions)
    {
        SupportMapFragment supportmapfragment = new SupportMapFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("MapOptions", googlemapoptions);
        supportmapfragment.setArguments(bundle);
        return supportmapfragment;
    }

    public final GoogleMap getMap()
    {
        IMapFragmentDelegate imapfragmentdelegate = jt();
        if (imapfragmentdelegate != null)
        {
            IGoogleMapDelegate igooglemapdelegate;
            try
            {
                igooglemapdelegate = imapfragmentdelegate.getMap();
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
            if (igooglemapdelegate != null)
            {
                if (ZA == null || ZA.jk().asBinder() != igooglemapdelegate.asBinder())
                {
                    ZA = new GoogleMap(igooglemapdelegate);
                }
                return ZA;
            }
        }
        return null;
    }

    protected IMapFragmentDelegate jt()
    {
        aad.ju();
        if (aad.gC() == null)
        {
            return null;
        } else
        {
            return ((a)aad.gC()).jt();
        }
    }

    public void onActivityCreated(Bundle bundle)
    {
        if (bundle != null)
        {
            bundle.setClassLoader(com/google/android/gms/maps/SupportMapFragment.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        b.a(aad, activity);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        aad.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return aad.onCreateView(layoutinflater, viewgroup, bundle);
    }

    public void onDestroy()
    {
        aad.onDestroy();
        super.onDestroy();
    }

    public void onDestroyView()
    {
        aad.onDestroyView();
        super.onDestroyView();
    }

    public void onInflate(Activity activity, AttributeSet attributeset, Bundle bundle)
    {
        super.onInflate(activity, attributeset, bundle);
        b.a(aad, activity);
        GoogleMapOptions googlemapoptions = GoogleMapOptions.createFromAttributes(activity, attributeset);
        Bundle bundle1 = new Bundle();
        bundle1.putParcelable("MapOptions", googlemapoptions);
        aad.onInflate(activity, bundle1, bundle);
    }

    public void onLowMemory()
    {
        aad.onLowMemory();
        super.onLowMemory();
    }

    public void onPause()
    {
        aad.onPause();
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        aad.onResume();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        if (bundle != null)
        {
            bundle.setClassLoader(com/google/android/gms/maps/SupportMapFragment.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        aad.onSaveInstanceState(bundle);
    }

    public void setArguments(Bundle bundle)
    {
        super.setArguments(bundle);
    }
}
