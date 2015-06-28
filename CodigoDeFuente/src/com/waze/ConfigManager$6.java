// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze:
//            ConfigManager, ConfigItem

class leUICallback extends RunnableUICallback
{

    final ConfigManager this$0;
    private final ConfigItem val$configItem;
    private final String val$screenName;

    public void callback()
    {
    }

    public void event()
    {
        String s = (new StringBuilder(String.valueOf(val$configItem.getCategory()))).append(".").append(val$configItem.getName()).append(":").append(val$configItem.getValue()).toString();
        ConfigManager.access$6(ConfigManager.this, s.toString(), val$screenName);
    }

    leUICallback()
    {
        this$0 = final_configmanager;
        val$configItem = configitem;
        val$screenName = String.this;
        super();
    }
}
