// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.view.animation.Animation;

// Referenced classes of package com.waze.settings:
//            SettingsSwitchView

class itchModes
    implements android.view.animation.stener
{

    final SettingsSwitchView this$0;
    private final itchModes val$mode;

    public void onAnimationEnd(Animation animation)
    {
        SettingsSwitchView.access$4(SettingsSwitchView.this, val$mode);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    itchModes()
    {
        this$0 = final_settingsswitchview;
        val$mode = itchModes.this;
        super();
    }
}
