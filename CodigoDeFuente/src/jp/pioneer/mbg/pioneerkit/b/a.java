// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.b;

import android.app.Activity;
import android.app.Application;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.Iterator;
import jp.pioneer.mbg.pioneerkit.ExtCertifiedInfo;
import jp.pioneer.mbg.pioneerkit.ExtDeviceSpecInfo;
import jp.pioneer.mbg.pioneerkit.ExtLocation;
import jp.pioneer.mbg.pioneerkit.IExtAppFocusListener;
import jp.pioneer.mbg.pioneerkit.IExtLocationListener;
import jp.pioneer.mbg.pioneerkit.IExtMediaInfoReqListener;
import jp.pioneer.mbg.pioneerkit.IExtRemoteCtrlListener;
import jp.pioneer.mbg.pioneerkit.IExtRequiredListener;
import jp.pioneer.mbg.pioneerkit.a.a.j;
import jp.pioneer.mbg.pioneerkit.a.b.b;
import jp.pioneer.mbg.pioneerkit.c;
import jp.pioneer.mbg.pioneerkit.d;
import jp.pioneer.mbg.pioneerkit.e;

// Referenced classes of package jp.pioneer.mbg.pioneerkit.b:
//            b, t, d, c

public class a
{

    private static boolean D = false;
    private static String f = "com.extscreen.service";
    private static a g;
    private Runnable A;
    private IntentFilter B;
    private BroadcastReceiver C;
    protected j a;
    protected jp.pioneer.mbg.pioneerkit.b.d b;
    protected Messenger c;
    final String d = "PionnerKit";
    ExtDeviceSpecInfo e;
    private boolean h;
    private t i;
    private ArrayList j;
    private ArrayList k;
    private ArrayList l;
    private ArrayList m;
    private ArrayList n;
    private ArrayList o;
    private ArrayList p;
    private ArrayList q;
    private ArrayList r;
    private ArrayList s;
    private String t;
    private String u;
    private Context v;
    private int w;
    private HandlerThread x;
    private Handler y;
    private boolean z;

    public a()
    {
        i = null;
        j = new ArrayList();
        k = new ArrayList();
        l = new ArrayList();
        m = new ArrayList();
        n = new ArrayList();
        o = new ArrayList();
        p = new ArrayList();
        q = new ArrayList();
        r = new ArrayList();
        s = new ArrayList();
        t = null;
        u = null;
        v = null;
        w = 0;
        e = null;
        x = null;
        y = null;
        z = false;
        A = new jp.pioneer.mbg.pioneerkit.b.b(this);
        jp.pioneer.mbg.pioneerkit.a.a.a("ExtScreenServiceManager created");
        i = new t(this);
        b = new jp.pioneer.mbg.pioneerkit.b.d(this);
        c = new Messenger(jp.pioneer.mbg.pioneerkit.a.b.b.a().b());
    }

    private void a(MotionEvent motionevent)
    {
        if (q != null && q.size() != 0)
        {
            Iterator iterator = q.iterator();
            while (iterator.hasNext()) 
            {
                ((d)iterator.next()).a(motionevent);
            }
        }
    }

    private void a(ExtDeviceSpecInfo extdevicespecinfo)
    {
        if (l != null && l.size() != 0)
        {
            Iterator iterator = l.iterator();
            while (iterator.hasNext()) 
            {
                ((IExtRequiredListener)iterator.next()).onStartAdvancedAppMode(extdevicespecinfo);
            }
        }
    }

    static void a(a a1, int i1)
    {
        a1.d(i1);
    }

    static void a(a a1, MotionEvent motionevent)
    {
        a1.a(motionevent);
    }

    static void a(a a1, ExtDeviceSpecInfo extdevicespecinfo)
    {
        a1.a(extdevicespecinfo);
    }

    static void a(a a1, boolean flag)
    {
        a1.h = flag;
    }

    static void a(a a1, byte abyte0[])
    {
        a1.b(abyte0);
    }

    static boolean a(a a1)
    {
        return a1.z;
    }

    static Handler b(a a1)
    {
        return a1.y;
    }

    public static a b()
    {
        jp/pioneer/mbg/pioneerkit/b/a;
        JVM INSTR monitorenter ;
        a a1;
        if (g == null)
        {
            g = new a();
            jp.pioneer.mbg.pioneerkit.a.a.a((new StringBuilder("ExtScreenServiceManager created ")).append(g.toString()).toString());
        }
        a1 = g;
        jp/pioneer/mbg/pioneerkit/b/a;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    private void b(byte abyte0[])
    {
        if (m != null && m.size() != 0)
        {
            Iterator iterator = m.iterator();
            while (iterator.hasNext()) 
            {
                ((c)iterator.next()).a(abyte0);
            }
        }
    }

    static Runnable c(a a1)
    {
        return a1.A;
    }

    public static a c()
    {
        jp/pioneer/mbg/pioneerkit/b/a;
        JVM INSTR monitorenter ;
        a a1 = g;
        jp/pioneer/mbg/pioneerkit/b/a;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    static String d(a a1)
    {
        return a1.t;
    }

    private void d(int i1)
    {
        if (p != null && p.size() != 0)
        {
            Iterator iterator = p.iterator();
            while (iterator.hasNext()) 
            {
                ((IExtRemoteCtrlListener)iterator.next()).onReceiveRemoteCtrl(i1);
            }
        }
    }

    static void e(a a1)
    {
        a1.l();
    }

    static Context f(a a1)
    {
        return a1.v;
    }

    static void g(a a1)
    {
        a1.k();
    }

    private void k()
    {
        if (l != null && l.size() != 0)
        {
            Iterator iterator = l.iterator();
            while (iterator.hasNext()) 
            {
                ((IExtRequiredListener)iterator.next()).onStopAdvancedAppMode();
            }
        }
    }

    private void l()
    {
        if (l != null && l.size() != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Iterator iterator = l.iterator();
_L6:
        if (!iterator.hasNext()) goto _L1; else goto _L3
_L3:
        IExtRequiredListener iextrequiredlistener;
        ExtCertifiedInfo extcertifiedinfo;
        iextrequiredlistener = (IExtRequiredListener)iterator.next();
        extcertifiedinfo = iextrequiredlistener.onRequireCertification();
        jp.pioneer.mbg.pioneerkit.a.a.a("handleRequireCertification ");
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_239;
        }
        if (extcertifiedinfo != null) goto _L5; else goto _L4
_L4:
        boolean flag;
        jp.pioneer.mbg.pioneerkit.a.a.a((new StringBuilder("handleRequireCertification ")).append(t).append("none").toString());
        flag = a.a(t, "", "");
_L7:
        iextrequiredlistener.onCertifiedResult(flag);
          goto _L6
        RemoteException remoteexception;
        remoteexception;
        remoteexception.printStackTrace();
          goto _L6
_L5:
label0:
        {
            jp.pioneer.mbg.pioneerkit.a.a.a((new StringBuilder("handleRequireCertification ")).append(extcertifiedinfo.b()).append(extcertifiedinfo.a()).append(extcertifiedinfo.c()).toString());
            if (!t.contentEquals(extcertifiedinfo.b()))
            {
                break label0;
            }
            flag = a.a(extcertifiedinfo.b(), extcertifiedinfo.a(), extcertifiedinfo.c());
        }
          goto _L7
        a.b(t, extcertifiedinfo.a(), extcertifiedinfo.c());
        flag = false;
          goto _L7
        flag = false;
          goto _L7
    }

    public void a()
    {
        boolean flag = a("jp.pioneer.mbg.appradio.AppRadioLauncher");
        Context context = v;
        boolean flag1 = false;
        if (context != null)
        {
            boolean flag2 = v.getPackageName().contentEquals("jp.pioneer.mbg.appradio.AppRadioLauncher");
            flag1 = false;
            if (flag2)
            {
                flag1 = true;
            }
        }
        if (flag && !flag1)
        {
            if (a != null)
            {
                if (!a.asBinder().pingBinder() && v != null)
                {
                    Intent intent = new Intent();
                    intent.setAction(f);
                    v.bindService(intent, i, 1);
                }
            } else
            if (v != null)
            {
                e(v);
                return;
            }
        }
    }

    protected void a(byte byte0, byte abyte0[])
    {
        if (r != null && r.size() != 0)
        {
            Iterator iterator = r.iterator();
            while (iterator.hasNext()) 
            {
                ((IExtMediaInfoReqListener)iterator.next()).onReceiveTrackInfoRequest(byte0, abyte0);
            }
        }
    }

    protected void a(int i1)
    {
        if (j != null && j.size() != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Iterator iterator = j.iterator();
        switch (i1)
        {
        default:
            return;

        case 65280: 
            while (iterator.hasNext()) 
            {
                ((e)iterator.next()).e();
            }
            break;

        case 65284: 
            for (; iterator.hasNext(); ((e)iterator.next()).a()) { }
            return;

        case 65281: 
            for (; iterator.hasNext(); ((e)iterator.next()).d()) { }
            return;

        case 65282: 
            for (; iterator.hasNext(); ((e)iterator.next()).c()) { }
            return;

        case 65283: 
            for (; iterator.hasNext(); ((e)iterator.next()).b()) { }
            break; /* Loop/switch isn't completed */
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void a(long l1, boolean flag)
    {
        try
        {
            if (a != null)
            {
                a.a(l1, flag);
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void a(Context context)
    {
        if (!D)
        {
            B = new IntentFilter();
            B.addAction("jp.pioneer.mbg.appradio.AppRadioLauncher.BindFilter");
            B.addCategory("android.intent.category.BindFilter");
            C = new jp.pioneer.mbg.pioneerkit.b.c(this);
            if (context != null)
            {
                context.registerReceiver(C, B);
                D = true;
                return;
            }
        }
    }

    protected void a(jp.pioneer.mbg.pioneerkit.a.a.c c1)
    {
        if (k != null && k.size() != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        ExtLocation extlocation;
        byte byte0;
        extlocation = new ExtLocation();
        extlocation.c(c1.e());
        extlocation.b(c1.g());
        extlocation.a(c1.c());
        extlocation.b(c1.d());
        extlocation.a(c1.f());
        extlocation.a(c1.a());
        byte0 = c1.b();
        if (byte0 < 0 || byte0 >= 70)
        {
            break; /* Loop/switch isn't completed */
        }
        extlocation.a(10);
_L4:
        Iterator iterator = k.iterator();
        while (iterator.hasNext()) 
        {
            ((IExtLocationListener)iterator.next()).onReceiveLocationInfo(extlocation);
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (byte0 >= 70 && byte0 <= 254)
        {
            extlocation.a(100);
        } else
        {
            extlocation.a(-1);
        }
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }

    protected void a(boolean flag)
    {
        if (l != null && l.size() != 0)
        {
            Iterator iterator = l.iterator();
            while (iterator.hasNext()) 
            {
                ((IExtRequiredListener)iterator.next()).onReceiveParkingInfo(flag);
            }
        }
    }

    public boolean a(String s1)
    {
        Context context = v;
        android.content.pm.PackageInfo packageinfo;
        packageinfo = null;
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        android.content.pm.PackageInfo packageinfo1 = v.getPackageManager().getPackageInfo(s1, 0);
        packageinfo = packageinfo1;
_L2:
        return packageinfo != null;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        packageinfo = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean a(IExtAppFocusListener iextappfocuslistener)
    {
        if (iextappfocuslistener != null)
        {
            if (s.isEmpty())
            {
                try
                {
                    if (a != null)
                    {
                        a.d(b, t);
                    }
                }
                catch (RemoteException remoteexception)
                {
                    remoteexception.printStackTrace();
                }
            }
            if (!s.contains(iextappfocuslistener))
            {
                s.add(iextappfocuslistener);
            }
            return true;
        } else
        {
            return false;
        }
    }

    public boolean a(IExtLocationListener iextlocationlistener)
    {
        boolean flag = true;
        if (e == null || e.getLocationDevice() == 0)
        {
            flag = false;
        } else
        if (iextlocationlistener != null)
        {
            if (k.isEmpty())
            {
                try
                {
                    if (a != null)
                    {
                        a.e(true);
                    }
                }
                catch (RemoteException remoteexception)
                {
                    remoteexception.printStackTrace();
                }
            }
            if (!k.contains(iextlocationlistener))
            {
                k.add(iextlocationlistener);
                return flag;
            }
        } else
        {
            return false;
        }
        return flag;
    }

    public boolean a(IExtRemoteCtrlListener iextremotectrllistener)
    {
        while (e == null || iextremotectrllistener == null) 
        {
            return false;
        }
        if (p.isEmpty())
        {
            try
            {
                if (a != null)
                {
                    a.c(b, t);
                }
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
        }
        if (!p.contains(iextremotectrllistener))
        {
            p.add(iextremotectrllistener);
        }
        return true;
    }

    public boolean a(IExtRequiredListener iextrequiredlistener)
    {
        if (iextrequiredlistener != null)
        {
            if (!l.contains(iextrequiredlistener))
            {
                l.add(iextrequiredlistener);
            }
            return true;
        } else
        {
            return false;
        }
    }

    public boolean a(byte abyte0[])
    {
        j j1;
        boolean flag;
        try
        {
            j1 = a;
        }
        catch (Exception exception)
        {
            return false;
        }
        flag = false;
        if (j1 == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        a.b(abyte0);
        flag = true;
        return flag;
    }

    protected void b(int i1)
    {
        w = i1;
        if (o != null && o.size() != 0)
        {
            Iterator iterator = o.iterator();
            while (iterator.hasNext()) 
            {
                ((jp.pioneer.mbg.pioneerkit.a)iterator.next()).a(i1);
            }
        }
    }

    public void b(long l1, boolean flag)
    {
        try
        {
            if (a != null)
            {
                a.b(l1, flag);
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void b(Context context)
    {
        if (D && context != null)
        {
            context.unregisterReceiver(C);
            D = false;
        }
    }

    protected void b(boolean flag)
    {
        if (n != null && n.size() != 0)
        {
            Iterator iterator = n.iterator();
            while (iterator.hasNext()) 
            {
                ((jp.pioneer.mbg.pioneerkit.b)iterator.next()).a(flag);
            }
        }
    }

    public boolean b(byte byte0, byte abyte0[])
    {
        j j1;
        boolean flag;
        try
        {
            j1 = a;
        }
        catch (Exception exception)
        {
            return false;
        }
        flag = false;
        if (j1 == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        a.a(byte0, abyte0);
        flag = true;
        return flag;
    }

    public boolean b(String s1)
    {
        j j1;
        boolean flag;
        try
        {
            j1 = a;
        }
        catch (Exception exception)
        {
            return false;
        }
        flag = false;
        if (j1 == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        a.c(s1);
        flag = true;
        return flag;
    }

    public boolean b(IExtAppFocusListener iextappfocuslistener)
    {
        if (iextappfocuslistener == null || s.isEmpty())
        {
            return false;
        }
        s.remove(iextappfocuslistener);
        if (s.isEmpty())
        {
            try
            {
                if (a != null)
                {
                    a.e(t);
                }
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
        }
        return true;
    }

    public boolean b(IExtLocationListener iextlocationlistener)
    {
        if (iextlocationlistener == null || k.isEmpty())
        {
            return false;
        }
        k.remove(iextlocationlistener);
        if (k.isEmpty())
        {
            try
            {
                if (a != null)
                {
                    a.e(false);
                }
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
        }
        return true;
    }

    public boolean b(IExtRemoteCtrlListener iextremotectrllistener)
    {
        if (iextremotectrllistener == null || p.isEmpty())
        {
            return false;
        }
        p.remove(iextremotectrllistener);
        if (p.isEmpty())
        {
            try
            {
                if (a != null)
                {
                    a.a(t);
                }
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
        }
        return true;
    }

    public boolean b(IExtRequiredListener iextrequiredlistener)
    {
        if (iextrequiredlistener != null)
        {
            l.remove(iextrequiredlistener);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean c(int i1)
    {
        j j1;
        boolean flag;
        try
        {
            j1 = a;
        }
        catch (Exception exception)
        {
            return false;
        }
        flag = false;
        if (j1 == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        a.a(t, i1);
        flag = true;
        return flag;
    }

    public boolean c(Context context)
    {
        if (context == null)
        {
            return false;
        } else
        {
            Context context1 = context.getApplicationContext();
            v = context1;
            context1.startService(new Intent("com.extscreen.service"));
            return e(context1);
        }
    }

    public void d(Context context)
    {
        if (context != null)
        {
            f(context.getApplicationContext());
        }
    }

    public boolean d()
    {
        j j1 = a;
        boolean flag = false;
        if (j1 != null)
        {
            boolean flag1;
            try
            {
                flag1 = a.b(t);
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
                return false;
            }
            flag = flag1;
        }
        return flag;
    }

    public boolean e()
    {
        j j1 = a;
        boolean flag = false;
        if (j1 != null)
        {
            boolean flag1;
            try
            {
                flag1 = a.g();
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
                return false;
            }
            flag = flag1;
        }
        return flag;
    }

    protected boolean e(Context context)
    {
        if (h)
        {
            return true;
        }
        Intent intent;
        if (context instanceof Service)
        {
            t = context.getClass().getSimpleName();
            u = context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
        } else
        if ((context instanceof Activity) || (context instanceof Application))
        {
            t = context.getPackageName();
            u = context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
        }
        intent = new Intent();
        intent.setAction(f);
        if (!context.bindService(intent, i, 1))
        {
            return false;
        } else
        {
            jp.pioneer.mbg.pioneerkit.a.a.a("bindSppService ");
            return true;
        }
    }

    protected void f()
    {
        if (r != null && r.size() != 0)
        {
            Iterator iterator = r.iterator();
            while (iterator.hasNext()) 
            {
                ((IExtMediaInfoReqListener)iterator.next()).onReceiveAppNameRequest();
            }
        }
    }

    protected void f(Context context)
    {
        if (!h)
        {
            return;
        }
        if (a != null)
        {
            try
            {
                a.b(b, t);
                a.a(c.getBinder());
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
        }
        jp.pioneer.mbg.pioneerkit.a.a.a("unBindSppService ");
        try
        {
            h = false;
            context.getApplicationContext().unbindService(i);
            b(context);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    protected void g()
    {
        if (r != null && r.size() != 0)
        {
            Iterator iterator = r.iterator();
            while (iterator.hasNext()) 
            {
                ((IExtMediaInfoReqListener)iterator.next()).onReceiveTrackInfoSettingRequest();
            }
        }
    }

    protected void h()
    {
        if (s != null && s.size() != 0)
        {
            Iterator iterator = s.iterator();
            while (iterator.hasNext()) 
            {
                ((IExtAppFocusListener)iterator.next()).onStartFocus();
            }
        }
    }

    protected void i()
    {
        if (s != null && s.size() != 0)
        {
            Iterator iterator = s.iterator();
            while (iterator.hasNext()) 
            {
                ((IExtAppFocusListener)iterator.next()).onStopFocus();
            }
        }
    }

    public boolean j()
    {
        j j1;
        boolean flag;
        boolean flag1;
        try
        {
            j1 = a;
        }
        catch (Exception exception)
        {
            return false;
        }
        flag = false;
        if (j1 == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        flag1 = a.d(t);
        flag = flag1;
        return flag;
    }

}
