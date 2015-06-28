// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.b.a;

import android.os.IBinder;
import android.os.Parcel;
import android.view.KeyEvent;
import android.view.MotionEvent;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.b.a:
//            g, a, c, e

class i
    implements g
{

    private IBinder a;

    i(IBinder ibinder)
    {
        a = ibinder;
    }

    public void a()
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        a.transact(11, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void a(byte byte0, byte abyte0[])
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        parcel.writeByte(byte0);
        parcel.writeByteArray(abyte0);
        a.transact(17, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void a(int j)
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        parcel.writeInt(j);
        a.transact(1, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void a(int j, int k)
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        parcel.writeInt(j);
        parcel.writeInt(k);
        a.transact(21, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void a(KeyEvent keyevent, boolean flag)
    {
        int j;
        Parcel parcel;
        j = 1;
        parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        if (keyevent == null) goto _L2; else goto _L1
_L1:
        parcel.writeInt(1);
        keyevent.writeToParcel(parcel, 0);
          goto _L3
_L5:
        parcel.writeInt(j);
        a.transact(3, parcel, null, 1);
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
        j = 0;
        if (true) goto _L4; else goto _L3
_L4:
        break; /* Loop/switch isn't completed */
_L3:
        if (!flag) goto _L6; else goto _L5
    }

    public void a(MotionEvent motionevent)
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        if (motionevent == null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        parcel.writeInt(1);
        motionevent.writeToParcel(parcel, 0);
_L1:
        a.transact(14, parcel, null, 1);
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void a(MotionEvent motionevent, boolean flag)
    {
        int j;
        Parcel parcel;
        j = 1;
        parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        if (motionevent == null) goto _L2; else goto _L1
_L1:
        parcel.writeInt(1);
        motionevent.writeToParcel(parcel, 0);
          goto _L3
_L5:
        parcel.writeInt(j);
        a.transact(2, parcel, null, 1);
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
        j = 0;
        if (true) goto _L4; else goto _L3
_L4:
        break; /* Loop/switch isn't completed */
_L3:
        if (!flag) goto _L6; else goto _L5
    }

    public void a(a a1)
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        parcel.writeInt(1);
        a1.writeToParcel(parcel, 0);
_L1:
        a.transact(10, parcel, null, 1);
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void a(c c1)
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        if (c1 == null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        parcel.writeInt(1);
        c1.writeToParcel(parcel, 0);
_L1:
        a.transact(7, parcel, null, 1);
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void a(e e1)
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        if (e1 == null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        parcel.writeInt(1);
        e1.writeToParcel(parcel, 0);
_L1:
        a.transact(5, parcel, null, 1);
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void a(boolean flag)
    {
        int j;
        Parcel parcel;
        j = 1;
        parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        if (!flag)
        {
            j = 0;
        }
        parcel.writeInt(j);
        a.transact(6, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void a(byte abyte0[])
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        parcel.writeByteArray(abyte0);
        a.transact(13, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public IBinder asBinder()
    {
        return a;
    }

    public void b()
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        a.transact(15, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void b(int j)
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        parcel.writeInt(j);
        a.transact(8, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void b(MotionEvent motionevent, boolean flag)
    {
        int j;
        Parcel parcel;
        j = 1;
        parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        if (motionevent == null) goto _L2; else goto _L1
_L1:
        parcel.writeInt(1);
        motionevent.writeToParcel(parcel, 0);
          goto _L3
_L5:
        parcel.writeInt(j);
        a.transact(4, parcel, null, 1);
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
        j = 0;
        if (true) goto _L4; else goto _L3
_L4:
        break; /* Loop/switch isn't completed */
_L3:
        if (!flag) goto _L6; else goto _L5
    }

    public void b(boolean flag)
    {
        int j;
        Parcel parcel;
        j = 1;
        parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        if (!flag)
        {
            j = 0;
        }
        parcel.writeInt(j);
        a.transact(9, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void b(byte abyte0[])
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        parcel.writeByteArray(abyte0);
        a.transact(16, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void c()
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        a.transact(18, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void c(int j)
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        parcel.writeInt(j);
        a.transact(12, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void c(boolean flag)
    {
        int j;
        Parcel parcel;
        j = 1;
        parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        if (!flag)
        {
            j = 0;
        }
        parcel.writeInt(j);
        a.transact(20, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void c(byte abyte0[])
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        parcel.writeByteArray(abyte0);
        a.transact(25, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void d()
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        a.transact(19, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void d(boolean flag)
    {
        int j;
        Parcel parcel;
        j = 1;
        parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        if (!flag)
        {
            j = 0;
        }
        parcel.writeInt(j);
        a.transact(23, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void e()
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        a.transact(22, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public void e(boolean flag)
    {
        int j;
        Parcel parcel;
        j = 1;
        parcel = Parcel.obtain();
        parcel.writeInterfaceToken("jp.pioneer.ce.aam2.AAM2Kit.common.aidl.IExtEventControl");
        if (!flag)
        {
            j = 0;
        }
        parcel.writeInt(j);
        a.transact(24, parcel, null, 1);
        parcel.recycle();
        return;
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }
}
