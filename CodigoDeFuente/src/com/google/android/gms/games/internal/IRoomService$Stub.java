// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.f;

// Referenced classes of package com.google.android.gms.games.internal:
//            IRoomService, IRoomServiceCallbacks

public static abstract class attachInterface extends Binder
    implements IRoomService
{
    private static class Proxy
        implements IRoomService
    {

        private IBinder ko;

        public void G(boolean flag)
            throws RemoteException
        {
            int i;
            Parcel parcel;
            i = 1;
            parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            if (!flag)
            {
                i = 0;
            }
            parcel.writeInt(i);
            ko.transact(1008, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(IBinder ibinder, IRoomServiceCallbacks iroomservicecallbacks)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeStrongBinder(ibinder);
            IBinder ibinder1;
            ibinder1 = null;
            if (iroomservicecallbacks == null)
            {
                break MISSING_BLOCK_LABEL_30;
            }
            ibinder1 = iroomservicecallbacks.asBinder();
            parcel.writeStrongBinder(ibinder1);
            ko.transact(1001, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(DataHolder dataholder, boolean flag)
            throws RemoteException
        {
            int i;
            Parcel parcel;
            i = 1;
            parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            if (dataholder == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            dataholder.writeToParcel(parcel, 0);
              goto _L3
_L5:
            parcel.writeInt(i);
            ko.transact(1006, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            break; /* Loop/switch isn't completed */
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
_L6:
            i = 0;
            if (true) goto _L4; else goto _L3
_L4:
            break; /* Loop/switch isn't completed */
_L3:
            if (!flag) goto _L6; else goto _L5
        }

        public void a(byte abyte0[], String s1, int i)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeByteArray(abyte0);
            parcel.writeString(s1);
            parcel.writeInt(i);
            ko.transact(1009, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void a(byte abyte0[], String as[])
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeByteArray(abyte0);
            parcel.writeStringArray(as);
            ko.transact(1010, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public IBinder asBinder()
        {
            return ko;
        }

        public void be(String s1)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeString(s1);
            ko.transact(1013, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void bf(String s1)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeString(s1);
            ko.transact(1014, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void c(String s1, String s2, String s3)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeString(s1);
            parcel.writeString(s2);
            parcel.writeString(s3);
            ko.transact(1004, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void hA()
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            ko.transact(1002, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void hB()
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            ko.transact(1003, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void hC()
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            ko.transact(1005, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void hD()
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            ko.transact(1007, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void r(String s1, int i)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeString(s1);
            parcel.writeInt(i);
            ko.transact(1011, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void s(String s1, int i)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeString(s1);
            parcel.writeInt(i);
            ko.transact(1012, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }
    }


    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
        throws RemoteException
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.games.internal.IRoomService");
            return true;

        case 1001: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            a(parcel.readStrongBinder(), cks.Stub.am(parcel.readStrongBinder()));
            return true;

        case 1002: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            hA();
            return true;

        case 1003: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            hB();
            return true;

        case 1004: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            c(parcel.readString(), parcel.readString(), parcel.readString());
            return true;

        case 1005: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            hC();
            return true;

        case 1006: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            DataHolder dataholder;
            int l;
            boolean flag1;
            if (parcel.readInt() != 0)
            {
                dataholder = DataHolder.CREATOR.x(parcel);
            } else
            {
                dataholder = null;
            }
            l = parcel.readInt();
            flag1 = false;
            if (l != 0)
            {
                flag1 = true;
            }
            a(dataholder, flag1);
            return true;

        case 1007: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            hD();
            return true;

        case 1008: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            int k = parcel.readInt();
            boolean flag = false;
            if (k != 0)
            {
                flag = true;
            }
            G(flag);
            return true;

        case 1009: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            a(parcel.createByteArray(), parcel.readString(), parcel.readInt());
            return true;

        case 1010: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            a(parcel.createByteArray(), parcel.createStringArray());
            return true;

        case 1011: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            r(parcel.readString(), parcel.readInt());
            return true;

        case 1012: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            s(parcel.readString(), parcel.readInt());
            return true;

        case 1013: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            be(parcel.readString());
            return true;

        case 1014: 
            parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
            bf(parcel.readString());
            return true;
        }
    }

    public cks()
    {
        attachInterface(this, "com.google.android.gms.games.internal.IRoomService");
    }
}