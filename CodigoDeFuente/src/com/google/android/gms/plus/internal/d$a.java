// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.hh;
import com.google.android.gms.internal.hs;
import com.google.android.gms.internal.ht;
import com.google.android.gms.internal.if;
import com.google.android.gms.internal.ig;
import java.util.List;

// Referenced classes of package com.google.android.gms.plus.internal:
//            d, b

public static abstract class a.ko extends Binder
    implements d
{
    private static class a
        implements d
    {

        private IBinder ko;

        public hh a(b b1, int i, int j, int k, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            if (b1 == null)
            {
                break MISSING_BLOCK_LABEL_107;
            }
            IBinder ibinder = b1.asBinder();
_L1:
            hh hh1;
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i);
            parcel.writeInt(j);
            parcel.writeInt(k);
            parcel.writeString(s);
            ko.transact(16, parcel, parcel1, 0);
            parcel1.readException();
            hh1 = com.google.android.gms.internal.hh.a.J(parcel1.readStrongBinder());
            parcel1.recycle();
            parcel.recycle();
            return hh1;
            ibinder = null;
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void a(if if1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            if (if1 == null)
            {
                break MISSING_BLOCK_LABEL_56;
            }
            parcel.writeInt(1);
            if1.writeToParcel(parcel, 0);
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

        public void a(b b1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            if (b1 == null)
            {
                break MISSING_BLOCK_LABEL_60;
            }
            IBinder ibinder = b1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            ko.transact(8, parcel, parcel1, 0);
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

        public void a(b b1, int i, String s, Uri uri, String s1, String s2)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            if (b1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = b1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            parcel.writeInt(i);
            parcel.writeString(s);
            if (uri == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            uri.writeToParcel(parcel, 0);
_L6:
            parcel.writeString(s1);
            parcel.writeString(s2);
            ko.transact(14, parcel, parcel1, 0);
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

        public void a(b b1, Uri uri, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            if (b1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = b1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            if (uri == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            uri.writeToParcel(parcel, 0);
_L6:
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_133;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L7:
            ko.transact(9, parcel, parcel1, 0);
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

        public void a(b b1, if if1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            if (b1 == null) goto _L2; else goto _L1
_L1:
            IBinder ibinder = b1.asBinder();
_L5:
            parcel.writeStrongBinder(ibinder);
            if (if1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            if1.writeToParcel(parcel, 0);
_L6:
            ko.transact(45, parcel, parcel1, 0);
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

        public void a(b b1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            if (b1 == null)
            {
                break MISSING_BLOCK_LABEL_68;
            }
            IBinder ibinder = b1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            ko.transact(1, parcel, parcel1, 0);
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

        public void a(b b1, String s, String s1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            if (b1 == null)
            {
                break MISSING_BLOCK_LABEL_80;
            }
            IBinder ibinder = b1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            parcel.writeString(s1);
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

        public void a(b b1, List list)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            if (b1 == null)
            {
                break MISSING_BLOCK_LABEL_69;
            }
            IBinder ibinder = b1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeStringList(list);
            ko.transact(34, parcel, parcel1, 0);
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

        public void a(String s, hs hs1, hs hs2)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            parcel.writeString(s);
            if (hs1 == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            hs1.writeToParcel(parcel, 0);
_L3:
            if (hs2 == null)
            {
                break MISSING_BLOCK_LABEL_114;
            }
            parcel.writeInt(1);
            hs2.writeToParcel(parcel, 0);
_L4:
            ko.transact(46, parcel, parcel1, 0);
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

        public IBinder asBinder()
        {
            return ko;
        }

        public void b(b b1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            if (b1 == null)
            {
                break MISSING_BLOCK_LABEL_60;
            }
            IBinder ibinder = b1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            ko.transact(19, parcel, parcel1, 0);
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

        public void b(b b1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            if (b1 == null)
            {
                break MISSING_BLOCK_LABEL_68;
            }
            IBinder ibinder = b1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            ko.transact(3, parcel, parcel1, 0);
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

        public void c(b b1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            if (b1 == null)
            {
                break MISSING_BLOCK_LABEL_69;
            }
            IBinder ibinder = b1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            ko.transact(18, parcel, parcel1, 0);
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

        public void clearDefaultAccount()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            ko.transact(6, parcel, parcel1, 0);
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

        public void d(b b1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            if (b1 == null)
            {
                break MISSING_BLOCK_LABEL_69;
            }
            IBinder ibinder = b1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            ko.transact(40, parcel, parcel1, 0);
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

        public void e(b b1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            if (b1 == null)
            {
                break MISSING_BLOCK_LABEL_69;
            }
            IBinder ibinder = b1.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            parcel.writeString(s);
            ko.transact(44, parcel, parcel1, 0);
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

        public String getAccountName()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            String s;
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            ko.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public String jP()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            String s;
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            ko.transact(41, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean jQ()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            ko.transact(42, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
            {
                flag = true;
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

        public String jR()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            String s;
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            ko.transact(43, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void removeMoment(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
            parcel.writeString(s);
            ko.transact(17, parcel, parcel1, 0);
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

        a(IBinder ibinder)
        {
            ko = ibinder;
        }
    }


    public static d bm(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.plus.internal.IPlusService");
        if (iinterface != null && (iinterface instanceof d))
        {
            return (d)iinterface;
        } else
        {
            return new a(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
        throws RemoteException
    {
        String s;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.plus.internal.IPlusService");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            a(bk(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            a(bk(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            b(bk(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            if if2;
            if (parcel.readInt() != 0)
            {
                if2 = if.CREATOR.L(parcel);
            } else
            {
                if2 = null;
            }
            a(if2);
            parcel1.writeNoException();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            String s4 = getAccountName();
            parcel1.writeNoException();
            parcel1.writeString(s4);
            return true;

        case 6: // '\006'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            clearDefaultAccount();
            parcel1.writeNoException();
            return true;

        case 8: // '\b'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            a(bk(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 9: // '\t'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            b b2 = bk(parcel.readStrongBinder());
            Uri uri1;
            Bundle bundle;
            if (parcel.readInt() != 0)
            {
                uri1 = (Uri)Uri.CREATOR.createFromParcel(parcel);
            } else
            {
                uri1 = null;
            }
            if (parcel.readInt() != 0)
            {
                bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                bundle = null;
            }
            a(b2, uri1, bundle);
            parcel1.writeNoException();
            return true;

        case 14: // '\016'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            b b1 = bk(parcel.readStrongBinder());
            int j1 = parcel.readInt();
            String s3 = parcel.readString();
            Uri uri;
            if (parcel.readInt() != 0)
            {
                uri = (Uri)Uri.CREATOR.createFromParcel(parcel);
            } else
            {
                uri = null;
            }
            a(b1, j1, s3, uri, parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 16: // '\020'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            hh hh1 = a(bk(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            IBinder ibinder = null;
            if (hh1 != null)
            {
                ibinder = hh1.asBinder();
            }
            parcel1.writeStrongBinder(ibinder);
            return true;

        case 17: // '\021'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            removeMoment(parcel.readString());
            parcel1.writeNoException();
            return true;

        case 18: // '\022'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            c(bk(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 19: // '\023'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            b(bk(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 34: // '"'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            a(bk(parcel.readStrongBinder()), parcel.createStringArrayList());
            parcel1.writeNoException();
            return true;

        case 40: // '('
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            d(bk(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 41: // ')'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            String s2 = jP();
            parcel1.writeNoException();
            parcel1.writeString(s2);
            return true;

        case 42: // '*'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            boolean flag = jQ();
            parcel1.writeNoException();
            int i1;
            if (flag)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            parcel1.writeInt(i1);
            return true;

        case 43: // '+'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            String s1 = jR();
            parcel1.writeNoException();
            parcel1.writeString(s1);
            return true;

        case 44: // ','
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            e(bk(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 45: // '-'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            b b = bk(parcel.readStrongBinder());
            int l = parcel.readInt();
            if if1 = null;
            if (l != 0)
            {
                if1 = if.CREATOR.L(parcel);
            }
            a(b, if1);
            parcel1.writeNoException();
            return true;

        case 46: // '.'
            parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
            s = parcel.readString();
            break;
        }
        hs hs1;
        int k;
        hs hs2;
        if (parcel.readInt() != 0)
        {
            hs1 = hs.CREATOR.D(parcel);
        } else
        {
            hs1 = null;
        }
        k = parcel.readInt();
        hs2 = null;
        if (k != 0)
        {
            hs2 = hs.CREATOR.D(parcel);
        }
        a(s, hs1, hs2);
        parcel1.writeNoException();
        return true;
    }
}
