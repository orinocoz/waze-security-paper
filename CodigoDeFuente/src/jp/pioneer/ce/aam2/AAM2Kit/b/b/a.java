// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.b.b;

import android.view.KeyEvent;
import android.view.MotionEvent;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.b.b:
//            e

public class a
{

    private static e a = null;
    private static boolean b = true;

    public a()
    {
    }

    private static void a(KeyEvent keyevent)
    {
        if (a == null)
        {
            throw new IllegalStateException("PEventInputManager is null!");
        } else
        {
            a.a(keyevent, false);
            return;
        }
    }

    private static void a(MotionEvent motionevent)
    {
        if (!b)
        {
            return;
        }
        if (a == null)
        {
            throw new IllegalStateException("PEventInputManager is null!");
        } else
        {
            a.a(motionevent, false);
            return;
        }
    }

    public static void a(Object obj)
    {
        if (obj == null)
        {
            jp.pioneer.ce.aam2.AAM2Kit.b.a.b("deliverEvent: Event to be delivered is null\t");
        } else
        {
            if (obj instanceof MotionEvent)
            {
                a((MotionEvent)obj);
                return;
            }
            if (obj instanceof KeyEvent)
            {
                a((KeyEvent)obj);
                return;
            }
        }
    }

    public static void a(e e1)
    {
        a = e1;
    }

}
