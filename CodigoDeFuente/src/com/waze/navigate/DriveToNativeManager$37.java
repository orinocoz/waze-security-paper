// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.util.Log;
import com.waze.AppService;
import com.waze.ifs.async.RunnableCallback;
import com.waze.ifs.ui.ActivityBase;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, SearchActivity

class  extends RunnableCallback
{

    private final String val$address;
    private final boolean val$autoNav;

    public void callback()
    {
        Log.d("WAZE", (new StringBuilder("openSearchActivity callback running in thread ")).append(Thread.currentThread().getId()).toString());
    }

    public void event()
    {
        Log.d("WAZE", (new StringBuilder("openSearchActivity event running in thread ")).append(Thread.currentThread().getId()).toString());
        Log.d("WAZE", (new StringBuilder("address=")).append(val$address).append(" autoNav=").append(val$autoNav).toString());
        Intent intent = new Intent(AppService.getActiveActivity(), com/waze/navigate/SearchActivity);
        intent.putExtra("SearchStr", val$address);
        if (val$autoNav)
        {
            intent.putExtra("SearchMode", 5);
        } else
        {
            intent.putExtra("SearchMode", 2);
        }
        AppService.getActiveActivity().startActivityForResult(intent, 1);
    }

    (boolean flag)
    {
        val$address = s;
        val$autoNav = flag;
        super(final_executor);
    }
}
