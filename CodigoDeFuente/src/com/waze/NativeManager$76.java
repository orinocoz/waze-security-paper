// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import com.waze.ifs.ui.ActivityBase;

// Referenced classes of package com.waze:
//            NativeManager, AppService, InternalWebBrowser

class val.aUrl
    implements Runnable
{

    final NativeManager this$0;
    private final String val$aTitle;
    private final String val$aUrl;

    public void run()
    {
        ActivityBase activitybase = AppService.getActiveActivity();
        if (activitybase != null)
        {
            Intent intent = new Intent(activitybase, com/waze/InternalWebBrowser);
            intent.putExtra("title", val$aTitle);
            intent.putExtra("url", val$aUrl);
            activitybase.startActivityForResult(intent, 0);
        }
    }

    se()
    {
        this$0 = final_nativemanager;
        val$aTitle = s;
        val$aUrl = String.this;
        super();
    }
}
