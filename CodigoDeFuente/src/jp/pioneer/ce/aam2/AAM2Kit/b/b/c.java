// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit.b.b;

import android.os.Handler;
import android.os.HandlerThread;

// Referenced classes of package jp.pioneer.ce.aam2.AAM2Kit.b.b:
//            d

public class c extends HandlerThread
{

    private d a;

    public c(String s)
    {
        super(s, -8);
        a = null;
    }

    public Handler a()
    {
        if (a == null)
        {
            a = new d(this, getLooper());
        }
        return a;
    }

    protected void onLooperPrepared()
    {
        super.setPriority(4);
    }
}
