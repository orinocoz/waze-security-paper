// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.internal.hn;
import com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.RuntimeRemoteException;

// Referenced classes of package com.google.android.gms.maps:
//            CameraUpdate

public final class CameraUpdateFactory
{

    private static ICameraUpdateFactoryDelegate YV;

    private CameraUpdateFactory()
    {
    }

    static void a(ICameraUpdateFactoryDelegate icameraupdatefactorydelegate)
    {
        if (YV != null)
        {
            return;
        } else
        {
            YV = (ICameraUpdateFactoryDelegate)hn.f(icameraupdatefactorydelegate);
            return;
        }
    }

    private static ICameraUpdateFactoryDelegate jj()
    {
        return (ICameraUpdateFactoryDelegate)hn.b(YV, "CameraUpdateFactory is not initialized");
    }

    public static CameraUpdate newCameraPosition(CameraPosition cameraposition)
    {
        CameraUpdate cameraupdate;
        try
        {
            cameraupdate = new CameraUpdate(jj().newCameraPosition(cameraposition));
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return cameraupdate;
    }

    public static CameraUpdate newLatLng(LatLng latlng)
    {
        CameraUpdate cameraupdate;
        try
        {
            cameraupdate = new CameraUpdate(jj().newLatLng(latlng));
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return cameraupdate;
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds latlngbounds, int i)
    {
        CameraUpdate cameraupdate;
        try
        {
            cameraupdate = new CameraUpdate(jj().newLatLngBounds(latlngbounds, i));
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return cameraupdate;
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds latlngbounds, int i, int j, int k)
    {
        CameraUpdate cameraupdate;
        try
        {
            cameraupdate = new CameraUpdate(jj().newLatLngBoundsWithSize(latlngbounds, i, j, k));
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return cameraupdate;
    }

    public static CameraUpdate newLatLngZoom(LatLng latlng, float f)
    {
        CameraUpdate cameraupdate;
        try
        {
            cameraupdate = new CameraUpdate(jj().newLatLngZoom(latlng, f));
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return cameraupdate;
    }

    public static CameraUpdate scrollBy(float f, float f1)
    {
        CameraUpdate cameraupdate;
        try
        {
            cameraupdate = new CameraUpdate(jj().scrollBy(f, f1));
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return cameraupdate;
    }

    public static CameraUpdate zoomBy(float f)
    {
        CameraUpdate cameraupdate;
        try
        {
            cameraupdate = new CameraUpdate(jj().zoomBy(f));
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return cameraupdate;
    }

    public static CameraUpdate zoomBy(float f, Point point)
    {
        CameraUpdate cameraupdate;
        try
        {
            cameraupdate = new CameraUpdate(jj().zoomByWithFocus(f, point.x, point.y));
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return cameraupdate;
    }

    public static CameraUpdate zoomIn()
    {
        CameraUpdate cameraupdate;
        try
        {
            cameraupdate = new CameraUpdate(jj().zoomIn());
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return cameraupdate;
    }

    public static CameraUpdate zoomOut()
    {
        CameraUpdate cameraupdate;
        try
        {
            cameraupdate = new CameraUpdate(jj().zoomOut());
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return cameraupdate;
    }

    public static CameraUpdate zoomTo(float f)
    {
        CameraUpdate cameraupdate;
        try
        {
            cameraupdate = new CameraUpdate(jj().zoomTo(f));
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return cameraupdate;
    }
}
