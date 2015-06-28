// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;


// Referenced classes of package com.waze.settings:
//            SwitchCheckedCallback, SettingsSoundActivity

class this._cls0
    implements SwitchCheckedCallback
{

    final SettingsSoundActivity this$0;

    public void OnCallback(boolean flag)
    {
        setRoute2Speaker(flag);
    }

    ()
    {
        this$0 = SettingsSoundActivity.this;
        super();
    }
}
