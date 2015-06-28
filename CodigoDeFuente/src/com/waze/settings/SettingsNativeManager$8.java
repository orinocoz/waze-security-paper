// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.settings:
//            SettingsNativeManager

class t> extends RunnableUICallback
{

    private boolean exists;
    final SettingsNativeManager this$0;
    private final String val$display;
    private final ttingsExistsListener val$listener;
    private final String val$name;

    public void callback()
    {
        val$listener.onComplete(exists);
    }

    public void event()
    {
        exists = SettingsNativeManager.access$7(SettingsNativeManager.this, val$name, val$display);
    }

    ttingsExistsListener()
    {
        this$0 = final_settingsnativemanager;
        val$name = s;
        val$display = s1;
        val$listener = ttingsExistsListener.this;
        super();
    }
}
