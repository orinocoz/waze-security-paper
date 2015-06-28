// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.c;

import android.content.Context;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import jp.pioneer.ce.aam2.AAM2Kit.b.a;
import jp.pioneer.ce.aam2.AAM2Kit.b.b.e;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.c:
//            a

public class z extends e
{

    protected static final int b;
    private static e c = null;
    private Method d;
    private Method e;
    private Method f;
    private Method g;
    private Object h;
    private Object i;

    private z()
    {
        d = null;
        e = null;
        f = null;
        g = null;
        h = null;
        i = null;
    }

    public static e b(Context context)
    {
        jp/pioneer/ce/aam2/AAM2Kit/c/z;
        JVM INSTR monitorenter ;
        e e1;
        if (c == null)
        {
            c = new z();
            c.a(context);
        }
        e1 = c;
        jp/pioneer/ce/aam2/AAM2Kit/c/z;
        JVM INSTR monitorexit ;
        return e1;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(MotionEvent motionevent, int j)
    {
        motionevent.setSource(j);
    }

    public boolean a(Context context)
    {
        if (context == null || a)
        {
            return false;
        }
        if (b >= 16) goto _L2; else goto _L1
_L1:
        Method amethod1[];
        Class class2 = Class.forName("android.view.IWindowManager$Stub");
        Method method3 = Class.forName("android.os.ServiceManager").getDeclaredMethod("getService", new Class[] {
            java/lang/String
        });
        h = class2.getDeclaredMethod("asInterface", new Class[] {
            android/os/IBinder
        }).invoke(null, new Object[] {
            (IBinder)method3.invoke(null, new Object[] {
                "window"
            })
        });
        amethod1 = class2.getMethods();
        int k = 0;
_L14:
        int l;
        Method method4;
        String s;
        try
        {
            l = amethod1.length;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return false;
        }
        if (k < l) goto _L4; else goto _L3
_L3:
        a = true;
        return true;
_L4:
        method4 = amethod1[k];
        if (method4 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        s = method4.getName();
        if (!s.contentEquals("injectPointerEvent")) goto _L6; else goto _L5
_L5:
        d = method4;
        jp.pioneer.ce.aam2.AAM2Kit.b.a.a(method4.toString());
_L8:
        if (d == null || e == null || f == null || g == null) goto _L7; else goto _L3
_L6:
label0:
        {
            if (!s.contentEquals("injectKeyEvent"))
            {
                break label0;
            }
            e = method4;
            jp.pioneer.ce.aam2.AAM2Kit.b.a.a(method4.toString());
        }
          goto _L8
        if (!s.contentEquals("injectTrackballEvent")) goto _L10; else goto _L9
_L9:
        f = method4;
        jp.pioneer.ce.aam2.AAM2Kit.b.a.a(method4.toString());
          goto _L8
_L10:
        if (!s.contentEquals("setEventDispatching")) goto _L8; else goto _L11
_L11:
        g = method4;
        jp.pioneer.ce.aam2.AAM2Kit.b.a.a(method4.toString());
          goto _L8
_L2:
        Method amethod[];
        Class class1 = Class.forName("android.hardware.input.IInputManager$Stub");
        Method method = Class.forName("android.os.ServiceManager").getDeclaredMethod("getService", new Class[] {
            java/lang/String
        });
        i = class1.getDeclaredMethod("asInterface", new Class[] {
            android/os/IBinder
        }).invoke(null, new Object[] {
            (IBinder)method.invoke(null, new Object[] {
                "input"
            })
        });
        amethod = class1.getMethods();
        int j = 0;
_L15:
        if (j >= amethod.length) goto _L3; else goto _L12
_L12:
        Method method1 = amethod[j];
        if (method1 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        Method method2;
        if (method1.getName().contentEquals("injectInputEvent"))
        {
            d = method1;
        }
        method2 = d;
        if (method2 == null) goto _L13; else goto _L3
_L7:
        k++;
          goto _L14
_L13:
        j++;
          goto _L15
    }

    public boolean a(KeyEvent keyevent, boolean flag)
    {
        a();
        if (b >= 16 || e != null) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
_L6:
        return flag1;
_L2:
        if (b >= 16 && d == null)
        {
            return false;
        }
        if (b >= 16) goto _L4; else goto _L3
_L3:
        boolean flag3;
        Method method1 = e;
        Object obj1 = h;
        Object aobj1[] = new Object[2];
        aobj1[0] = keyevent;
        aobj1[1] = Boolean.FALSE;
        flag3 = ((Boolean)method1.invoke(obj1, aobj1)).booleanValue();
        flag1 = flag3;
_L8:
        if (keyevent.getAction() != 0) goto _L6; else goto _L5
_L5:
        jp.pioneer.ce.aam2.AAM2Kit.c.a.c().b(keyevent.getEventTime(), true);
        return flag1;
        IllegalArgumentException illegalargumentexception1;
        illegalargumentexception1;
_L11:
        if (keyevent.getAction() != 0) goto _L6; else goto _L7
_L7:
        jp.pioneer.ce.aam2.AAM2Kit.c.a.c().b(keyevent.getEventTime(), false);
        return flag1;
_L4:
        boolean flag2;
        Method method = d;
        Object obj = i;
        Object aobj[] = new Object[2];
        aobj[0] = keyevent;
        aobj[1] = Integer.valueOf(1);
        flag2 = ((Boolean)method.invoke(obj, aobj)).booleanValue();
        flag1 = flag2;
          goto _L8
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        flag1 = false;
_L10:
        if (keyevent.getAction() == 0)
        {
            jp.pioneer.ce.aam2.AAM2Kit.c.a.c().b(keyevent.getEventTime(), false);
            return flag1;
        }
          goto _L6
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        flag1 = false;
_L9:
        if (keyevent.getAction() == 0)
        {
            jp.pioneer.ce.aam2.AAM2Kit.c.a.c().b(keyevent.getEventTime(), false);
            return flag1;
        }
          goto _L6
        InvocationTargetException invocationtargetexception1;
        invocationtargetexception1;
          goto _L9
        IllegalAccessException illegalaccessexception1;
        illegalaccessexception1;
          goto _L10
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        flag1 = false;
          goto _L11
    }

    public boolean a(MotionEvent motionevent, boolean flag)
    {
        byte byte0;
        byte0 = 2;
        a();
        if (d != null) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
_L6:
        return flag1;
_L2:
        if (b >= 16) goto _L4; else goto _L3
_L3:
        boolean flag3;
        Method method1 = d;
        Object obj1 = h;
        Object aobj1[] = new Object[2];
        aobj1[0] = motionevent;
        aobj1[1] = Boolean.valueOf(flag);
        flag3 = ((Boolean)method1.invoke(obj1, aobj1)).booleanValue();
        flag1 = flag3;
_L7:
        if (motionevent.getActionMasked() != 0) goto _L6; else goto _L5
_L5:
        jp.pioneer.ce.aam2.AAM2Kit.c.a.c().a(motionevent.getEventTime(), true);
        return flag1;
        IllegalArgumentException illegalargumentexception1;
        illegalargumentexception1;
_L10:
        if (motionevent.getActionMasked() == 0)
        {
            jp.pioneer.ce.aam2.AAM2Kit.c.a.c().a(motionevent.getEventTime(), false);
            return flag1;
        }
          goto _L6
_L4:
        Method method;
        Object obj;
        Object aobj[];
        boolean flag2;
        if (!flag)
        {
            byte0 = 1;
        }
        a(motionevent, 4098);
        method = d;
        obj = i;
        aobj = new Object[2];
        aobj[0] = motionevent;
        aobj[1] = Integer.valueOf(byte0);
        flag2 = ((Boolean)method.invoke(obj, aobj)).booleanValue();
        flag1 = flag2;
          goto _L7
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        flag1 = false;
_L9:
        if (motionevent.getActionMasked() == 0)
        {
            jp.pioneer.ce.aam2.AAM2Kit.c.a.c().a(motionevent.getEventTime(), false);
            return flag1;
        }
          goto _L6
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        flag1 = false;
_L8:
        if (motionevent.getActionMasked() == 0)
        {
            jp.pioneer.ce.aam2.AAM2Kit.c.a.c().a(motionevent.getEventTime(), false);
            return flag1;
        }
          goto _L6
        InvocationTargetException invocationtargetexception1;
        invocationtargetexception1;
          goto _L8
        IllegalAccessException illegalaccessexception1;
        illegalaccessexception1;
          goto _L9
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        flag1 = false;
          goto _L10
    }

    static 
    {
        b = android.os.Build.VERSION.SDK_INT;
    }
}
