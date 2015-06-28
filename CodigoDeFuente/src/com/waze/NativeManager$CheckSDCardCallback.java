// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.DialogInterface;

// Referenced classes of package com.waze:
//            MsgBox, NativeManager

private static class <init>
    implements android.content.
{

    public void onClick(DialogInterface dialoginterface, int i)
    {
        MsgBox.Notify();
        if (NativeManager.access$13() != null)
        {
            if (NativeManager.IsAppStarted())
            {
                NativeManager.access$13().ShutDown();
            } else
            if (NativeManager.access$13().getInitializedStatus())
            {
                NativeManager.access$16(NativeManager.access$13());
                return;
            }
        }
    }

    private ener()
    {
    }

    ener(ener ener)
    {
        this();
    }
}
