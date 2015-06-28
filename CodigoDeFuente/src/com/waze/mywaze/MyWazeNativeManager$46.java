// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.content.Intent;
import com.waze.AppService;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.VideoActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class val.url
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final String val$url;

    public void run()
    {
        Intent intent = new Intent(AppService.getActiveActivity(), com/waze/ifs/ui/VideoActivity);
        intent.putExtra("landscape", true);
        intent.putExtra("url", val$url);
        AppService.getActiveActivity().startActivity(intent);
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$url = String.this;
        super();
    }
}
