// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.DialogInterface;

// Referenced classes of package com.waze.settings:
//            SettingsUtilsMultipleConfig, SettingsDialogListener

class val.listener
    implements android.content.r
{

    private final SettingsDialogListener val$listener;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        val$listener.onComplete(i);
    }

    ()
    {
        val$listener = settingsdialoglistener;
        super();
    }
}
