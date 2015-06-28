// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit.a.b;

import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;

public abstract class e
{

    protected boolean a;

    public e()
    {
        a = false;
    }

    protected void a()
    {
        if (!a)
        {
            throw new IllegalStateException("PEventInputManager hasn't been initialized!");
        } else
        {
            return;
        }
    }

    public abstract boolean a(Context context);

    public abstract boolean a(KeyEvent keyevent, boolean flag);

    public abstract boolean a(MotionEvent motionevent, boolean flag);
}
