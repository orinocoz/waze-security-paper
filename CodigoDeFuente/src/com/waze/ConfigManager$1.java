// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;
import com.waze.ifs.async.RunnableUICallback;
import java.util.List;

// Referenced classes of package com.waze:
//            ConfigManager

class leUICallback extends RunnableUICallback
{

    private String mConfigItems;
    final ConfigManager this$0;
    private final List val$configItems;
    private final String val$screenName;
    private final onfigUpdater val$updater;

    public void callback()
    {
        Log.i("WAZE", "getConfig - callback");
        List list = ConfigManager.access$2(ConfigManager.this, mConfigItems);
        val$updater.updateConfigItems(list);
    }

    public void event()
    {
        Log.i("WAZE", "getConfig - event");
        String s = ConfigManager.access$0(ConfigManager.this, val$configItems);
        mConfigItems = ConfigManager.access$1(ConfigManager.this, s, val$screenName);
    }

    onfigUpdater()
    {
        this$0 = final_configmanager;
        val$configItems = list;
        val$screenName = s;
        val$updater = onfigUpdater.this;
        super();
    }
}
