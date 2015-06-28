// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;

// Referenced classes of package com.waze.share:
//            ShareUtility

class val.action
    implements android.view.ener
{

    final val.action this$1;
    private final Runnable val$action;

    public void onViewAttachedToWindow(View view)
    {
    }

    public void onViewDetachedFromWindow(View view)
    {
        view.removeCallbacks(val$action);
    }

    er()
    {
        this$1 = final_er;
        val$action = Runnable.this;
        super();
    }
}
