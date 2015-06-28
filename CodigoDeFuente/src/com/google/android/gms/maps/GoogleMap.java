// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.location.Location;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.hn;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.h;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.Circle;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlay;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.IndoorBuilding;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.Polygon;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.Polyline;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.TileOverlay;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.internal.d;
import com.google.android.gms.maps.model.internal.f;

// Referenced classes of package com.google.android.gms.maps:
//            CameraUpdate, Projection, UiSettings, LocationSource

public final class GoogleMap
{
    public static interface CancelableCallback
    {

        public abstract void onCancel();

        public abstract void onFinish();
    }

    public static interface InfoWindowAdapter
    {

        public abstract View getInfoContents(Marker marker);

        public abstract View getInfoWindow(Marker marker);
    }

    public static interface OnCameraChangeListener
    {

        public abstract void onCameraChange(CameraPosition cameraposition);
    }

    public static interface OnIndoorStateChangeListener
    {

        public abstract void onIndoorBuildingFocused();

        public abstract void onIndoorLevelActivated(IndoorBuilding indoorbuilding);
    }

    public static interface OnInfoWindowClickListener
    {

        public abstract void onInfoWindowClick(Marker marker);
    }

    public static interface OnMapClickListener
    {

        public abstract void onMapClick(LatLng latlng);
    }

    public static interface OnMapLoadedCallback
    {

        public abstract void onMapLoaded();
    }

    public static interface OnMapLongClickListener
    {

        public abstract void onMapLongClick(LatLng latlng);
    }

    public static interface OnMarkerClickListener
    {

        public abstract boolean onMarkerClick(Marker marker);
    }

    public static interface OnMarkerDragListener
    {

        public abstract void onMarkerDrag(Marker marker);

        public abstract void onMarkerDragEnd(Marker marker);

        public abstract void onMarkerDragStart(Marker marker);
    }

    public static interface OnMyLocationButtonClickListener
    {

        public abstract boolean onMyLocationButtonClick();
    }

    public static interface OnMyLocationChangeListener
    {

        public abstract void onMyLocationChange(Location location);
    }

    public static interface SnapshotReadyCallback
    {

        public abstract void onSnapshotReady(Bitmap bitmap);
    }

    private static final class a extends com.google.android.gms.maps.internal.b.a
    {

        private final CancelableCallback Zo;

        public void onCancel()
        {
            Zo.onCancel();
        }

        public void onFinish()
        {
            Zo.onFinish();
        }

        a(CancelableCallback cancelablecallback)
        {
            Zo = cancelablecallback;
        }
    }


    public static final int MAP_TYPE_HYBRID = 4;
    public static final int MAP_TYPE_NONE = 0;
    public static final int MAP_TYPE_NORMAL = 1;
    public static final int MAP_TYPE_SATELLITE = 2;
    public static final int MAP_TYPE_TERRAIN = 3;
    private final IGoogleMapDelegate YW;
    private UiSettings YX;

    protected GoogleMap(IGoogleMapDelegate igooglemapdelegate)
    {
        YW = (IGoogleMapDelegate)hn.f(igooglemapdelegate);
    }

    public final Circle addCircle(CircleOptions circleoptions)
    {
        Circle circle;
        try
        {
            circle = new Circle(YW.addCircle(circleoptions));
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return circle;
    }

    public final GroundOverlay addGroundOverlay(GroundOverlayOptions groundoverlayoptions)
    {
        com.google.android.gms.maps.model.internal.c c;
        GroundOverlay groundoverlay;
        try
        {
            c = YW.addGroundOverlay(groundoverlayoptions);
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        groundoverlay = new GroundOverlay(c);
        return groundoverlay;
        return null;
    }

    public final Marker addMarker(MarkerOptions markeroptions)
    {
        f f;
        Marker marker;
        try
        {
            f = YW.addMarker(markeroptions);
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        if (f == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        marker = new Marker(f);
        return marker;
        return null;
    }

    public final Polygon addPolygon(PolygonOptions polygonoptions)
    {
        Polygon polygon;
        try
        {
            polygon = new Polygon(YW.addPolygon(polygonoptions));
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return polygon;
    }

    public final Polyline addPolyline(PolylineOptions polylineoptions)
    {
        Polyline polyline;
        try
        {
            polyline = new Polyline(YW.addPolyline(polylineoptions));
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return polyline;
    }

    public final TileOverlay addTileOverlay(TileOverlayOptions tileoverlayoptions)
    {
        com.google.android.gms.maps.model.internal.h h;
        TileOverlay tileoverlay;
        try
        {
            h = YW.addTileOverlay(tileoverlayoptions);
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        if (h == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        tileoverlay = new TileOverlay(h);
        return tileoverlay;
        return null;
    }

    public final void animateCamera(CameraUpdate cameraupdate)
    {
        try
        {
            YW.animateCamera(cameraupdate.ji());
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public final void animateCamera(CameraUpdate cameraupdate, int i, CancelableCallback cancelablecallback)
    {
        IGoogleMapDelegate igooglemapdelegate;
        com.google.android.gms.dynamic.d d;
        Object obj;
        try
        {
            igooglemapdelegate = YW;
            d = cameraupdate.ji();
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        if (cancelablecallback != null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        obj = null;
        igooglemapdelegate.animateCameraWithDurationAndCallback(d, i, ((com.google.android.gms.maps.internal.b) (obj)));
        return;
        obj = new a(cancelablecallback);
        break MISSING_BLOCK_LABEL_19;
    }

    public final void animateCamera(CameraUpdate cameraupdate, CancelableCallback cancelablecallback)
    {
        IGoogleMapDelegate igooglemapdelegate;
        com.google.android.gms.dynamic.d d;
        Object obj;
        try
        {
            igooglemapdelegate = YW;
            d = cameraupdate.ji();
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        if (cancelablecallback != null)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        obj = null;
        igooglemapdelegate.animateCameraWithCallback(d, ((com.google.android.gms.maps.internal.b) (obj)));
        return;
        obj = new a(cancelablecallback);
        break MISSING_BLOCK_LABEL_19;
    }

    public final void clear()
    {
        try
        {
            YW.clear();
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public final CameraPosition getCameraPosition()
    {
        CameraPosition cameraposition;
        try
        {
            cameraposition = YW.getCameraPosition();
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return cameraposition;
    }

    public IndoorBuilding getFocusedBuilding()
    {
        d d;
        IndoorBuilding indoorbuilding;
        try
        {
            d = YW.getFocusedBuilding();
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        indoorbuilding = new IndoorBuilding(d);
        return indoorbuilding;
        return null;
    }

    public final int getMapType()
    {
        int i;
        try
        {
            i = YW.getMapType();
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return i;
    }

    public final float getMaxZoomLevel()
    {
        float f;
        try
        {
            f = YW.getMaxZoomLevel();
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return f;
    }

    public final float getMinZoomLevel()
    {
        float f;
        try
        {
            f = YW.getMinZoomLevel();
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return f;
    }

    public final Location getMyLocation()
    {
        Location location;
        try
        {
            location = YW.getMyLocation();
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return location;
    }

    public final Projection getProjection()
    {
        Projection projection;
        try
        {
            projection = new Projection(YW.getProjection());
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return projection;
    }

    public final UiSettings getUiSettings()
    {
        UiSettings uisettings;
        try
        {
            if (YX == null)
            {
                YX = new UiSettings(YW.getUiSettings());
            }
            uisettings = YX;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return uisettings;
    }

    public final boolean isBuildingsEnabled()
    {
        boolean flag;
        try
        {
            flag = YW.isBuildingsEnabled();
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return flag;
    }

    public final boolean isIndoorEnabled()
    {
        boolean flag;
        try
        {
            flag = YW.isIndoorEnabled();
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return flag;
    }

    public final boolean isMyLocationEnabled()
    {
        boolean flag;
        try
        {
            flag = YW.isMyLocationEnabled();
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return flag;
    }

    public final boolean isTrafficEnabled()
    {
        boolean flag;
        try
        {
            flag = YW.isTrafficEnabled();
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return flag;
    }

    IGoogleMapDelegate jk()
    {
        return YW;
    }

    public final void moveCamera(CameraUpdate cameraupdate)
    {
        try
        {
            YW.moveCamera(cameraupdate.ji());
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public final void setBuildingsEnabled(boolean flag)
    {
        try
        {
            YW.setBuildingsEnabled(flag);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public final boolean setIndoorEnabled(boolean flag)
    {
        boolean flag1;
        try
        {
            flag1 = YW.setIndoorEnabled(flag);
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
        return flag1;
    }

    public final void setInfoWindowAdapter(InfoWindowAdapter infowindowadapter)
    {
        if (infowindowadapter == null)
        {
            try
            {
                YW.setInfoWindowAdapter(null);
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }
        YW.setInfoWindowAdapter(new com.google.android.gms.maps.internal.d.a(infowindowadapter) {

            final GoogleMap YZ;
            final InfoWindowAdapter Zn;

            public com.google.android.gms.dynamic.d f(f f1)
            {
                return e.h(Zn.getInfoWindow(new Marker(f1)));
            }

            public com.google.android.gms.dynamic.d g(f f1)
            {
                return e.h(Zn.getInfoContents(new Marker(f1)));
            }

            
            {
                YZ = GoogleMap.this;
                Zn = infowindowadapter;
                super();
            }
        });
        return;
    }

    public final void setLocationSource(LocationSource locationsource)
    {
        if (locationsource == null)
        {
            try
            {
                YW.setLocationSource(null);
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }
        YW.setLocationSource(new com.google.android.gms.maps.internal.ILocationSourceDelegate.a(locationsource) {

            final GoogleMap YZ;
            final LocationSource Ze;

            public void activate(h h)
            {
                Ze.activate(new LocationSource.OnLocationChangedListener(this, h) {

                    final h Zf;
                    final _cls6 Zg;

                    public void onLocationChanged(Location location)
                    {
                        try
                        {
                            Zf.k(e.h(location));
                            return;
                        }
                        catch (RemoteException remoteexception)
                        {
                            throw new RuntimeRemoteException(remoteexception);
                        }
                    }

            
            {
                Zg = _pcls6;
                Zf = h1;
                super();
            }
                });
            }

            public void deactivate()
            {
                Ze.deactivate();
            }

            
            {
                YZ = GoogleMap.this;
                Ze = locationsource;
                super();
            }
        });
        return;
    }

    public final void setMapType(int i)
    {
        try
        {
            YW.setMapType(i);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public final void setMyLocationEnabled(boolean flag)
    {
        try
        {
            YW.setMyLocationEnabled(flag);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public final void setOnCameraChangeListener(OnCameraChangeListener oncamerachangelistener)
    {
        if (oncamerachangelistener == null)
        {
            try
            {
                YW.setOnCameraChangeListener(null);
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }
        YW.setOnCameraChangeListener(new com.google.android.gms.maps.internal.e.a(oncamerachangelistener) {

            final GoogleMap YZ;
            final OnCameraChangeListener Zh;

            public void onCameraChange(CameraPosition cameraposition)
            {
                Zh.onCameraChange(cameraposition);
            }

            
            {
                YZ = GoogleMap.this;
                Zh = oncamerachangelistener;
                super();
            }
        });
        return;
    }

    public final void setOnIndoorStateChangeListener(OnIndoorStateChangeListener onindoorstatechangelistener)
    {
        if (onindoorstatechangelistener == null)
        {
            try
            {
                YW.setOnIndoorStateChangeListener(null);
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }
        YW.setOnIndoorStateChangeListener(new com.google.android.gms.maps.internal.f.a(onindoorstatechangelistener) {

            final OnIndoorStateChangeListener YY;
            final GoogleMap YZ;

            public void a(d d)
            {
                YY.onIndoorLevelActivated(new IndoorBuilding(d));
            }

            public void onIndoorBuildingFocused()
            {
                YY.onIndoorBuildingFocused();
            }

            
            {
                YZ = GoogleMap.this;
                YY = onindoorstatechangelistener;
                super();
            }
        });
        return;
    }

    public final void setOnInfoWindowClickListener(OnInfoWindowClickListener oninfowindowclicklistener)
    {
        if (oninfowindowclicklistener == null)
        {
            try
            {
                YW.setOnInfoWindowClickListener(null);
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }
        YW.setOnInfoWindowClickListener(new com.google.android.gms.maps.internal.g.a(oninfowindowclicklistener) {

            final GoogleMap YZ;
            final OnInfoWindowClickListener Zm;

            public void e(f f)
            {
                Zm.onInfoWindowClick(new Marker(f));
            }

            
            {
                YZ = GoogleMap.this;
                Zm = oninfowindowclicklistener;
                super();
            }
        });
        return;
    }

    public final void setOnMapClickListener(OnMapClickListener onmapclicklistener)
    {
        if (onmapclicklistener == null)
        {
            try
            {
                YW.setOnMapClickListener(null);
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }
        YW.setOnMapClickListener(new com.google.android.gms.maps.internal.i.a(onmapclicklistener) {

            final GoogleMap YZ;
            final OnMapClickListener Zi;

            public void onMapClick(LatLng latlng)
            {
                Zi.onMapClick(latlng);
            }

            
            {
                YZ = GoogleMap.this;
                Zi = onmapclicklistener;
                super();
            }
        });
        return;
    }

    public void setOnMapLoadedCallback(OnMapLoadedCallback onmaploadedcallback)
    {
        if (onmaploadedcallback == null)
        {
            try
            {
                YW.setOnMapLoadedCallback(null);
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }
        YW.setOnMapLoadedCallback(new com.google.android.gms.maps.internal.j.a(onmaploadedcallback) {

            final GoogleMap YZ;
            final OnMapLoadedCallback Zc;

            public void onMapLoaded()
                throws RemoteException
            {
                Zc.onMapLoaded();
            }

            
            {
                YZ = GoogleMap.this;
                Zc = onmaploadedcallback;
                super();
            }
        });
        return;
    }

    public final void setOnMapLongClickListener(OnMapLongClickListener onmaplongclicklistener)
    {
        if (onmaplongclicklistener == null)
        {
            try
            {
                YW.setOnMapLongClickListener(null);
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }
        YW.setOnMapLongClickListener(new com.google.android.gms.maps.internal.k.a(onmaplongclicklistener) {

            final GoogleMap YZ;
            final OnMapLongClickListener Zj;

            public void onMapLongClick(LatLng latlng)
            {
                Zj.onMapLongClick(latlng);
            }

            
            {
                YZ = GoogleMap.this;
                Zj = onmaplongclicklistener;
                super();
            }
        });
        return;
    }

    public final void setOnMarkerClickListener(OnMarkerClickListener onmarkerclicklistener)
    {
        if (onmarkerclicklistener == null)
        {
            try
            {
                YW.setOnMarkerClickListener(null);
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }
        YW.setOnMarkerClickListener(new com.google.android.gms.maps.internal.l.a(onmarkerclicklistener) {

            final GoogleMap YZ;
            final OnMarkerClickListener Zk;

            public boolean a(f f)
            {
                return Zk.onMarkerClick(new Marker(f));
            }

            
            {
                YZ = GoogleMap.this;
                Zk = onmarkerclicklistener;
                super();
            }
        });
        return;
    }

    public final void setOnMarkerDragListener(OnMarkerDragListener onmarkerdraglistener)
    {
        if (onmarkerdraglistener == null)
        {
            try
            {
                YW.setOnMarkerDragListener(null);
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }
        YW.setOnMarkerDragListener(new com.google.android.gms.maps.internal.m.a(onmarkerdraglistener) {

            final GoogleMap YZ;
            final OnMarkerDragListener Zl;

            public void b(f f)
            {
                Zl.onMarkerDragStart(new Marker(f));
            }

            public void c(f f)
            {
                Zl.onMarkerDragEnd(new Marker(f));
            }

            public void d(f f)
            {
                Zl.onMarkerDrag(new Marker(f));
            }

            
            {
                YZ = GoogleMap.this;
                Zl = onmarkerdraglistener;
                super();
            }
        });
        return;
    }

    public final void setOnMyLocationButtonClickListener(OnMyLocationButtonClickListener onmylocationbuttonclicklistener)
    {
        if (onmylocationbuttonclicklistener == null)
        {
            try
            {
                YW.setOnMyLocationButtonClickListener(null);
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }
        YW.setOnMyLocationButtonClickListener(new com.google.android.gms.maps.internal.n.a(onmylocationbuttonclicklistener) {

            final GoogleMap YZ;
            final OnMyLocationButtonClickListener Zb;

            public boolean onMyLocationButtonClick()
                throws RemoteException
            {
                return Zb.onMyLocationButtonClick();
            }

            
            {
                YZ = GoogleMap.this;
                Zb = onmylocationbuttonclicklistener;
                super();
            }
        });
        return;
    }

    public final void setOnMyLocationChangeListener(OnMyLocationChangeListener onmylocationchangelistener)
    {
        if (onmylocationchangelistener == null)
        {
            try
            {
                YW.setOnMyLocationChangeListener(null);
                return;
            }
            catch (RemoteException remoteexception)
            {
                throw new RuntimeRemoteException(remoteexception);
            }
        }
        YW.setOnMyLocationChangeListener(new com.google.android.gms.maps.internal.o.a(onmylocationchangelistener) {

            final GoogleMap YZ;
            final OnMyLocationChangeListener Za;

            public void f(com.google.android.gms.dynamic.d d)
            {
                Za.onMyLocationChange((Location)e.e(d));
            }

            
            {
                YZ = GoogleMap.this;
                Za = onmylocationchangelistener;
                super();
            }
        });
        return;
    }

    public final void setPadding(int i, int j, int k, int l)
    {
        try
        {
            YW.setPadding(i, j, k, l);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public final void setTrafficEnabled(boolean flag)
    {
        try
        {
            YW.setTrafficEnabled(flag);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public final void snapshot(SnapshotReadyCallback snapshotreadycallback)
    {
        snapshot(snapshotreadycallback, null);
    }

    public final void snapshot(SnapshotReadyCallback snapshotreadycallback, Bitmap bitmap)
    {
        com.google.android.gms.dynamic.d d;
        e e1;
        if (bitmap != null)
        {
            d = e.h(bitmap);
        } else
        {
            d = null;
        }
        e1 = (e)(e)d;
        try
        {
            YW.snapshot(new com.google.android.gms.maps.internal.s.a(snapshotreadycallback) {

                final GoogleMap YZ;
                final SnapshotReadyCallback Zd;

                public void g(com.google.android.gms.dynamic.d d1)
                    throws RemoteException
                {
                    Zd.onSnapshotReady((Bitmap)e.e(d1));
                }

                public void onSnapshotReady(Bitmap bitmap1)
                    throws RemoteException
                {
                    Zd.onSnapshotReady(bitmap1);
                }

            
            {
                YZ = GoogleMap.this;
                Zd = snapshotreadycallback;
                super();
            }
            }, e1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }

    public final void stopAnimation()
    {
        try
        {
            YW.stopAnimation();
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new RuntimeRemoteException(remoteexception);
        }
    }
}
