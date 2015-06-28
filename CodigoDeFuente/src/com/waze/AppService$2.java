// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import android.net.Uri;

// Referenced classes of package com.waze:
//            AppService

class >
    implements Runnable
{

    private final String val$aUrl;

    public void run()
    {
        try
        {
            Intent intent = new Intent("android.intent.action.VIEW");
            String s = val$aUrl;
            if (!s.startsWith("http"))
            {
                s = (new StringBuilder("http://")).append(s).toString();
            }
            Uri uri = Uri.parse(s);
            intent.setFlags(0x10000000);
            intent.setData(uri);
            AppService.access$10().startActivity(intent);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    r()
    {
        val$aUrl = s;
        super();
    }
}
