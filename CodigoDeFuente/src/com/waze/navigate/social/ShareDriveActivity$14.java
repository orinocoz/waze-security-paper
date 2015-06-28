// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ListView;

// Referenced classes of package com.waze.navigate.social:
//            ShareDriveActivity

class this._cls0
    implements android.view.balLayoutListener
{

    final ShareDriveActivity this$0;

    public void onGlobalLayout()
    {
        ShareDriveActivity.access$10(ShareDriveActivity.this).getViewTreeObserver().removeGlobalOnLayoutListener(this);
        ShareDriveActivity.access$19(ShareDriveActivity.this, findViewById(0x7f090685).getHeight());
        ShareDriveActivity.access$20(ShareDriveActivity.this).getLayoutParams().height = ShareDriveActivity.access$21(ShareDriveActivity.this);
        ShareDriveActivity.access$16(ShareDriveActivity.this);
    }

    tener()
    {
        this$0 = ShareDriveActivity.this;
        super();
    }
}
