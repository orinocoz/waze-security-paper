// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

// Referenced classes of package com.google.android.gms.internal:
//            jk, jf, hn

public class jg
{
    private static class a extends Handler
    {

        private final LocationListener VK;

        public void handleMessage(Message message)
        {
            Location location;
            switch (message.what)
            {
            default:
                Log.e("LocationClientHelper", "unknown message in LocationHandler.handleMessage");
                return;

            case 1: // '\001'
                location = new Location((Location)message.obj);
                break;
            }
            VK.onLocationChanged(location);
        }

        public a(LocationListener locationlistener)
        {
            VK = locationlistener;
        }

        public a(LocationListener locationlistener, Looper looper)
        {
            super(looper);
            VK = locationlistener;
        }
    }

    private static class b extends com.google.android.gms.location.a.a
    {

        private Handler VL;

        public void onLocationChanged(Location location)
        {
            if (VL == null)
            {
                Log.e("LocationClientHelper", "Received a location in client after calling removeLocationUpdates.");
                return;
            } else
            {
                Message message = Message.obtain();
                message.what = 1;
                message.obj = location;
                VL.sendMessage(message);
                return;
            }
        }

        public void release()
        {
            VL = null;
        }

        b(LocationListener locationlistener, Looper looper)
        {
            a a1;
            if (looper == null)
            {
                a1 = new a(locationlistener);
            } else
            {
                a1 = new a(locationlistener, looper);
            }
            VL = a1;
        }
    }


    private final jk VG;
    private ContentProviderClient VH;
    private boolean VI;
    private HashMap VJ;
    private final Context mContext;

    public jg(Context context, jk jk1)
    {
        VH = null;
        VI = false;
        VJ = new HashMap();
        mContext = context;
        VG = jk1;
    }

    public Location getLastLocation()
    {
        VG.ci();
        Location location;
        try
        {
            location = ((jf)VG.fo()).bo(mContext.getPackageName());
        }
        catch (RemoteException remoteexception)
        {
            throw new IllegalStateException(remoteexception);
        }
        return location;
    }

    public void iT()
    {
        if (!VI)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        setMockMode(false);
        return;
        RemoteException remoteexception;
        remoteexception;
        throw new IllegalStateException(remoteexception);
    }

    public void removeAllListeners()
    {
        HashMap hashmap = VJ;
        hashmap;
        JVM INSTR monitorenter ;
        Iterator iterator = VJ.values().iterator();
_L2:
        b b1;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_85;
            }
            b1 = (b)iterator.next();
        } while (b1 == null);
        ((jf)VG.fo()).a(b1);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (RemoteException remoteexception)
        {
            throw new IllegalStateException(remoteexception);
        }
        VJ.clear();
        hashmap;
        JVM INSTR monitorexit ;
    }

    public void removeLocationUpdates(PendingIntent pendingintent)
        throws RemoteException
    {
        VG.ci();
        ((jf)VG.fo()).a(pendingintent);
    }

    public void removeLocationUpdates(LocationListener locationlistener)
        throws RemoteException
    {
        VG.ci();
        hn.b(locationlistener, "Invalid null listener");
        HashMap hashmap = VJ;
        hashmap;
        JVM INSTR monitorenter ;
        b b1;
        b1 = (b)VJ.remove(locationlistener);
        if (VH != null && VJ.isEmpty())
        {
            VH.release();
            VH = null;
        }
        if (b1 == null)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        b1.release();
        ((jf)VG.fo()).a(b1);
        hashmap;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void requestLocationUpdates(LocationRequest locationrequest, PendingIntent pendingintent)
        throws RemoteException
    {
        VG.ci();
        ((jf)VG.fo()).a(locationrequest, pendingintent);
    }

    public void requestLocationUpdates(LocationRequest locationrequest, LocationListener locationlistener, Looper looper)
        throws RemoteException
    {
        VG.ci();
        if (looper == null)
        {
            hn.b(Looper.myLooper(), "Can't create handler inside thread that has not called Looper.prepare()");
        }
        HashMap hashmap = VJ;
        hashmap;
        JVM INSTR monitorenter ;
        b b1 = (b)VJ.get(locationlistener);
        if (b1 != null)
        {
            break MISSING_BLOCK_LABEL_110;
        }
        b b2 = new b(locationlistener, looper);
_L1:
        VJ.put(locationlistener, b2);
        ((jf)VG.fo()).a(locationrequest, b2, mContext.getPackageName());
        hashmap;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        b2 = b1;
          goto _L1
    }

    public void setMockLocation(Location location)
        throws RemoteException
    {
        VG.ci();
        ((jf)VG.fo()).setMockLocation(location);
    }

    public void setMockMode(boolean flag)
        throws RemoteException
    {
        VG.ci();
        ((jf)VG.fo()).setMockMode(flag);
        VI = flag;
    }
}
