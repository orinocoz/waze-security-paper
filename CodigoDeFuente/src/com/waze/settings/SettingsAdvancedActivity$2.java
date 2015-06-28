// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import com.waze.NativeManager;
import com.waze.navigate.DriveToNativeManager;

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
            val$nm.CalendaRequestAccessNTV();
            DriveToNativeManager.getInstance().fetchCalendarEvents();
            return;
        } else
        {
            val$nm.CalendaDenyAccessNTV();
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
