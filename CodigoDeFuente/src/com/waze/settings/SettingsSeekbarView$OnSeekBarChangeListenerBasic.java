// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.widget.SeekBar;

// Referenced classes of package com.waze.settings:
//            SettingsSeekbarView

public static abstract class 
    implements android.widget.ic
{

    public abstract void onProgressChanged(SeekBar seekbar, int i);

    public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
    {
        onProgressChanged(seekbar, i);
    }

    public void onStartTrackingTouch(SeekBar seekbar)
    {
    }

    public void onStopTrackingTouch(SeekBar seekbar)
    {
    }

    public ()
    {
    }
}
