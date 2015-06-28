// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import com.waze.NativeManager;

// Referenced classes of package com.waze.settings:
//            SwitchCheckedCallback, SettingsAdvancedActivity

class val.nm
    implements SwitchCheckedCallback
{

    final SettingsAdvancedActivity this$0;
    private final NativeManager val$nm;

    public void OnCallback(boolean flag)
    {
        if (flag)
        {
            val$nm.setNorthUp(1);
            return;
        } else
        {
            val$nm.setNorthUp(0);
            return;
        }
    }

    ()
    {
        this$0 = final_settingsadvancedactivity;
        val$nm = NativeManager.this;
        super();
    }
}
