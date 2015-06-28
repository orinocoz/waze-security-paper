// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.b;

import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.MotionEvent;
import jp.pioneer.mbg.pioneerkit.a.a.a;
import jp.pioneer.mbg.pioneerkit.a.a.c;
import jp.pioneer.mbg.pioneerkit.a.a.e;
import jp.pioneer.mbg.pioneerkit.a.a.h;

// Referenced classes of package jp.pioneer.mbg.pioneerkit.b:
//            s, i, e, f, 
//            r, l, m, q, 
//            g, n, o, h, 
//            j, p, k, a

class d extends h
{

    final jp.pioneer.mbg.pioneerkit.b.a a;

    d(jp.pioneer.mbg.pioneerkit.b.a a1)
    {
        a = a1;
        super();
    }

    static jp.pioneer.mbg.pioneerkit.b.a a(d d1)
    {
        return d1.a;
    }

    public void a()
    {
        (new Handler(Looper.getMainLooper())).post(new s(this));
    }

    public void a(byte byte0, byte abyte0[])
    {
        (new Handler(Looper.getMainLooper())).post(new i(this, byte0, abyte0));
    }

    public void a(int i1)
    {
        (new Handler(Looper.getMainLooper())).post(new jp.pioneer.mbg.pioneerkit.b.e(this, i1));
    }

    public void a(KeyEvent keyevent, boolean flag)
    {
    }

    public void a(MotionEvent motionevent)
    {
        (new Handler(Looper.getMainLooper())).post(new f(this, motionevent));
    }

    public void a(MotionEvent motionevent, boolean flag)
    {
    }

    public void a(a a1)
    {
        (new Handler(Looper.getMainLooper())).post(new r(this, a1));
    }

    public void a(c c1)
    {
        (new Handler(Looper.getMainLooper())).post(new l(this, c1));
    }

    public void a(e e1)
    {
    }

    public void a(boolean flag)
    {
        (new Handler(Looper.getMainLooper())).post(new m(this, flag));
    }

    public void a(byte abyte0[])
    {
        (new Handler(Looper.getMainLooper())).post(new q(this, abyte0));
    }

    public void b()
    {
        (new Handler(Looper.getMainLooper())).post(new g(this));
    }

    public void b(int i1)
    {
        (new Handler(Looper.getMainLooper())).post(new n(this, i1));
    }

    public void b(MotionEvent motionevent, boolean flag)
    {
    }

    public void b(boolean flag)
    {
        (new Handler(Looper.getMainLooper())).post(new o(this, flag));
    }

    public void b(byte abyte0[])
    {
        (new Handler(Looper.getMainLooper())).post(new jp.pioneer.mbg.pioneerkit.b.h(this));
    }

    public void c()
    {
        (new Handler(Looper.getMainLooper())).post(new j(this));
    }

    public void c(int i1)
    {
        (new Handler(Looper.getMainLooper())).post(new p(this, i1));
    }

    public void d()
    {
        (new Handler(Looper.getMainLooper())).post(new k(this));
    }
}
