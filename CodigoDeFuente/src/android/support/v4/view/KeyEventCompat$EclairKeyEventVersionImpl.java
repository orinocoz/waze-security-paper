// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.view.KeyEvent;

// Referenced classes of package android.support.v4.view:
//            KeyEventCompatEclair, KeyEventCompat

static class  extends 
{

    public boolean isTracking(KeyEvent keyevent)
    {
        return KeyEventCompatEclair.isTracking(keyevent);
    }

    public void startTracking(KeyEvent keyevent)
    {
        KeyEventCompatEclair.startTracking(keyevent);
    }

    ()
    {
    }
}
