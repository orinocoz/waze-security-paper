// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            dh, dg

private static class ko
    implements dh
{

    private IBinder ko;

    public void a(dg dg1)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
        if (dg1 == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        IBinder ibinder = dg1.asBinder();
_L1:
        parcel.writeStrongBinder(ibinder);
        ko.transact(2, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        ibinder = null;
          goto _L1
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public IBinder asBinder()
    {
        return ko;
    }

    public boolean isValidPurchase(String s)
        throws RemoteException
    {
        boolean flag;
        Parcel parcel;
        Parcel parcel1;
        flag = true;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i;
        parcel.writeInterfaceToken("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
        parcel.writeString(s);
        ko.transact(1, parcel, parcel1, 0);
        parcel1.readException();
        i = parcel1.readInt();
        if (i == 0)
        {
            flag = false;
        }
        parcel1.recycle();
        parcel.recycle();
        return flag;
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
