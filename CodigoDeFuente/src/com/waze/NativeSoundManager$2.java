// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.ifs.async.RunnableExecutor;
import com.waze.settings.SettingsSoundConstants;
import com.waze.strings.DisplayStrings;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze:
//            NativeSoundManager, NativeManager, ConfigManager

class cutor extends RunnableExecutor
{

    final NativeSoundManager this$0;

    public void event()
    {
        NativeManager nativemanager = NativeManager.getInstance();
        NativeSoundManager.access$6(NativeSoundManager.this, nativemanager.getLanguageString(DisplayStrings.DS_SOUND_DEVICE_SPEAKER));
        NativeSoundManager.access$7(NativeSoundManager.this, nativemanager.getLanguageString(DisplayStrings.DS_SOUND_DEVICE_BT));
        NativeSoundManager.access$8(NativeSoundManager.this, nativemanager.getLanguageString(DisplayStrings.DS_SOUND_DEVICE_DEFAULT));
        ArrayList arraylist = new ArrayList();
        arraylist.add(0, SettingsSoundConstants.CFG_ITEM_ROUTE_2_SPEAKER);
        arraylist.add(1, SettingsSoundConstants.CFG_ITEM_PROMPTS_VOLUME);
        ConfigManager.getInstance().getConfig(NativeSoundManager.this, arraylist, "");
    }

    dConstants(Executor executor)
    {
        this$0 = NativeSoundManager.this;
        super(executor);
    }
}
