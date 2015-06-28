// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.c;

import android.app.Activity;
import android.app.Application;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.view.MotionEvent;
import com.abaltatech.weblinkserver.WLServerApp;
import java.util.ArrayList;
import java.util.Iterator;
import jp.pioneer.ce.aam2.AAM2Kit.AAM2CertifiedInfo;
import jp.pioneer.ce.aam2.AAM2Kit.AAM2Kit;
import jp.pioneer.ce.aam2.AAM2Kit.AAM2LocationInfo;
import jp.pioneer.ce.aam2.AAM2Kit.AAM2MainUnitSpecInfo;
import jp.pioneer.ce.aam2.AAM2Kit.IAAM2AppFocusListener;
import jp.pioneer.ce.aam2.AAM2Kit.IAAM2ExtendedDataListener;
import jp.pioneer.ce.aam2.AAM2Kit.IAAM2LocationListener;
import jp.pioneer.ce.aam2.AAM2Kit.IAAM2MediaInfoReqListener;
import jp.pioneer.ce.aam2.AAM2Kit.IAAM2RemoteCtrlListener;
import jp.pioneer.ce.aam2.AAM2Kit.IAAM2RequiredListener;
import jp.pioneer.ce.aam2.AAM2Kit.b.a.j;
import jp.pioneer.ce.aam2.AAM2Kit.b.b.b;
import jp.pioneer.ce.aam2.AAM2Kit.c;
import jp.pioneer.ce.aam2.AAM2Kit.d;
import jp.pioneer.ce.aam2.AAM2Kit.e;
import jp.pioneer.ce.aam2.AAM2Kit.f;
import jp.pioneer.ce.aam2.AAM2Kit.protocoldispacher.AAM2ServerApp;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.c:
//            b, y, d, c

public class a
{

    private static boolean F = false;
    private static boolean G = false;
    private static String f = "jp.pioneer.ce.aam2service";
    private static a g;
    private Handler A;
    private boolean B;
    private Runnable C;
    private IntentFilter D;
    private BroadcastReceiver E;
    protected j a;
    protected jp.pioneer.ce.aam2.AAM2Kit.c.d b;
    protected Messenger c;
    final String d = "PionnerKit";
    AAM2MainUnitSpecInfo e;
    private boolean h;
    private boolean i;
    private y j;
    private ArrayList k;
    private ArrayList l;
    private ArrayList m;
    private ArrayList n;
    private ArrayList o;
    private ArrayList p;
    private ArrayList q;
    private ArrayList r;
    private ArrayList s;
    private ArrayList t;
    private ArrayList u;
    private ArrayList v;
    private String w;
    private Context x;
    private int y;
    private HandlerThread z;

    public a()
    {
        i = false;
        j = null;
        k = new ArrayList();
        l = new ArrayList();
        m = new ArrayList();
        n = new ArrayList();
        o = new ArrayList();
        p = new ArrayList();
        q = new ArrayList();
        r = new ArrayList();
        s = new ArrayList();
        t = new ArrayList();
        u = new ArrayList();
        v = new ArrayList();
        w = null;
        x = null;
        y = 0;
        e = null;
        z = null;
        A = null;
        B = false;
        C = new jp.pioneer.ce.aam2.AAM2Kit.c.b(this);
        jp.pioneer.ce.aam2.AAM2Kit.b.a.a("ExtScreenServiceManager created");
        j = new y(this);
        b = new jp.pioneer.ce.aam2.AAM2Kit.c.d(this);
        c = new Messenger(jp.pioneer.ce.aam2.AAM2Kit.b.b.b.a().b());
    }

    private void a(MotionEvent motionevent)
    {
        if (r != null && r.size() != 0)
        {
            Iterator iterator = r.iterator();
            while (iterator.hasNext()) 
            {
                ((e)iterator.next()).a(motionevent);
            }
        }
    }

    private void a(AAM2MainUnitSpecInfo aam2mainunitspecinfo)
    {
        if (m != null && m.size() != 0)
        {
            Iterator iterator = m.iterator();
            while (iterator.hasNext()) 
            {
                ((IAAM2RequiredListener)iterator.next()).onAAM2StartAdvancedAppMode(aam2mainunitspecinfo);
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

    static void a(a a1, AAM2MainUnitSpecInfo aam2mainunitspecinfo)
    {
        a1.a(aam2mainunitspecinfo);
    }

    static void a(a a1, boolean flag)
    {
        a1.h = flag;
    }

    static void a(a a1, byte abyte0[])
    {
        a1.c(abyte0);
    }

    public static void a(boolean flag)
    {
        G = flag;
    }

    static boolean a(a a1)
    {
        return a1.B;
    }

    static Handler b(a a1)
    {
        return a1.A;
    }

    public static a b()
    {
        jp/pioneer/ce/aam2/AAM2Kit/c/a;
        JVM INSTR monitorenter ;
        a a1;
        if (g == null)
        {
            g = new a();
            jp.pioneer.ce.aam2.AAM2Kit.b.a.a((new StringBuilder("ExtScreenServiceManager created ")).append(g.toString()).toString());
        }
        a1 = g;
        jp/pioneer/ce/aam2/AAM2Kit/c/a;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    static void b(a a1, byte abyte0[])
    {
        a1.d(abyte0);
    }

    private boolean b(String s1)
    {
        return s1.contentEquals("com.justsystems.atokmobile.service") || s1.contentEquals("com.justsystems.atokmobile.tv.service") || s1.contentEquals("com.justsystems.atokmobile.pv.service") || s1.contentEquals("com.justsystems.atokmobile.mv.service") || s1.contentEquals("com.justsystems.atokmobile.mtv.service") || s1.contentEquals("jp.pioneer.mbg.appradio.carkeyboard") || s1.contentEquals("jp.pioneer.linkwithkeyboard.pb.atok") || s1.contentEquals("com.pioneer.keyboard");
    }

    static Runnable c(a a1)
    {
        return a1.C;
    }

    public static a c()
    {
        jp/pioneer/ce/aam2/AAM2Kit/c/a;
        JVM INSTR monitorenter ;
        a a1 = g;
        jp/pioneer/ce/aam2/AAM2Kit/c/a;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    private void c(byte abyte0[])
    {
        if (n != null && n.size() != 0)
        {
            Iterator iterator = n.iterator();
            while (iterator.hasNext()) 
            {
                ((c)iterator.next()).a(abyte0);
            }
        }
    }

    static String d(a a1)
    {
        return a1.w;
    }

    private void d(int i1)
    {
        if (q != null && q.size() != 0)
        {
            Iterator iterator = q.iterator();
            while (iterator.hasNext()) 
            {
                ((IAAM2RemoteCtrlListener)iterator.next()).onAAM2ReceiveRemoteCtrl(i1);
            }
        }
    }

    private void d(byte abyte0[])
    {
        if (v != null && v.size() != 0)
        {
            Iterator iterator = v.iterator();
            while (iterator.hasNext()) 
            {
                ((IAAM2ExtendedDataListener)iterator.next()).onAAM2ReceiveExtendedData(abyte0);
            }
        }
    }

    static void e(a a1)
    {
        a1.n();
    }

    static Context f(a a1)
    {
        return a1.x;
    }

    static void g(a a1)
    {
        a1.m();
    }

    private void m()
    {
        if (m != null && m.size() != 0)
        {
            Iterator iterator = m.iterator();
            while (iterator.hasNext()) 
            {
                ((IAAM2RequiredListener)iterator.next()).onAAM2StopAdvancedAppMode();
            }
        }
    }

    private void n()
    {
        if (m != null && m.size() != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Iterator iterator = m.iterator();
_L6:
        if (!iterator.hasNext()) goto _L1; else goto _L3
_L3:
        IAAM2RequiredListener iaam2requiredlistener;
        AAM2CertifiedInfo aam2certifiedinfo;
        iaam2requiredlistener = (IAAM2RequiredListener)iterator.next();
        aam2certifiedinfo = iaam2requiredlistener.onAAM2RequireCertification();
        jp.pioneer.ce.aam2.AAM2Kit.b.a.a("handleRequireCertification ");
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_245;
        }
        if (aam2certifiedinfo != null) goto _L5; else goto _L4
_L4:
        boolean flag;
        jp.pioneer.ce.aam2.AAM2Kit.b.a.a((new StringBuilder("handleRequireCertification ")).append(w).append("none").toString());
        flag = a.a(w, "", "");
_L7:
        iaam2requiredlistener.onAAM2CertifiedResult(flag);
          goto _L6
        RemoteException remoteexception;
        remoteexception;
        remoteexception.printStackTrace();
          goto _L6
_L5:
label0:
        {
            jp.pioneer.ce.aam2.AAM2Kit.b.a.a((new StringBuilder("handleRequireCertification ")).append(aam2certifiedinfo.b()).append(aam2certifiedinfo.a()).append(aam2certifiedinfo.c()).toString());
            if (!w.contentEquals(aam2certifiedinfo.b()))
            {
                break label0;
            }
            flag = a.a(aam2certifiedinfo.b(), aam2certifiedinfo.a(), aam2certifiedinfo.c());
        }
          goto _L7
        a.b(w, aam2certifiedinfo.a(), aam2certifiedinfo.c());
        flag = false;
          goto _L7
        flag = false;
          goto _L7
    }

    public void a()
    {
        boolean flag;
        boolean flag1;
        boolean flag2;
label0:
        {
            flag = a("jp.pioneer.mbg.appradio.AppRadioLauncher");
            flag1 = a("jp.pioneer.mbgdop.appradio.AppRadioLauncher");
            Context context = x;
            flag2 = false;
            if (context == null)
            {
                break label0;
            }
            if (!x.getPackageName().contentEquals("jp.pioneer.mbg.appradio.AppRadioLauncher"))
            {
                boolean flag3 = x.getPackageName().contentEquals("jp.pioneer.mbgdop.appradio.AppRadioLauncher");
                flag2 = false;
                if (!flag3)
                {
                    break label0;
                }
            }
            flag2 = true;
        }
        if (!flag && !flag1 || flag2) goto _L2; else goto _L1
_L1:
        if (a == null) goto _L4; else goto _L3
_L3:
        if (!a.asBinder().pingBinder() && x != null)
        {
            ComponentName componentname = new ComponentName("jp.pioneer.mbg.appradio.AppRadioLauncher", "jp.pioneer.mbg.appradio.AAM2Service.app.ExtScreenService");
            Intent intent = new Intent();
            intent.setComponent(componentname);
            intent.setAction(f);
            x.bindService(intent, j, 1);
        }
_L6:
        g();
_L2:
        return;
_L4:
        if (x != null)
        {
            e(x);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void a(byte byte0, long l1)
    {
        if (s != null && s.size() != 0)
        {
            Iterator iterator = s.iterator();
            while (iterator.hasNext()) 
            {
                ((IAAM2MediaInfoReqListener)iterator.next()).onAAM2ReceiveTrackInfoRequest(byte0, l1);
            }
        }
    }

    protected void a(int i1)
    {
        if (k != null && k.size() != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Iterator iterator = k.iterator();
        switch (i1)
        {
        default:
            return;

        case 65280: 
            while (iterator.hasNext()) 
            {
                ((d)iterator.next()).e();
            }
            break;

        case 65284: 
            for (; iterator.hasNext(); ((d)iterator.next()).a()) { }
            return;

        case 65281: 
            for (; iterator.hasNext(); ((d)iterator.next()).d()) { }
            return;

        case 65282: 
            for (; iterator.hasNext(); ((d)iterator.next()).c()) { }
            return;

        case 65283: 
            for (; iterator.hasNext(); ((d)iterator.next()).b()) { }
            break; /* Loop/switch isn't completed */
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    protected void a(int i1, int j1)
    {
        if (u != null && u.size() != 0)
        {
            Iterator iterator = u.iterator();
            while (iterator.hasNext()) 
            {
                ((f)iterator.next()).a(i1, j1);
            }
        }
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
        if (!F)
        {
            D = new IntentFilter();
            D.addAction("jp.pioneer.mbg.appradio.aam2Serivce.BindFilter");
            D.addCategory("android.intent.category.BindFilter");
            E = new jp.pioneer.ce.aam2.AAM2Kit.c.c(this);
            if (context != null)
            {
                context.registerReceiver(E, D);
                F = true;
                return;
            }
        }
    }

    protected void a(jp.pioneer.ce.aam2.AAM2Kit.b.a.c c1)
    {
        if (l != null && l.size() != 0)
        {
            AAM2LocationInfo aam2locationinfo = new AAM2LocationInfo();
            aam2locationinfo.c(c1.e());
            aam2locationinfo.b(c1.g());
            aam2locationinfo.a(c1.c());
            aam2locationinfo.b(c1.d());
            aam2locationinfo.a(c1.f());
            aam2locationinfo.a(c1.a());
            aam2locationinfo.a(c1.b());
            boolean flag;
            Iterator iterator;
            if (c1.h() == 0)
            {
                flag = false;
            } else
            {
                flag = true;
            }
            aam2locationinfo.a(flag);
            iterator = l.iterator();
            while (iterator.hasNext()) 
            {
                ((IAAM2LocationListener)iterator.next()).onAAM2ReceiveLocationInfo(aam2locationinfo);
            }
        }
    }

    public void a(byte abyte0[])
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_17;
        }
        a.a(abyte0);
        return;
        RemoteException remoteexception;
        remoteexception;
        remoteexception.printStackTrace();
        return;
    }

    public boolean a(byte byte0, byte abyte0[])
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

    public boolean a(String s1)
    {
        Context context = x;
        android.content.pm.PackageInfo packageinfo;
        packageinfo = null;
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        android.content.pm.PackageInfo packageinfo1 = x.getPackageManager().getPackageInfo(s1, 0);
        packageinfo = packageinfo1;
_L2:
        return packageinfo != null;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        packageinfo = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean a(String s1, String s2, String s3)
    {
        if (x != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        PackageManager packagemanager;
        packagemanager = x.getPackageManager();
        if (packagemanager.checkPermission(s2, s1) == 0)
        {
            return true;
        }
        ApplicationInfo applicationinfo1 = packagemanager.getApplicationInfo(s1, 128);
        ApplicationInfo applicationinfo = applicationinfo1;
_L4:
        if (applicationinfo != null && applicationinfo.metaData != null)
        {
            return applicationinfo.metaData.getBoolean(s3);
        }
        if (true) goto _L1; else goto _L3
_L3:
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        namenotfoundexception.printStackTrace();
        applicationinfo = null;
          goto _L4
    }

    public boolean a(IAAM2AppFocusListener iaam2appfocuslistener)
    {
        boolean flag = false;
        if (iaam2appfocuslistener != null)
        {
            boolean flag1;
            if (t.isEmpty())
            {
                try
                {
                    if (a != null)
                    {
                        a.d(b, w);
                    }
                }
                catch (RemoteException remoteexception)
                {
                    remoteexception.printStackTrace();
                }
            }
            flag1 = t.contains(iaam2appfocuslistener);
            flag = false;
            if (!flag1)
            {
                t.add(iaam2appfocuslistener);
                flag = true;
            }
        }
        return flag;
    }

    public boolean a(IAAM2ExtendedDataListener iaam2extendeddatalistener)
    {
        if (iaam2extendeddatalistener != null)
        {
            if (v.isEmpty())
            {
                try
                {
                    if (a != null)
                    {
                        a.j(true);
                    }
                }
                catch (RemoteException remoteexception)
                {
                    remoteexception.printStackTrace();
                }
            }
            if (!v.contains(iaam2extendeddatalistener))
            {
                v.add(iaam2extendeddatalistener);
                return true;
            } else
            {
                return false;
            }
        } else
        {
            return false;
        }
    }

    public boolean a(IAAM2LocationListener iaam2locationlistener)
    {
        if (e == null || e.getLocationDevice() == 0)
        {
            return false;
        }
        if (iaam2locationlistener != null)
        {
            if (l.isEmpty())
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
            if (!l.contains(iaam2locationlistener))
            {
                l.add(iaam2locationlistener);
                return true;
            } else
            {
                return false;
            }
        } else
        {
            return false;
        }
    }

    public boolean a(IAAM2MediaInfoReqListener iaam2mediainforeqlistener)
    {
        if (iaam2mediainforeqlistener != null)
        {
            if (s.isEmpty())
            {
                try
                {
                    if (a != null && w != null)
                    {
                        a.a(w, true);
                    }
                }
                catch (RemoteException remoteexception)
                {
                    remoteexception.printStackTrace();
                }
            }
            if (!s.contains(iaam2mediainforeqlistener))
            {
                s.add(iaam2mediainforeqlistener);
                return true;
            } else
            {
                return false;
            }
        } else
        {
            return false;
        }
    }

    public boolean a(IAAM2RemoteCtrlListener iaam2remotectrllistener)
    {
        if (e != null && iaam2remotectrllistener != null)
        {
            if (q.isEmpty())
            {
                try
                {
                    if (a != null)
                    {
                        a.c(b, w);
                    }
                }
                catch (RemoteException remoteexception)
                {
                    remoteexception.printStackTrace();
                }
            }
            if (!q.contains(iaam2remotectrllistener))
            {
                q.add(iaam2remotectrllistener);
                return true;
            }
        }
        return false;
    }

    public boolean a(IAAM2RequiredListener iaam2requiredlistener)
    {
        boolean flag = false;
        if (iaam2requiredlistener != null)
        {
            boolean flag1 = m.contains(iaam2requiredlistener);
            flag = false;
            if (!flag1)
            {
                m.add(iaam2requiredlistener);
                flag = true;
            }
        }
        return flag;
    }

    public boolean a(c c1)
    {
        while (c1 == null || n.isEmpty() || !n.remove(c1)) 
        {
            return false;
        }
        if (n.isEmpty())
        {
            try
            {
                if (a != null)
                {
                    a.n(false);
                }
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
        }
        return true;
    }

    protected void b(int i1)
    {
        y = i1;
        if (p != null && p.size() != 0)
        {
            Iterator iterator = p.iterator();
            while (iterator.hasNext()) 
            {
                ((jp.pioneer.ce.aam2.AAM2Kit.a)iterator.next()).a(i1);
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
        if (F && context != null)
        {
            context.unregisterReceiver(E);
            F = false;
        }
    }

    protected void b(boolean flag)
    {
    }

    public boolean b(IAAM2AppFocusListener iaam2appfocuslistener)
    {
        while (iaam2appfocuslistener == null || t.isEmpty() || !t.remove(iaam2appfocuslistener)) 
        {
            return false;
        }
        if (t.isEmpty())
        {
            try
            {
                if (a != null)
                {
                    a.e(w);
                }
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
        }
        return true;
    }

    public boolean b(IAAM2ExtendedDataListener iaam2extendeddatalistener)
    {
        while (iaam2extendeddatalistener == null || v.isEmpty() || !v.remove(iaam2extendeddatalistener)) 
        {
            return false;
        }
        if (v.isEmpty())
        {
            try
            {
                if (a != null)
                {
                    a.j(false);
                }
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
        }
        return true;
    }

    public boolean b(IAAM2LocationListener iaam2locationlistener)
    {
        while (iaam2locationlistener == null || l.isEmpty() || !l.remove(iaam2locationlistener)) 
        {
            return false;
        }
        if (l.isEmpty())
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

    public boolean b(IAAM2MediaInfoReqListener iaam2mediainforeqlistener)
    {
        while (iaam2mediainforeqlistener == null || s.isEmpty() || !s.remove(iaam2mediainforeqlistener)) 
        {
            return false;
        }
        if (s.isEmpty())
        {
            try
            {
                if (a != null && w != null)
                {
                    a.a(w, false);
                }
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
        }
        return true;
    }

    public boolean b(IAAM2RemoteCtrlListener iaam2remotectrllistener)
    {
        while (iaam2remotectrllistener == null || q.isEmpty() || !q.remove(iaam2remotectrllistener)) 
        {
            return false;
        }
        if (q.isEmpty())
        {
            try
            {
                if (a != null)
                {
                    a.a(w);
                }
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
        }
        return true;
    }

    public boolean b(IAAM2RequiredListener iaam2requiredlistener)
    {
        if (iaam2requiredlistener != null)
        {
            m.remove(iaam2requiredlistener);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean b(byte abyte0[])
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

    protected void c(boolean flag)
    {
        if (m != null && m.size() != 0)
        {
            Iterator iterator = m.iterator();
            while (iterator.hasNext()) 
            {
                ((IAAM2RequiredListener)iterator.next()).onAAM2ReceiveDriveStopping(flag);
            }
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
        a.a(w, i1);
        flag = true;
        return flag;
    }

    public boolean c(Context context)
    {
        if (context == null)
        {
            return false;
        }
        Context context1 = context.getApplicationContext();
        x = context1;
        ComponentName componentname = new ComponentName("jp.pioneer.mbg.appradio.AppRadioLauncher", "jp.pioneer.mbg.appradio.AAM2Service.app.ExtScreenService");
        Intent intent = new Intent();
        intent.setComponent(componentname);
        intent.setAction(f);
        if (context1.startService(intent) != null)
        {
            jp.pioneer.ce.aam2.AAM2Kit.b.a.a("PDPrivateService starts successfully");
        }
        AAM2ServerApp aam2serverapp = (AAM2ServerApp)WLServerApp.getApplication();
        if (aam2serverapp != null)
        {
            aam2serverapp.startWLServer();
        }
        return e(context1);
    }

    public void d(Context context)
    {
        if (context != null)
        {
            f(context.getApplicationContext());
        }
        AAM2ServerApp aam2serverapp = (AAM2ServerApp)WLServerApp.getApplication();
        if (aam2serverapp != null)
        {
            aam2serverapp.stopWLServer();
        }
    }

    protected void d(boolean flag)
    {
        if (m != null && m.size() != 0)
        {
            Iterator iterator = m.iterator();
            while (iterator.hasNext()) 
            {
                ((IAAM2RequiredListener)iterator.next()).onAAM2ReceiveParkingSwitch(flag);
            }
        }
    }

    public boolean d()
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        if (!i)
        {
            return false;
        }
        boolean flag = a.b(w);
        return flag;
        RemoteException remoteexception;
        remoteexception;
        remoteexception.printStackTrace();
        return false;
    }

    protected void e(boolean flag)
    {
        if (o != null && o.size() != 0)
        {
            Iterator iterator = o.iterator();
            while (iterator.hasNext()) 
            {
                ((jp.pioneer.ce.aam2.AAM2Kit.b)iterator.next()).a(flag);
            }
        }
    }

    public boolean e()
    {
        while (!i || a == null) 
        {
            return false;
        }
        boolean flag;
        try
        {
            flag = a.p();
        }
        catch (RemoteException remoteexception)
        {
            remoteexception.printStackTrace();
            return false;
        }
        return flag;
    }

    protected boolean e(Context context)
    {
        if (h)
        {
            return true;
        }
        a(context);
        if (!(context instanceof Service)) goto _L2; else goto _L1
_L1:
        w = context.getClass().getSimpleName();
_L4:
        if (w != null && !a(w, "pioneer.permission.appradio.AAM2", "pioneer_supported_aam2") && !b(w))
        {
            return false;
        }
        break; /* Loop/switch isn't completed */
_L2:
        if ((context instanceof Activity) || (context instanceof Application))
        {
            w = context.getPackageName();
        }
        if (true) goto _L4; else goto _L3
_L3:
        ComponentName componentname = new ComponentName("jp.pioneer.mbg.appradio.AppRadioLauncher", "jp.pioneer.mbg.appradio.AAM2Service.app.ExtScreenService");
        Intent intent = new Intent();
        intent.setAction(f);
        intent.setComponent(componentname);
        if (!context.bindService(intent, j, 1))
        {
            return false;
        } else
        {
            jp.pioneer.ce.aam2.AAM2Kit.b.a.a("bindSppService ");
            i = true;
            return true;
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
                a.b(b, w);
                a.a(c.getBinder());
            }
            catch (RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
        }
        jp.pioneer.ce.aam2.AAM2Kit.b.a.a("unBindSppService ");
        try
        {
            h = false;
            context.getApplicationContext().unbindService(j);
            b(context);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        i = false;
    }

    protected void f(boolean flag)
    {
        if (u != null && u.size() != 0)
        {
            Iterator iterator = u.iterator();
            while (iterator.hasNext()) 
            {
                ((f)iterator.next()).a(flag);
            }
        }
    }

    public boolean f()
    {
        while (!i || a == null) 
        {
            return false;
        }
        boolean flag;
        try
        {
            flag = a.g();
        }
        catch (RemoteException remoteexception)
        {
            remoteexception.printStackTrace();
            return false;
        }
        return flag;
    }

    protected void g()
    {
        AAM2ServerApp aam2serverapp = (AAM2ServerApp)WLServerApp.getApplication();
        if (aam2serverapp != null)
        {
            aam2serverapp.startWLServer();
        }
        if (G)
        {
            AAM2Kit.a(x);
        }
    }

    public boolean g(boolean flag)
    {
_L2:
        return false;
        if (x == null || !i) goto _L2; else goto _L1
_L1:
        ApplicationInfo applicationinfo1 = x.getPackageManager().getApplicationInfo(w, 128);
        ApplicationInfo applicationinfo = applicationinfo1;
_L4:
        if (applicationinfo != null && applicationinfo.metaData != null)
        {
            Object obj = applicationinfo.metaData.get("aam2_sound_category");
            if (obj != null && obj.equals("no_sound") && a != null)
            {
                android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
                try
                {
                    a.a(flag, w);
                }
                catch (RemoteException remoteexception)
                {
                    remoteexception.printStackTrace();
                    return false;
                }
                return true;
            }
        }
        if (true) goto _L2; else goto _L3
_L3:
        namenotfoundexception;
        namenotfoundexception.printStackTrace();
        applicationinfo = null;
          goto _L4
    }

    protected void h()
    {
        if (u != null && u.size() != 0)
        {
            Iterator iterator = u.iterator();
            while (iterator.hasNext()) 
            {
                ((f)iterator.next()).a();
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
                ((IAAM2MediaInfoReqListener)iterator.next()).onAAM2ReceiveTrackInfoSettingRequest();
            }
        }
    }

    protected void j()
    {
        if (t != null && t.size() != 0)
        {
            Iterator iterator = t.iterator();
            while (iterator.hasNext()) 
            {
                ((IAAM2AppFocusListener)iterator.next()).onAAM2StartFocus();
            }
        }
    }

    protected void k()
    {
        if (t != null && t.size() != 0)
        {
            Iterator iterator = t.iterator();
            while (iterator.hasNext()) 
            {
                ((IAAM2AppFocusListener)iterator.next()).onAAM2StopFocus();
            }
        }
    }

    public boolean l()
    {
        j j1;
        boolean flag;
        String s1;
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
            break MISSING_BLOCK_LABEL_42;
        }
        s1 = w;
        flag = false;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        flag1 = a.f(w);
        flag = flag1;
        return flag;
    }

}
