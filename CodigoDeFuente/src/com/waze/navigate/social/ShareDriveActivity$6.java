// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.View;
import android.widget.ListView;

// Referenced classes of package com.waze.navigate.social:
//            ShareDriveActivity

class this._cls0
    implements android.view.eActivity._cls6
{

    final ShareDriveActivity this$0;

    public void onClick(View view)
    {
        if (ShareDriveActivity.access$10(ShareDriveActivity.this).getFirstVisiblePosition() == 0)
        {
            ShareDriveActivity.access$10(ShareDriveActivity.this).smoothScrollToPositionFromTop(1, (int)(64F * ShareDriveActivity.access$11(ShareDriveActivity.this)));
        }
        ShareDriveActivity.access$12(ShareDriveActivity.this);
    }

    ()
    {
        this$0 = ShareDriveActivity.this;
        super();
    }
}
