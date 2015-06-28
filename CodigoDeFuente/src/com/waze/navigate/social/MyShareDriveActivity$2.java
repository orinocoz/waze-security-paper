// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;

// Referenced classes of package com.waze.navigate.social:
//            MyShareDriveActivity

class this._cls0
    implements android.view.alLayoutListener
{

    final MyShareDriveActivity this$0;

    public void onGlobalLayout()
    {
        android.widget.rams rams = new android.widget.rams(MyShareDriveActivity.access$3(MyShareDriveActivity.this).getMeasuredWidth(), MyShareDriveActivity.access$3(MyShareDriveActivity.this).getMeasuredHeight());
        rams.topMargin = MyShareDriveActivity.access$3(MyShareDriveActivity.this).getTop();
        rams.leftMargin = MyShareDriveActivity.access$3(MyShareDriveActivity.this).getLeft();
        MyShareDriveActivity.access$4(MyShareDriveActivity.this).setLayoutParams(rams);
        MyShareDriveActivity.access$3(MyShareDriveActivity.this).getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }

    ener()
    {
        this$0 = MyShareDriveActivity.this;
        super();
    }
}
