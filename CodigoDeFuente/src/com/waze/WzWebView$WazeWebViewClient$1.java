// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.content.Intent;

// Referenced classes of package com.waze:
//            WzWebView

class val.intent
    implements Runnable
{

    final val.intent this$1;
    private final Activity val$activity;
    private final Intent val$intent;

    public void run()
    {
        val$activity.startActivity(val$intent);
    }

    ()
    {
        this$1 = final_;
        val$activity = activity1;
        val$intent = Intent.this;
        super();
    }
}
