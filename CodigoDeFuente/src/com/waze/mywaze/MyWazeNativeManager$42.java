// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.content.Intent;
import com.waze.AppService;
import com.waze.mywaze.social.FacebookActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class ebookSettings
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final ebookSettings val$settings;

    public void run()
    {
        Intent intent = new Intent(AppService.getAppContext(), com/waze/mywaze/social/FacebookActivity);
        intent.putExtra("com.waze.mywaze.facebooksettings", val$settings);
        AppService.showActivity(intent);
    }

    ebookSettings()
    {
        this$0 = final_mywazenativemanager;
        val$settings = ebookSettings.this;
        super();
    }
}
