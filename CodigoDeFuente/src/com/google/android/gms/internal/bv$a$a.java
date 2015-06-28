// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;

// Referenced classes of package com.google.android.gms.internal:
//            bv, aj, bw, am

private static class ko
    implements bv
{

    private IBinder ko;

    public void a(d d1, aj aj1, String s, bw bw1)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        if (d1 == null) goto _L2; else goto _L1
_L1:
        IBinder ibinder = d1.asBinder();
_L5:
        parcel.writeStrongBinder(ibinder);
        if (aj1 == null) goto _L4; else goto _L3
_L3:
        parcel.writeInt(1);
        aj1.writeToParcel(parcel, 0);
_L6:
        parcel.writeString(s);
        IBinder ibinder1;
        ibinder1 = null;
        if (bw1 == null)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        ibinder1 = bw1.asBinder();
        parcel.writeStrongBinder(ibinder1);
        ko.transact(3, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
_L2:
        ibinder = null;
          goto _L5
_L4:
        parcel.writeInt(0);
          goto _L6
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
          goto _L5
    }

    public void a(d d1, aj aj1, String s, String s1, bw bw1)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        if (d1 == null) goto _L2; else goto _L1
_L1:
        IBinder ibinder = d1.asBinder();
_L5:
        parcel.writeStrongBinder(ibinder);
        if (aj1 == null) goto _L4; else goto _L3
_L3:
        parcel.writeInt(1);
        aj1.writeToParcel(parcel, 0);
_L6:
        parcel.writeString(s);
        parcel.writeString(s1);
        IBinder ibinder1;
        ibinder1 = null;
        if (bw1 == null)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        ibinder1 = bw1.asBinder();
        parcel.writeStrongBinder(ibinder1);
        ko.transact(7, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
_L2:
        ibinder = null;
          goto _L5
_L4:
        parcel.writeInt(0);
          goto _L6
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
          goto _L5
    }

    public void a(d d1, am am1, aj aj1, String s, bw bw1)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        if (d1 == null) goto _L2; else goto _L1
_L1:
        IBinder ibinder = d1.asBinder();
_L5:
        parcel.writeStrongBinder(ibinder);
        if (am1 == null) goto _L4; else goto _L3
_L3:
        parcel.writeInt(1);
        am1.writeToParcel(parcel, 0);
_L6:
        if (aj1 == null)
        {
            break MISSING_BLOCK_LABEL_163;
        }
        parcel.writeInt(1);
        aj1.writeToParcel(parcel, 0);
_L7:
        parcel.writeString(s);
        IBinder ibinder1;
        ibinder1 = null;
        if (bw1 == null)
        {
            break MISSING_BLOCK_LABEL_94;
        }
        ibinder1 = bw1.asBinder();
        parcel.writeStrongBinder(ibinder1);
        ko.transact(1, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
_L2:
        ibinder = null;
          goto _L5
_L4:
        parcel.writeInt(0);
          goto _L6
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
        parcel.writeInt(0);
          goto _L7
    }

    public void a(d d1, am am1, aj aj1, String s, String s1, bw bw1)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        if (d1 == null) goto _L2; else goto _L1
_L1:
        IBinder ibinder = d1.asBinder();
_L5:
        parcel.writeStrongBinder(ibinder);
        if (am1 == null) goto _L4; else goto _L3
_L3:
        parcel.writeInt(1);
        am1.writeToParcel(parcel, 0);
_L6:
        if (aj1 == null)
        {
            break MISSING_BLOCK_LABEL_171;
        }
        parcel.writeInt(1);
        aj1.writeToParcel(parcel, 0);
_L7:
        parcel.writeString(s);
        parcel.writeString(s1);
        IBinder ibinder1;
        ibinder1 = null;
        if (bw1 == null)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        ibinder1 = bw1.asBinder();
        parcel.writeStrongBinder(ibinder1);
        ko.transact(6, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
_L2:
        ibinder = null;
          goto _L5
_L4:
        parcel.writeInt(0);
          goto _L6
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
        parcel.writeInt(0);
          goto _L7
    }

    public IBinder asBinder()
    {
        return ko;
    }

    public void destroy()
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        ko.transact(5, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public d getView()
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        d d1;
        parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        ko.transact(2, parcel, parcel1, 0);
        parcel1.readException();
        d1 = com.google.android.gms.dynamic..ko(parcel1.readStrongBinder());
        parcel1.recycle();
        parcel.recycle();
        return d1;
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public void pause()
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        ko.transact(8, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public void resume()
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        ko.transact(9, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public void showInterstitial()
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
        ko.transact(4, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    (IBinder ibinder)
    {
        ko = ibinder;
    }
}
