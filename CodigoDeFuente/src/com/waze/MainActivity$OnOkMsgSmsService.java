// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.DialogInterface;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze:
//            MainActivity

protected class this._cls0
    implements android.content.
{

    final MainActivity this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.cancel();
        if (i == 1 && MainActivity.access$0(MainActivity.this) != null)
        {
            DriveToNativeManager.getInstance().navigate(MainActivity.access$0(MainActivity.this), null);
            MainActivity.access$1(MainActivity.this, null);
        }
    }

    protected istener()
    {
        this$0 = MainActivity.this;
        super();
    }
}
