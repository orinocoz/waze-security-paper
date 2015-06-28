// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.app.Activity;
import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.settings:
//            SettingsUtilsMultipleConfig

class val.activityCode
    implements android.view.ig._cls4
{

    private final Activity val$activity;
    private final Class val$activityClass;
    private final int val$activityCode;

    public void onClick(View view)
    {
        Intent intent = new Intent(val$activity, val$activityClass);
        val$activity.startActivityForResult(intent, val$activityCode);
    }

    ()
    {
        val$activity = activity1;
        val$activityClass = class1;
        val$activityCode = i;
        super();
    }
}
