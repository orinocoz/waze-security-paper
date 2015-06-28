// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.navigate.social:
//            ShareDrivingFriendsActivity

class this._cls0
    implements android.view.tListener
{

    final ShareDrivingFriendsActivity this$0;

    public void onGlobalLayout()
    {
        android.widget.ctivity ctivity = new android.widget.nit>(ShareDrivingFriendsActivity.access$5(ShareDrivingFriendsActivity.this).getMeasuredWidth(), ShareDrivingFriendsActivity.access$5(ShareDrivingFriendsActivity.this).getMeasuredHeight());
        ctivity.pMargin = ShareDrivingFriendsActivity.access$5(ShareDrivingFriendsActivity.this).getTop();
        ctivity.pMargin = ctivity.pMargin + ShareDrivingFriendsActivity.access$6(ShareDrivingFriendsActivity.this).getMeasuredHeight();
        ctivity.ftMargin = ShareDrivingFriendsActivity.access$5(ShareDrivingFriendsActivity.this).getLeft();
        ShareDrivingFriendsActivity.access$7(ShareDrivingFriendsActivity.this).setLayoutParams(ctivity);
        ShareDrivingFriendsActivity.access$5(ShareDrivingFriendsActivity.this).getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }

    ()
    {
        this$0 = ShareDrivingFriendsActivity.this;
        super();
    }
}
