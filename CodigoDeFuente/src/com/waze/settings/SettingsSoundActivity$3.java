// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.widget.SeekBar;

// Referenced classes of package com.waze.settings:
//            SettingsSoundActivity

class ekBarChangeListenerBasic extends ekBarChangeListenerBasic
{

    final SettingsSoundActivity this$0;

    public void onProgressChanged(SeekBar seekbar, int i)
    {
        setPromptsVolume(i);
    }

    ekBarChangeListenerBasic()
    {
        this$0 = SettingsSoundActivity.this;
        super();
    }
}
