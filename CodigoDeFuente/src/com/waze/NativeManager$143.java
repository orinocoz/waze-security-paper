// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.content.SharedPreferences;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class val.Data
    implements Runnable
{

    final NativeManager this$0;
    private final String val$Data;
    private final String val$Key;

    public void run()
    {
        SharedPreferences sharedpreferences = AppService.getAppContext().getSharedPreferences("com.waze.Keys", 0);
        sharedpreferences.edit().putString(val$Key, val$Data).apply();
        sharedpreferences.edit().commit();
    }

    rences.Editor()
    {
        this$0 = final_nativemanager;
        val$Key = s;
        val$Data = String.this;
        super();
    }
}
