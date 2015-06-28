// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.bottom;

import android.util.Log;

// Referenced classes of package com.waze.view.bottom:
//            BottomNotification

class this._cls0
    implements Runnable
{

    final BottomNotification this$0;

    public void run()
    {
        Log.d("WAZE", (new StringBuilder("timeout for bottom notification. ref count is ")).append(BottomNotification.access$4(BottomNotification.this)).toString());
        BottomNotification bottomnotification = BottomNotification.this;
        int i = -1 + BottomNotification.access$4(bottomnotification);
        BottomNotification.access$5(bottomnotification, i);
        if (i == 0)
        {
            BottomNotification.access$1(BottomNotification.this);
        }
    }

    ()
    {
        this$0 = BottomNotification.this;
        super();
    }
}
