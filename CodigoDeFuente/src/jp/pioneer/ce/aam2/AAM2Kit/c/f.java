// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.c;

import android.view.MotionEvent;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.c:
//            d, a

class f
    implements Runnable
{

    final d a;
    private final MotionEvent b;

    f(d d1, MotionEvent motionevent)
    {
        a = d1;
        b = motionevent;
        super();
    }

    public void run()
    {
        jp.pioneer.ce.aam2.AAM2Kit.c.a.a(d.a(a), b);
    }
}
