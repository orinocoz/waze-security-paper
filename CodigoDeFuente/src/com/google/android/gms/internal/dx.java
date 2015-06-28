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
//            dt, dv, du, dw

public interface dx
    extends IInterface
{
    public static abstract class a extends Binder
        implements dx
    {

        public static dx y(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
            if (iinterface != null && (iinterface instanceof dx))
            {
                return (dx)iinterface;
            } else
            {
                return new a(ibinder);
            }
        }

        public IBinder asBinder()
        {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
            throws RemoteException
        {
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.ads.internal.request.IAdRequestService");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
                break;
            }
            dt dt1;
            dv dv1;
            if (parcel.readInt() != 0)
            {
                dt1 = dt.CREATOR.h(parcel);
            } else
            {
                dt1 = null;
            }
            dv1 = b(dt1);
            parcel1.writeNoException();
            if (dv1 != null)
            {
                parcel1.writeInt(1);
                dv1.writeToParcel(parcel1, 1);
            } else
            {
                parcel1.writeInt(0);
            }
            return true;
        }

        public a()
        {
            attachInterface(this, "com.google.android.gms.ads.internal.request.IAdRequestService");
        }
    }

    private static class a.a
        implements dx
    {

        private IBinder ko;

        public IBinder asBinder()
        {
            return ko;
        }

        public dv b(dt dt1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.ads.internal.request.IAdRequestService");
            if (dt1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            dt1.writeToParcel(parcel, 0);
_L3:
            dv dv2;
            ko.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0)
            {
                break MISSING_BLOCK_LABEL_99;
            }
            dv2 = dv.CREATOR.i(parcel1);
            dv dv1 = dv2;
_L4:
            parcel1.recycle();
            parcel.recycle();
            return dv1;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            dv1 = null;
              goto _L4
        }

        a.a(IBinder ibinder)
        {
            ko = ibinder;
        }
    }


    public abstract dv b(dt dt)
        throws RemoteException;
}
