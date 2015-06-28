// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.bottom;

import android.view.View;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.view.bottom:
//            BottomNotification

class this._cls0
    implements android.view.ation._cls4
{

    final BottomNotification this$0;

    public void onClick(View view)
    {
        MyWazeNativeManager.getInstance().launchMyWaze(BottomNotification.access$2(BottomNotification.this));
    }

    ()
    {
        this$0 = BottomNotification.this;
        super();
    }
}
