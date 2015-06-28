// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.settings:
//            SettingsNativeManager, SettingsValue

class values extends RunnableUICallback
{

    final SettingsNativeManager this$0;
    private final ttingsValuesListener val$listener;
    SettingsValue values[];

    public void callback()
    {
        val$listener.onComplete(values);
    }

    public void event()
    {
        values = SettingsNativeManager.access$6(SettingsNativeManager.this);
    }

    ttingsValuesListener()
    {
        this$0 = final_settingsnativemanager;
        val$listener = ttingsValuesListener.this;
        super();
        values = null;
    }
}
