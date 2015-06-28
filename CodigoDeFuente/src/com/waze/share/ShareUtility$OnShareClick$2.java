// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import com.waze.ifs.ui.TinyTooltip;

// Referenced classes of package com.waze.share:
//            ShareUtility

class val.tip
    implements Runnable
{

    final val.tip this$1;
    private final TinyTooltip val$tip;

    public void run()
    {
        if (val$tip != null && val$tip.isShowing())
        {
            val$tip.dismiss(true);
        }
    }

    ()
    {
        this$1 = final_;
        val$tip = TinyTooltip.this;
        super();
    }
}
