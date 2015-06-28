// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import com.waze.ifs.async.RunnableExecutor;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.navigate.social:
//            MyShareDriveActivity

class this._cls0 extends RunnableExecutor
{

    final MyShareDriveActivity this$0;

    public void event()
    {
        if (!MyShareDriveActivity.access$0(MyShareDriveActivity.this))
        {
            MyShareDriveActivity.access$1(MyShareDriveActivity.this).setMeeting(sMeeting);
            MyShareDriveActivity.access$2(MyShareDriveActivity.this, true);
        }
    }

    ()
    {
        this$0 = MyShareDriveActivity.this;
        super();
    }
}
