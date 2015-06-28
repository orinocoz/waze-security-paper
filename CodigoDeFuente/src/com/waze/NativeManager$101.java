// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity, LayoutManager

class val.timeout
    implements Runnable
{

    final NativeManager this$0;
    private final String val$body;
    private final String val$header;
    private final int val$style;
    private final int val$timeout;
    private final String val$title;

    public void run()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity != null)
        {
            LayoutManager layoutmanager = mainactivity.getLayoutMgr();
            if (layoutmanager == null)
            {
                return;
            } else
            {
                layoutmanager.showEtaUpdatePopUp(val$style, val$title, val$header, val$body, val$timeout);
                return;
            }
        } else
        {
            Log.e("WAZE", "Cannot open EtaUpdate Popup. Main activity is not available");
            return;
        }
    }

    ()
    {
        this$0 = final_nativemanager;
        val$style = i;
        val$title = s;
        val$header = s1;
        val$body = s2;
        val$timeout = I.this;
        super();
    }
}
