// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;
import com.waze.ifs.async.RunnableUICallback;
import java.util.ArrayList;

// Referenced classes of package com.waze:
//            ConfigManager

class leUICallback extends RunnableUICallback
{

    final ConfigManager this$0;
    private final ArrayList val$configItems;
    private final String val$screenName;

    public void callback()
    {
    }

    public void event()
    {
        Log.i("WAZE", "setConfig - event");
        String s = ConfigManager.access$0(ConfigManager.this, val$configItems);
        ConfigManager.access$6(ConfigManager.this, s.toString(), val$screenName);
    }

    leUICallback()
    {
        this$0 = final_configmanager;
        val$configItems = arraylist;
        val$screenName = String.this;
        super();
    }
}
