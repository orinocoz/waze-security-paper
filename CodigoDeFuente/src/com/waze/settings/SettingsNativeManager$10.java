// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.settings:
//            SettingsNativeManager, SettingsValue

class gasStations extends RunnableUICallback
{

    SettingsValue gasStations[];
    final SettingsNativeManager this$0;
    private final tingsValuesListener val$listener;

    public void callback()
    {
        val$listener.onComplete(gasStations);
    }

    public void event()
    {
        gasStations = SettingsNativeManager.access$9(SettingsNativeManager.this);
    }

    tingsValuesListener()
    {
        this$0 = final_settingsnativemanager;
        val$listener = tingsValuesListener.this;
        super();
        gasStations = null;
    }
}
