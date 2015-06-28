// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.push;

import com.waze.NativeManager;

// Referenced classes of package com.waze.push:
//            Alerter

class val.alert
    implements Runnable
{

    final Alerter this$0;
    private final String val$actionUrl;
    private final String val$alert;

    public void run()
    {
        String s = "waze://";
        if (val$actionUrl != null)
        {
            s = (new StringBuilder(String.valueOf(s))).append(val$actionUrl).append("&").toString();
        }
        String s1 = (new StringBuilder(String.valueOf(s))).append("popup_message=").append(val$alert).toString();
        NativeManager.getInstance().UrlHandler(s1);
    }

    ()
    {
        this$0 = final_alerter;
        val$actionUrl = s;
        val$alert = String.this;
        super();
    }
}
