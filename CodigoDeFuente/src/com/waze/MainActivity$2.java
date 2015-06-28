// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.DialogInterface;

// Referenced classes of package com.waze:
//            MainActivity, NativeManager

class this._cls0
    implements android.content..OnDismissListener
{

    final MainActivity this$0;

    public void onDismiss(DialogInterface dialoginterface)
    {
        NativeManager.getInstance().unregisterOnUserNameResultListerner(MainActivity.this);
    }

    terface()
    {
        this$0 = MainActivity.this;
        super();
    }
}
