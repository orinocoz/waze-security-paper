// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.social;

import android.view.View;
import android.view.ViewTreeObserver;

// Referenced classes of package com.waze.social:
//            KeepYourFriendsDialog

class val.y
    implements android.view.lLayoutListener
{

    final KeepYourFriendsDialog this$0;
    private final View val$dialog;
    private final int val$x;
    private final int val$y;

    public void onGlobalLayout()
    {
        val$dialog.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        animate(val$x, val$y);
    }

    youtListener()
    {
        this$0 = final_keepyourfriendsdialog;
        val$dialog = view;
        val$x = i;
        val$y = I.this;
        super();
    }
}
