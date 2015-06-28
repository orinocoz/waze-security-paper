// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.referrer;

import android.content.Context;

// Referenced classes of package com.waze.referrer:
//            ReferrerTracker

class val.referrer
    implements Runnable
{

    final ReferrerTracker this$0;
    private final Context val$context;
    private final String val$referrer;

    public void run()
    {
        ReferrerTracker.access$0(ReferrerTracker.this, val$context, val$referrer);
        ReferrerTracker.access$1(val$context, val$referrer);
    }

    ()
    {
        this$0 = final_referrertracker;
        val$context = context1;
        val$referrer = String.this;
        super();
    }
}
