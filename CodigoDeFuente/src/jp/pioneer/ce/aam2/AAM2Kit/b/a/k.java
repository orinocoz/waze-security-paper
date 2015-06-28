// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.b.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.b.a:
//            j, l, h

public abstract class k extends Binder
    implements j
{

    public k()
    {
        attachInterface(this, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
    }

    public static j b(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
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
        int j1;
        boolean flag;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, i1);

        case 1598968902: 
            parcel1.writeString("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            a(h.a(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            b(h.a(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            a(parcel.readStrongBinder(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            a(parcel.readStrongBinder());
            parcel1.writeNoException();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag38 = a(parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            int k11 = 0;
            if (flag38)
            {
                k11 = 1;
            }
            parcel1.writeInt(k11);
            return true;

        case 6: // '\006'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag37 = a();
            parcel1.writeNoException();
            int j11 = 0;
            if (flag37)
            {
                j11 = 1;
            }
            parcel1.writeInt(j11);
            return true;

        case 7: // '\007'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            b();
            parcel1.writeNoException();
            return true;

        case 8: // '\b'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            String s2 = c();
            parcel1.writeNoException();
            parcel1.writeString(s2);
            return true;

        case 9: // '\t'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int i11 = d();
            parcel1.writeNoException();
            parcel1.writeInt(i11);
            return true;

        case 10: // '\n'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int l10 = parcel.readInt();
            boolean flag36 = false;
            if (l10 != 0)
            {
                flag36 = true;
            }
            a(flag36);
            parcel1.writeNoException();
            return true;

        case 11: // '\013'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag35 = e();
            parcel1.writeNoException();
            int k10 = 0;
            if (flag35)
            {
                k10 = 1;
            }
            parcel1.writeInt(k10);
            return true;

        case 12: // '\f'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            a(parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 13: // '\r'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int j10 = f();
            parcel1.writeNoException();
            parcel1.writeInt(j10);
            return true;

        case 14: // '\016'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            b(parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 15: // '\017'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            c(parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 16: // '\020'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag34 = g();
            parcel1.writeNoException();
            int i10 = 0;
            if (flag34)
            {
                i10 = 1;
            }
            parcel1.writeInt(i10);
            return true;

        case 17: // '\021'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            h();
            parcel1.writeNoException();
            return true;

        case 18: // '\022'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag33 = i();
            parcel1.writeNoException();
            int l9 = 0;
            if (flag33)
            {
                l9 = 1;
            }
            parcel1.writeInt(l9);
            return true;

        case 19: // '\023'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag32 = a(parcel.readString(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            int k9 = 0;
            if (flag32)
            {
                k9 = 1;
            }
            parcel1.writeInt(k9);
            return true;

        case 20: // '\024'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag31 = b(parcel.readString(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            int j9 = 0;
            if (flag31)
            {
                j9 = 1;
            }
            parcel1.writeInt(j9);
            return true;

        case 21: // '\025'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            j();
            parcel1.writeNoException();
            return true;

        case 22: // '\026'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int i9 = parcel.readInt();
            boolean flag30 = false;
            if (i9 != 0)
            {
                flag30 = true;
            }
            b(flag30);
            parcel1.writeNoException();
            return true;

        case 23: // '\027'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            a(parcel.createByteArray());
            parcel1.writeNoException();
            return true;

        case 24: // '\030'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int l8 = parcel.readInt();
            boolean flag29 = false;
            if (l8 != 0)
            {
                flag29 = true;
            }
            c(flag29);
            parcel1.writeNoException();
            return true;

        case 25: // '\031'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int k8 = parcel.readInt();
            boolean flag28 = false;
            if (k8 != 0)
            {
                flag28 = true;
            }
            d(flag28);
            parcel1.writeNoException();
            return true;

        case 26: // '\032'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int j8 = parcel.readInt();
            boolean flag27 = false;
            if (j8 != 0)
            {
                flag27 = true;
            }
            e(flag27);
            parcel1.writeNoException();
            return true;

        case 27: // '\033'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int i8 = parcel.readInt();
            boolean flag26 = false;
            if (i8 != 0)
            {
                flag26 = true;
            }
            f(flag26);
            parcel1.writeNoException();
            return true;

        case 28: // '\034'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int l7 = parcel.readInt();
            boolean flag25 = false;
            if (l7 != 0)
            {
                flag25 = true;
            }
            g(flag25);
            parcel1.writeNoException();
            return true;

        case 29: // '\035'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            k();
            parcel1.writeNoException();
            return true;

        case 30: // '\036'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            c(h.a(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 31: // '\037'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            a(parcel.readString());
            parcel1.writeNoException();
            return true;

        case 32: // ' '
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            c(parcel.readString(), parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 33: // '!'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            java.util.List list1 = l();
            parcel1.writeNoException();
            parcel1.writeStringList(list1);
            return true;

        case 34: // '"'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int k7 = parcel.readInt();
            boolean flag24 = false;
            if (k7 != 0)
            {
                flag24 = true;
            }
            h(flag24);
            parcel1.writeNoException();
            return true;

        case 35: // '#'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int j7 = parcel.readInt();
            boolean flag23 = false;
            if (j7 != 0)
            {
                flag23 = true;
            }
            i(flag23);
            parcel1.writeNoException();
            return true;

        case 36: // '$'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag22 = m();
            parcel1.writeNoException();
            int i7 = 0;
            if (flag22)
            {
                i7 = 1;
            }
            parcel1.writeInt(i7);
            return true;

        case 37: // '%'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag21 = b(parcel.readString());
            parcel1.writeNoException();
            int k6 = 0;
            if (flag21)
            {
                k6 = 1;
            }
            parcel1.writeInt(k6);
            return true;

        case 38: // '&'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            long l6 = parcel.readLong();
            int j6 = parcel.readInt();
            boolean flag20 = false;
            if (j6 != 0)
            {
                flag20 = true;
            }
            a(l6, flag20);
            parcel1.writeNoException();
            return true;

        case 39: // '\''
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            long l5 = parcel.readLong();
            int i6 = parcel.readInt();
            boolean flag19 = false;
            if (i6 != 0)
            {
                flag19 = true;
            }
            b(l5, flag19);
            parcel1.writeNoException();
            return true;

        case 40: // '('
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            c(parcel.readString());
            parcel1.writeNoException();
            return true;

        case 41: // ')'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            b(parcel.createByteArray());
            parcel1.writeNoException();
            return true;

        case 42: // '*'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            a(parcel.readByte(), parcel.createByteArray());
            parcel1.writeNoException();
            return true;

        case 43: // '+'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            a(parcel.readString(), parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 44: // ','
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag18 = d(parcel.readString());
            parcel1.writeNoException();
            int k5 = 0;
            if (flag18)
            {
                k5 = 1;
            }
            parcel1.writeInt(k5);
            return true;

        case 45: // '-'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            d(h.a(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 46: // '.'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            e(parcel.readString());
            parcel1.writeNoException();
            return true;

        case 47: // '/'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag17 = n();
            parcel1.writeNoException();
            int j5 = 0;
            if (flag17)
            {
                j5 = 1;
            }
            parcel1.writeInt(j5);
            return true;

        case 48: // '0'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag16 = d(parcel.readInt());
            parcel1.writeNoException();
            int i5 = 0;
            if (flag16)
            {
                i5 = 1;
            }
            parcel1.writeInt(i5);
            return true;

        case 49: // '1'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag15 = e(parcel.readInt());
            parcel1.writeNoException();
            int l4 = 0;
            if (flag15)
            {
                l4 = 1;
            }
            parcel1.writeInt(l4);
            return true;

        case 50: // '2'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag14 = o();
            parcel1.writeNoException();
            int k4 = 0;
            if (flag14)
            {
                k4 = 1;
            }
            parcel1.writeInt(k4);
            return true;

        case 51: // '3'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag13 = p();
            parcel1.writeNoException();
            int j4 = 0;
            if (flag13)
            {
                j4 = 1;
            }
            parcel1.writeInt(j4);
            return true;

        case 52: // '4'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            q();
            parcel1.writeNoException();
            return true;

        case 53: // '5'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag11;
            boolean flag12;
            int i4;
            if (parcel.readInt() != 0)
            {
                flag11 = true;
            } else
            {
                flag11 = false;
            }
            flag12 = j(flag11);
            parcel1.writeNoException();
            i4 = 0;
            if (flag12)
            {
                i4 = 1;
            }
            parcel1.writeInt(i4);
            return true;

        case 54: // '6'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag10 = b(parcel.readString(), parcel.readString());
            parcel1.writeNoException();
            int l3 = 0;
            if (flag10)
            {
                l3 = 1;
            }
            parcel1.writeInt(l3);
            return true;

        case 55: // '7'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag9 = r();
            parcel1.writeNoException();
            int k3 = 0;
            if (flag9)
            {
                k3 = 1;
            }
            parcel1.writeInt(k3);
            return true;

        case 56: // '8'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int j3 = parcel.readInt();
            boolean flag8 = false;
            if (j3 != 0)
            {
                flag8 = true;
            }
            k(flag8);
            parcel1.writeNoException();
            return true;

        case 57: // '9'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag7 = s();
            parcel1.writeNoException();
            int i3 = 0;
            if (flag7)
            {
                i3 = 1;
            }
            parcel1.writeInt(i3);
            return true;

        case 58: // ':'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int l2 = parcel.readInt();
            boolean flag6 = false;
            if (l2 != 0)
            {
                flag6 = true;
            }
            l(flag6);
            parcel1.writeNoException();
            return true;

        case 59: // ';'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            boolean flag5 = f(parcel.readString());
            parcel1.writeNoException();
            int k2 = 0;
            if (flag5)
            {
                k2 = 1;
            }
            parcel1.writeInt(k2);
            return true;

        case 60: // '<'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            java.util.List list = t();
            parcel1.writeNoException();
            parcel1.writeStringList(list);
            return true;

        case 61: // '='
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            String s1 = g(parcel.readString());
            parcel1.writeNoException();
            parcel1.writeString(s1);
            return true;

        case 62: // '>'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            String s = parcel.readString();
            int j2 = parcel.readInt();
            boolean flag4 = false;
            if (j2 != 0)
            {
                flag4 = true;
            }
            a(s, flag4);
            parcel1.writeNoException();
            return true;

        case 63: // '?'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int i2 = parcel.readInt();
            boolean flag3 = false;
            if (i2 != 0)
            {
                flag3 = true;
            }
            a(flag3, parcel.readString());
            parcel1.writeNoException();
            return true;

        case 64: // '@'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int l1 = parcel.readInt();
            boolean flag2 = false;
            if (l1 != 0)
            {
                flag2 = true;
            }
            m(flag2);
            parcel1.writeNoException();
            return true;

        case 65: // 'A'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            int k1 = parcel.readInt();
            boolean flag1 = false;
            if (k1 != 0)
            {
                flag1 = true;
            }
            n(flag1);
            parcel1.writeNoException();
            return true;

        case 66: // 'B'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.ISppControl");
            j1 = parcel.readInt();
            flag = false;
            break;
        }
        if (j1 != 0)
        {
            flag = true;
        }
        o(flag);
        parcel1.writeNoException();
        return true;
    }
}
