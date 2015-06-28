// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.waze.navigate.social:
//            ShareDriveActivity

class this._cls0
    implements android.view.Activity._cls10
{

    final ShareDriveActivity this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            ShareDriveActivity.access$15(ShareDriveActivity.this, true);
        }
        if (motionevent.getAction() == 1 || motionevent.getAction() == 3)
        {
            ShareDriveActivity.access$15(ShareDriveActivity.this, false);
        }
        return false;
    }

    ()
    {
        this$0 = ShareDriveActivity.this;
        super();
    }
}
