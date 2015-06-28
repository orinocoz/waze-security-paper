// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package jp.pioneer.mbg.pioneerkit.a.a:
//            j, l, h

public abstract class k extends Binder
    implements j
{

    public k()
    {
        attachInterface(this, "jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
    }

    public static j b(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
        if (iinterface != null && (iinterface instanceof j))
        {
            return (j)iinterface;
        } else
        {
            return new l(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int i1)
    {
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, i1);

        case 1598968902: 
            parcel1.writeString("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            a(h.a(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            b(h.a(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            a(parcel.readStrongBinder(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            a(parcel.readStrongBinder());
            parcel1.writeNoException();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            boolean flag20 = a(parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            int j7 = 0;
            if (flag20)
            {
                j7 = 1;
            }
            parcel1.writeInt(j7);
            return true;

        case 6: // '\006'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            boolean flag19 = a();
            parcel1.writeNoException();
            int i7 = 0;
            if (flag19)
            {
                i7 = 1;
            }
            parcel1.writeInt(i7);
            return true;

        case 7: // '\007'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            b();
            parcel1.writeNoException();
            return true;

        case 8: // '\b'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            String s = c();
            parcel1.writeNoException();
            parcel1.writeString(s);
            return true;

        case 9: // '\t'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            int l6 = d();
            parcel1.writeNoException();
            parcel1.writeInt(l6);
            return true;

        case 10: // '\n'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            int k6 = parcel.readInt();
            boolean flag18 = false;
            if (k6 != 0)
            {
                flag18 = true;
            }
            a(flag18);
            parcel1.writeNoException();
            return true;

        case 11: // '\013'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            boolean flag17 = e();
            parcel1.writeNoException();
            int j6 = 0;
            if (flag17)
            {
                j6 = 1;
            }
            parcel1.writeInt(j6);
            return true;

        case 12: // '\f'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            a(parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 13: // '\r'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            int i6 = f();
            parcel1.writeNoException();
            parcel1.writeInt(i6);
            return true;

        case 14: // '\016'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            b(parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 15: // '\017'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            c(parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 16: // '\020'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            boolean flag16 = g();
            parcel1.writeNoException();
            int l5 = 0;
            if (flag16)
            {
                l5 = 1;
            }
            parcel1.writeInt(l5);
            return true;

        case 17: // '\021'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            h();
            parcel1.writeNoException();
            return true;

        case 18: // '\022'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            boolean flag15 = i();
            parcel1.writeNoException();
            int k5 = 0;
            if (flag15)
            {
                k5 = 1;
            }
            parcel1.writeInt(k5);
            return true;

        case 19: // '\023'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            boolean flag14 = a(parcel.readString(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            int j5 = 0;
            if (flag14)
            {
                j5 = 1;
            }
            parcel1.writeInt(j5);
            return true;

        case 20: // '\024'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            boolean flag13 = b(parcel.readString(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            int i5 = 0;
            if (flag13)
            {
                i5 = 1;
            }
            parcel1.writeInt(i5);
            return true;

        case 21: // '\025'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            j();
            parcel1.writeNoException();
            return true;

        case 22: // '\026'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            int l4 = parcel.readInt();
            boolean flag12 = false;
            if (l4 != 0)
            {
                flag12 = true;
            }
            b(flag12);
            parcel1.writeNoException();
            return true;

        case 23: // '\027'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            a(parcel.createByteArray());
            parcel1.writeNoException();
            return true;

        case 24: // '\030'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            int k4 = parcel.readInt();
            boolean flag11 = false;
            if (k4 != 0)
            {
                flag11 = true;
            }
            c(flag11);
            parcel1.writeNoException();
            return true;

        case 25: // '\031'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            int j4 = parcel.readInt();
            boolean flag10 = false;
            if (j4 != 0)
            {
                flag10 = true;
            }
            d(flag10);
            parcel1.writeNoException();
            return true;

        case 26: // '\032'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            int i4 = parcel.readInt();
            boolean flag9 = false;
            if (i4 != 0)
            {
                flag9 = true;
            }
            e(flag9);
            parcel1.writeNoException();
            return true;

        case 27: // '\033'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            int l3 = parcel.readInt();
            boolean flag8 = false;
            if (l3 != 0)
            {
                flag8 = true;
            }
            f(flag8);
            parcel1.writeNoException();
            return true;

        case 28: // '\034'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            int k3 = parcel.readInt();
            boolean flag7 = false;
            if (k3 != 0)
            {
                flag7 = true;
            }
            g(flag7);
            parcel1.writeNoException();
            return true;

        case 29: // '\035'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            k();
            parcel1.writeNoException();
            return true;

        case 30: // '\036'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            c(h.a(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 31: // '\037'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            a(parcel.readString());
            parcel1.writeNoException();
            return true;

        case 32: // ' '
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            c(parcel.readString(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 33: // '!'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            java.util.List list = l();
            parcel1.writeNoException();
            parcel1.writeStringList(list);
            return true;

        case 34: // '"'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            int j3 = parcel.readInt();
            boolean flag6 = false;
            if (j3 != 0)
            {
                flag6 = true;
            }
            h(flag6);
            parcel1.writeNoException();
            return true;

        case 35: // '#'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            int i3 = parcel.readInt();
            boolean flag5 = false;
            if (i3 != 0)
            {
                flag5 = true;
            }
            i(flag5);
            parcel1.writeNoException();
            return true;

        case 36: // '$'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            boolean flag4 = m();
            parcel1.writeNoException();
            int k2 = 0;
            if (flag4)
            {
                k2 = 1;
            }
            parcel1.writeInt(k2);
            return true;

        case 37: // '%'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            boolean flag3 = b(parcel.readString());
            parcel1.writeNoException();
            int j2 = 0;
            if (flag3)
            {
                j2 = 1;
            }
            parcel1.writeInt(j2);
            return true;

        case 38: // '&'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            long l2 = parcel.readLong();
            int i2 = parcel.readInt();
            boolean flag2 = false;
            if (i2 != 0)
            {
                flag2 = true;
            }
            a(l2, flag2);
            parcel1.writeNoException();
            return true;

        case 39: // '\''
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            long l1 = parcel.readLong();
            int k1 = parcel.readInt();
            boolean flag1 = false;
            if (k1 != 0)
            {
                flag1 = true;
            }
            b(l1, flag1);
            parcel1.writeNoException();
            return true;

        case 40: // '('
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            c(parcel.readString());
            parcel1.writeNoException();
            return true;

        case 41: // ')'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            b(parcel.createByteArray());
            parcel1.writeNoException();
            return true;

        case 42: // '*'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            a(parcel.readByte(), parcel.createByteArray());
            parcel1.writeNoException();
            return true;

        case 43: // '+'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            a(parcel.readString(), parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 44: // ','
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            boolean flag = d(parcel.readString());
            parcel1.writeNoException();
            int j1 = 0;
            if (flag)
            {
                j1 = 1;
            }
            parcel1.writeInt(j1);
            return true;

        case 45: // '-'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            d(h.a(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 46: // '.'
            parcel.enforceInterface("jp.pioneer.mbg.pioneerkit.common.aidl.ISppControl");
            e(parcel.readString());
            parcel1.writeNoException();
            return true;
        }
    }
}
