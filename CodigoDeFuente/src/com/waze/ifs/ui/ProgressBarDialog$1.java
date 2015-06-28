// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import com.waze.view.map.ProgressAnimation;

// Referenced classes of package com.waze.ifs.ui:
//            ProgressBarDialog, ActivityBase

class this._cls0
    implements Runnable
{

    final ProgressBarDialog this$0;

    public void run()
    {
        if (mShowing)
        {
            mShowing = false;
            if (ProgressBarDialog.access$0(ProgressBarDialog.this) == null)
            {
                mAnimation.stop();
            }
            if (ProgressBarDialog.access$1(ProgressBarDialog.this) != null && (ProgressBarDialog.access$1(ProgressBarDialog.this) instanceof ActivityBase) && ((ActivityBase)ProgressBarDialog.access$1(ProgressBarDialog.this)).isAlive())
            {
                ProgressBarDialog.access$2(ProgressBarDialog.this);
            }
        }
    }

    ()
    {
        this$0 = ProgressBarDialog.this;
        super();
    }
}
