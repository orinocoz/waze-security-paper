// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wallet.FullWallet;
import com.google.android.gms.wallet.MaskedWallet;

// Referenced classes of package com.google.android.gms.internal:
//            lq, lj

private static class ko
    implements lq
{

    private IBinder ko;

    public void a(int j, FullWallet fullwallet, Bundle bundle)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
        parcel.writeInt(j);
        if (fullwallet == null) goto _L2; else goto _L1
_L1:
        parcel.writeInt(1);
        fullwallet.writeToParcel(parcel, 0);
_L3:
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        parcel.writeInt(1);
        bundle.writeToParcel(parcel, 0);
_L4:
        ko.transact(2, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
_L2:
        parcel.writeInt(0);
          goto _L3
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
        parcel.writeInt(0);
          goto _L4
    }

    public void a(int j, MaskedWallet maskedwallet, Bundle bundle)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
        parcel.writeInt(j);
        if (maskedwallet == null) goto _L2; else goto _L1
_L1:
        parcel.writeInt(1);
        maskedwallet.writeToParcel(parcel, 0);
_L3:
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        parcel.writeInt(1);
        bundle.writeToParcel(parcel, 0);
_L4:
        ko.transact(1, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
_L2:
        parcel.writeInt(0);
          goto _L3
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
        parcel.writeInt(0);
          goto _L4
    }

    public void a(int j, boolean flag, Bundle bundle)
        throws RemoteException
    {
        int k;
        Parcel parcel;
        Parcel parcel1;
        k = 1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
        parcel.writeInt(j);
        if (!flag)
        {
            k = 0;
        }
        parcel.writeInt(k);
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        parcel.writeInt(1);
        bundle.writeToParcel(parcel, 0);
_L1:
        ko.transact(3, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public void a(Status status, lj lj1, Bundle bundle)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
        if (status == null) goto _L2; else goto _L1
_L1:
        parcel.writeInt(1);
        status.writeToParcel(parcel, 0);
_L5:
        if (lj1 == null) goto _L4; else goto _L3
_L3:
        parcel.writeInt(1);
        lj1.writeToParcel(parcel, 0);
_L6:
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        parcel.writeInt(1);
        bundle.writeToParcel(parcel, 0);
_L7:
        ko.transact(5, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
_L2:
        parcel.writeInt(0);
          goto _L5
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
_L4:
        parcel.writeInt(0);
          goto _L6
        parcel.writeInt(0);
          goto _L7
    }

    public IBinder asBinder()
    {
        return ko;
    }

    public void i(int j, Bundle bundle)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.wallet.internal.IWalletServiceCallbacks");
        parcel.writeInt(j);
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        parcel.writeInt(1);
        bundle.writeToParcel(parcel, 0);
_L1:
        ko.transact(4, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    s(IBinder ibinder)
    {
        ko = ibinder;
    }
}
