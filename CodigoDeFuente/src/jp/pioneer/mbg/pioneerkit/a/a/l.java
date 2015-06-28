// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.a.a;

import android.os.IBinder;
import android.os.Parcel;
import java.util.List;

// Referenced classes of package jp.pioneer.mbg.pioneerkit.a.a:
//            j, g

class l
    implements j
{

    private IBinder a;

    l(IBinder ibinder)
    {
        a = ibinder;
    }

    public void a(byte byte0, byte abyte0[])
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeByte(byte0);
        parcel.writeByteArray(abyte0);
        a.transact(42, parcel, parcel1, 0);
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

    public void a(int i1)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeInt(i1);
        a.transact(12, parcel, parcel1, 0);
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

    public void a(long l1, boolean flag)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeLong(l1);
        int i1;
        i1 = 0;
        if (flag)
        {
            i1 = 1;
        }
        parcel.writeInt(i1);
        a.transact(38, parcel, parcel1, 0);
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

    public void a(IBinder ibinder)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeStrongBinder(ibinder);
        a.transact(4, parcel, parcel1, 0);
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

    public void a(IBinder ibinder, String s)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeStrongBinder(ibinder);
        parcel.writeString(s);
        a.transact(3, parcel, parcel1, 0);
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

    public void a(String s)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeString(s);
        a.transact(31, parcel, parcel1, 0);
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

    public void a(String s, int i1)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeString(s);
        parcel.writeInt(i1);
        a.transact(43, parcel, parcel1, 0);
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

    public void a(g g1, String s)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        if (g1 == null)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        IBinder ibinder = g1.asBinder();
_L1:
        parcel.writeStrongBinder(ibinder);
        parcel.writeString(s);
        a.transact(1, parcel, parcel1, 0);
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

    public void a(boolean flag)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        int i1;
        i1 = 0;
        if (flag)
        {
            i1 = 1;
        }
        parcel.writeInt(i1);
        a.transact(10, parcel, parcel1, 0);
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

    public void a(byte abyte0[])
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeByteArray(abyte0);
        a.transact(23, parcel, parcel1, 0);
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

    public boolean a()
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i1;
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        a.transact(6, parcel, parcel1, 0);
        parcel1.readException();
        i1 = parcel1.readInt();
        boolean flag = false;
        if (i1 != 0)
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

    public boolean a(String s, String s1)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i1;
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeString(s);
        parcel.writeString(s1);
        a.transact(5, parcel, parcel1, 0);
        parcel1.readException();
        i1 = parcel1.readInt();
        boolean flag = false;
        if (i1 != 0)
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

    public boolean a(String s, String s1, String s2)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i1;
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeString(s);
        parcel.writeString(s1);
        parcel.writeString(s2);
        a.transact(19, parcel, parcel1, 0);
        parcel1.readException();
        i1 = parcel1.readInt();
        boolean flag = false;
        if (i1 != 0)
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

    public IBinder asBinder()
    {
        return a;
    }

    public void b()
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        a.transact(7, parcel, parcel1, 0);
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

    public void b(int i1)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeInt(i1);
        a.transact(14, parcel, parcel1, 0);
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

    public void b(long l1, boolean flag)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeLong(l1);
        int i1;
        i1 = 0;
        if (flag)
        {
            i1 = 1;
        }
        parcel.writeInt(i1);
        a.transact(39, parcel, parcel1, 0);
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

    public void b(g g1, String s)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        if (g1 == null)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        IBinder ibinder = g1.asBinder();
_L1:
        parcel.writeStrongBinder(ibinder);
        parcel.writeString(s);
        a.transact(2, parcel, parcel1, 0);
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

    public void b(boolean flag)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        int i1;
        i1 = 0;
        if (flag)
        {
            i1 = 1;
        }
        parcel.writeInt(i1);
        a.transact(22, parcel, parcel1, 0);
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

    public void b(byte abyte0[])
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeByteArray(abyte0);
        a.transact(41, parcel, parcel1, 0);
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

    public boolean b(String s)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i1;
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeString(s);
        a.transact(37, parcel, parcel1, 0);
        parcel1.readException();
        i1 = parcel1.readInt();
        boolean flag = false;
        if (i1 != 0)
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

    public boolean b(String s, String s1, String s2)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i1;
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeString(s);
        parcel.writeString(s1);
        parcel.writeString(s2);
        a.transact(20, parcel, parcel1, 0);
        parcel1.readException();
        i1 = parcel1.readInt();
        boolean flag = false;
        if (i1 != 0)
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

    public String c()
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        String s;
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        a.transact(8, parcel, parcel1, 0);
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

    public void c(int i1)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeInt(i1);
        a.transact(15, parcel, parcel1, 0);
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

    public void c(String s)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeString(s);
        a.transact(40, parcel, parcel1, 0);
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

    public void c(String s, String s1, String s2)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeString(s);
        parcel.writeString(s1);
        parcel.writeString(s2);
        a.transact(32, parcel, parcel1, 0);
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

    public void c(g g1, String s)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        if (g1 == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        IBinder ibinder = g1.asBinder();
_L1:
        parcel.writeStrongBinder(ibinder);
        parcel.writeString(s);
        a.transact(30, parcel, parcel1, 0);
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

    public void c(boolean flag)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        int i1;
        i1 = 0;
        if (flag)
        {
            i1 = 1;
        }
        parcel.writeInt(i1);
        a.transact(24, parcel, parcel1, 0);
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

    public int d()
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i1;
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        a.transact(9, parcel, parcel1, 0);
        parcel1.readException();
        i1 = parcel1.readInt();
        parcel1.recycle();
        parcel.recycle();
        return i1;
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public void d(g g1, String s)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        if (g1 == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        IBinder ibinder = g1.asBinder();
_L1:
        parcel.writeStrongBinder(ibinder);
        parcel.writeString(s);
        a.transact(45, parcel, parcel1, 0);
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

    public void d(boolean flag)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        int i1;
        i1 = 0;
        if (flag)
        {
            i1 = 1;
        }
        parcel.writeInt(i1);
        a.transact(25, parcel, parcel1, 0);
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

    public boolean d(String s)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i1;
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeString(s);
        a.transact(44, parcel, parcel1, 0);
        parcel1.readException();
        i1 = parcel1.readInt();
        boolean flag = false;
        if (i1 != 0)
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

    public void e(String s)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        parcel.writeString(s);
        a.transact(46, parcel, parcel1, 0);
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

    public void e(boolean flag)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        int i1;
        i1 = 0;
        if (flag)
        {
            i1 = 1;
        }
        parcel.writeInt(i1);
        a.transact(26, parcel, parcel1, 0);
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

    public boolean e()
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i1;
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        a.transact(11, parcel, parcel1, 0);
        parcel1.readException();
        i1 = parcel1.readInt();
        boolean flag = false;
        if (i1 != 0)
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

    public int f()
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i1;
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        a.transact(13, parcel, parcel1, 0);
        parcel1.readException();
        i1 = parcel1.readInt();
        parcel1.recycle();
        parcel.recycle();
        return i1;
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public void f(boolean flag)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        int i1;
        i1 = 0;
        if (flag)
        {
            i1 = 1;
        }
        parcel.writeInt(i1);
        a.transact(27, parcel, parcel1, 0);
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

    public void g(boolean flag)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        int i1;
        i1 = 0;
        if (flag)
        {
            i1 = 1;
        }
        parcel.writeInt(i1);
        a.transact(28, parcel, parcel1, 0);
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

    public boolean g()
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i1;
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        a.transact(16, parcel, parcel1, 0);
        parcel1.readException();
        i1 = parcel1.readInt();
        boolean flag = false;
        if (i1 != 0)
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

    public void h()
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        a.transact(17, parcel, parcel1, 0);
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

    public void h(boolean flag)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        int i1;
        i1 = 0;
        if (flag)
        {
            i1 = 1;
        }
        parcel.writeInt(i1);
        a.transact(34, parcel, parcel1, 0);
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

    public void i(boolean flag)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        int i1;
        i1 = 0;
        if (flag)
        {
            i1 = 1;
        }
        parcel.writeInt(i1);
        a.transact(35, parcel, parcel1, 0);
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

    public boolean i()
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i1;
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        a.transact(18, parcel, parcel1, 0);
        parcel1.readException();
        i1 = parcel1.readInt();
        boolean flag = false;
        if (i1 != 0)
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

    public void j()
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        a.transact(21, parcel, parcel1, 0);
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

    public void k()
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        a.transact(29, parcel, parcel1, 0);
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

    public List l()
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        java.util.ArrayList arraylist;
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        a.transact(33, parcel, parcel1, 0);
        parcel1.readException();
        arraylist = parcel1.createStringArrayList();
        parcel1.recycle();
        parcel.recycle();
        return arraylist;
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public boolean m()
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i1;
        parcel.writeInterfaceToken("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        a.transact(36, parcel, parcel1, 0);
        parcel1.readException();
        i1 = parcel1.readInt();
        boolean flag = false;
        if (i1 != 0)
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
}
