// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
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

public class MapFragment extends Fragment
{
    static class a
        implements LifecycleDelegate
    {

        private final Fragment Mg;
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
            Bundle bundle1 = Mg.getArguments();
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
            Mg = (Fragment)hn.f(fragment);
        }
    }

    static class b extends com.google.android.gms.dynamic.a
    {

        private final Fragment Mg;
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
            ZC.a(new a(Mg, imapfragmentdelegate));
            return;
            RemoteException remoteexception;
            remoteexception;
            throw new RuntimeRemoteException(remoteexception);
            GooglePlayServicesNotAvailableException googleplayservicesnotavailableexception;
            googleplayservicesnotavailableexception;
        }

        b(Fragment fragment)
        {
            Mg = fragment;
        }
    }


    private GoogleMap ZA;
    private final b Zz = new b(this);

    public MapFragment()
    {
    }

    public static MapFragment newInstance()
    {
        return new MapFragment();
    }

    public static MapFragment newInstance(GoogleMapOptions googlemapoptions)
    {
        MapFragment mapfragment = new MapFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("MapOptions", googlemapoptions);
        mapfragment.setArguments(bundle);
        return mapfragment;
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
        Zz.ju();
        if (Zz.gC() == null)
        {
            return null;
        } else
        {
            return ((a)Zz.gC()).jt();
        }
    }

    public void onActivityCreated(Bundle bundle)
    {
        if (bundle != null)
        {
            bundle.setClassLoader(com/google/android/gms/maps/MapFragment.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        b.a(Zz, activity);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Zz.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return Zz.onCreateView(layoutinflater, viewgroup, bundle);
    }

    public void onDestroy()
    {
        Zz.onDestroy();
        super.onDestroy();
    }

    public void onDestroyView()
    {
        Zz.onDestroyView();
        super.onDestroyView();
    }

    public void onInflate(Activity activity, AttributeSet attributeset, Bundle bundle)
    {
        super.onInflate(activity, attributeset, bundle);
        b.a(Zz, activity);
        GoogleMapOptions googlemapoptions = GoogleMapOptions.createFromAttributes(activity, attributeset);
        Bundle bundle1 = new Bundle();
        bundle1.putParcelable("MapOptions", googlemapoptions);
        Zz.onInflate(activity, bundle1, bundle);
    }

    public void onLowMemory()
    {
        Zz.onLowMemory();
        super.onLowMemory();
    }

    public void onPause()
    {
        Zz.onPause();
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        Zz.onResume();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        if (bundle != null)
        {
            bundle.setClassLoader(com/google/android/gms/maps/MapFragment.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        Zz.onSaveInstanceState(bundle);
    }

    public void setArguments(Bundle bundle)
    {
        super.setArguments(bundle);
    }
}
