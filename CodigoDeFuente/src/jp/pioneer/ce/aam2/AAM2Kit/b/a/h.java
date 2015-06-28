// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.b.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.view.KeyEvent;
import android.view.MotionEvent;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.b.a:
//            g, i, e, c, 
//            a

public abstract class h extends Binder
    implements g
{

    public h()
    {
        attachInterface(this, "jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
    }

    public static g a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        if (iinterface != null && (iinterface instanceof g))
        {
            return (g)iinterface;
        } else
        {
            return new i(ibinder);
        }
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int j, Parcel parcel, Parcel parcel1, int k)
    {
        switch (j)
        {
        default:
            return super.onTransact(j, parcel, parcel1, k);

        case 1598968902: 
            parcel1.writeString("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            a(parcel.readInt());
            return true;

        case 2: // '\002'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            int i4 = parcel.readInt();
            MotionEvent motionevent2 = null;
            if (i4 != 0)
            {
                motionevent2 = (MotionEvent)MotionEvent.CREATOR.createFromParcel(parcel);
            }
            int j4 = parcel.readInt();
            boolean flag7 = false;
            if (j4 != 0)
            {
                flag7 = true;
            }
            a(motionevent2, flag7);
            return true;

        case 3: // '\003'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            int k3 = parcel.readInt();
            KeyEvent keyevent = null;
            if (k3 != 0)
            {
                keyevent = (KeyEvent)KeyEvent.CREATOR.createFromParcel(parcel);
            }
            int l3 = parcel.readInt();
            boolean flag6 = false;
            if (l3 != 0)
            {
                flag6 = true;
            }
            a(keyevent, flag6);
            return true;

        case 4: // '\004'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            int i3 = parcel.readInt();
            MotionEvent motionevent1 = null;
            if (i3 != 0)
            {
                motionevent1 = (MotionEvent)MotionEvent.CREATOR.createFromParcel(parcel);
            }
            int j3 = parcel.readInt();
            boolean flag5 = false;
            if (j3 != 0)
            {
                flag5 = true;
            }
            b(motionevent1, flag5);
            return true;

        case 5: // '\005'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            int l2 = parcel.readInt();
            e e1 = null;
            if (l2 != 0)
            {
                e1 = (e)e.c.createFromParcel(parcel);
            }
            a(e1);
            return true;

        case 6: // '\006'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            int k2 = parcel.readInt();
            boolean flag4 = false;
            if (k2 != 0)
            {
                flag4 = true;
            }
            a(flag4);
            return true;

        case 7: // '\007'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            int j2 = parcel.readInt();
            c c1 = null;
            if (j2 != 0)
            {
                c1 = (c)c.b.createFromParcel(parcel);
            }
            a(c1);
            return true;

        case 8: // '\b'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            b(parcel.readInt());
            return true;

        case 9: // '\t'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            int i2 = parcel.readInt();
            boolean flag3 = false;
            if (i2 != 0)
            {
                flag3 = true;
            }
            b(flag3);
            return true;

        case 10: // '\n'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            int l1 = parcel.readInt();
            a a1 = null;
            if (l1 != 0)
            {
                a1 = (a)a.e.createFromParcel(parcel);
            }
            a(a1);
            return true;

        case 11: // '\013'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            a();
            return true;

        case 12: // '\f'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            c(parcel.readInt());
            return true;

        case 13: // '\r'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            a(parcel.createByteArray());
            return true;

        case 14: // '\016'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            int k1 = parcel.readInt();
            MotionEvent motionevent = null;
            if (k1 != 0)
            {
                motionevent = (MotionEvent)MotionEvent.CREATOR.createFromParcel(parcel);
            }
            a(motionevent);
            return true;

        case 15: // '\017'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            b();
            return true;

        case 16: // '\020'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            b(parcel.createByteArray());
            return true;

        case 17: // '\021'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            a(parcel.readByte(), parcel.createByteArray());
            return true;

        case 18: // '\022'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            c();
            return true;

        case 19: // '\023'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            d();
            return true;

        case 20: // '\024'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            int j1 = parcel.readInt();
            boolean flag2 = false;
            if (j1 != 0)
            {
                flag2 = true;
            }
            c(flag2);
            return true;

        case 21: // '\025'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            a(parcel.readInt(), parcel.readInt());
            return true;

        case 22: // '\026'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            e();
            return true;

        case 23: // '\027'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            int i1 = parcel.readInt();
            boolean flag1 = false;
            if (i1 != 0)
            {
                flag1 = true;
            }
            d(flag1);
            return true;

        case 24: // '\030'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            int l = parcel.readInt();
            boolean flag = false;
            if (l != 0)
            {
                flag = true;
            }
            e(flag);
            return true;

        case 25: // '\031'
            parcel.enforceInterface("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
            c(parcel.createByteArray());
            return true;
        }
    }
}
