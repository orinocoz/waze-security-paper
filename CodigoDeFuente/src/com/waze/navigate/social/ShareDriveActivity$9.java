// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.waze.navigate.social:
//            ShareDriveActivity

class this._cls0
    implements android.view.eActivity._cls9
{

    final ShareDriveActivity this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() != 2) goto _L2; else goto _L1
_L1:
        boolean flag = ShareDriveActivity.access$14(ShareDriveActivity.this);
_L4:
        return flag;
_L2:
        int i;
        if (motionevent.getAction() == 1)
        {
            break; /* Loop/switch isn't completed */
        }
        i = motionevent.getAction();
        flag = false;
        if (i != 3) goto _L4; else goto _L3
_L3:
        ShareDriveActivity.access$15(ShareDriveActivity.this, false);
        return false;
    }

    ()
    {
        this$0 = ShareDriveActivity.this;
        super();
    }
}
