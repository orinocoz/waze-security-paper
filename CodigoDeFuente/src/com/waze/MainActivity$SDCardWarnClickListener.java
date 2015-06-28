// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;

// Referenced classes of package com.waze:
//            MainActivity

private static class <init>
    implements android.content._03_
{

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.cancel();
        ((Activity)((AlertDialog)dialoginterface).getContext()).finish();
    }

    private r()
    {
    }

    r(r r)
    {
        this();
    }
}
