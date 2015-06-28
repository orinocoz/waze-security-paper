// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager, MyWazeActivity

class init> extends RunnableUICallback
{

    boolean couponsEnabled;
    final MyWazeNativeManager this$0;
    private final Context val$context;

    public void callback()
    {
        Log.d("WAZE", "launchMyWaze - callback");
        Intent intent = new Intent(val$context, com/waze/mywaze/MyWazeActivity);
        intent.putExtra("com.waze.mywaze.coupons", couponsEnabled);
        AppService.getMainActivity().startActivityForResult(intent, 32772);
    }

    public void event()
    {
        Log.d("WAZE", "launchMyWaze - event");
        couponsEnabled = MyWazeNativeManager.access$38(MyWazeNativeManager.this);
    }

    ()
    {
        this$0 = final_mywazenativemanager;
        val$context = Context.this;
        super();
    }
}
