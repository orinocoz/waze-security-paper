// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;


// Referenced classes of package com.waze.settings:
//            SettingsNativeManager

class val.position
    implements Runnable
{

    final SettingsNativeManager this$0;
    private final int val$position;

    public void run()
    {
        SettingsNativeManager.access$3(SettingsNativeManager.this, val$position);
    }

    ()
    {
        this$0 = final_settingsnativemanager;
        val$position = I.this;
        super();
    }
}
