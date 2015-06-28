// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import com.waze.ifs.async.RunnableUICallback;
import com.waze.voice.VoiceData;

// Referenced classes of package com.waze.settings:
//            SettingsNativeManager

class languages extends RunnableUICallback
{

    VoiceData languages[];
    final SettingsNativeManager this$0;
    private final ttingsVoiceDataValuesListener val$listener;

    public void callback()
    {
        val$listener.onComplete(languages);
    }

    public void event()
    {
        languages = SettingsNativeManager.access$1(SettingsNativeManager.this);
    }

    ttingsVoiceDataValuesListener()
    {
        this$0 = final_settingsnativemanager;
        val$listener = ttingsVoiceDataValuesListener.this;
        super();
        languages = null;
    }
}
