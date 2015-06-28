// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            bv

public interface bu
    extends IInterface
{
    public static abstract class a extends Binder
        implements bu
    {

        public static bu i(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
            if (iinterface != null && (iinterface instanceof bu))
            {
                return (bu)iinterface;
            } else
            {
                return new a(ibinder);
            }
        }

        public IBinder asBinder()
        {
            return this;
        }

        public boolean onTransact(int j, Parcel parcel, Parcel parcel1, int k)
            throws RemoteException
        {
            bv bv1;
            switch (j)
            {
            default:
                return super.onTransact(j, parcel, parcel1, k);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
                bv1 = m(parcel.readString());
                parcel1.writeNoException();
                break;
            }
            IBinder ibinder;
            if (bv1 != null)
            {
                ibinder = bv1.asBinder();
            } else
            {
                ibinder = null;
            }
            parcel1.writeStrongBinder(ibinder);
            return true;
        }

        public a()
        {
            attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        }
    }

    private static class a.a
        implements bu
    {

        private IBinder ko;

        public IBinder asBinder()
        {
            return ko;
        }

        public bv m(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            bv bv;
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
            parcel.writeString(s);
            ko.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            bv = com.google.android.gms.internal.bv.a.j(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return bv;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        a.a(IBinder ibinder)
        {
            ko = ibinder;
        }
    }


    public abstract bv m(String s)
        throws RemoteException;
}
