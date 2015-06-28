// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.View;

// Referenced classes of package com.waze.navigate.social:
//            ShareDriveActivity

class this._cls0
    implements android.view.eActivity._cls2
{

    final ShareDriveActivity this$0;

    public void onClick(View view)
    {
        if (!ShareDriveActivity.access$3() || !canAskToAdd())
        {
            SendMeeting();
            return;
        } else
        {
            ShareDriveActivity.access$5(ShareDriveActivity.this, ShareDriveActivity.access$4(ShareDriveActivity.this));
            return;
        }
    }

    ()
    {
        this$0 = ShareDriveActivity.this;
        super();
    }
}
