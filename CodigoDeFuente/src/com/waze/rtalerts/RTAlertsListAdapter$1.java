// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.app.Activity;
import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsListAdapter, RTAlertsGroupActivity, RTAlertsAlertData

class val.alertData
    implements android.view.er._cls1
{

    private final RTAlertsAlertData val$alertData;
    private final Activity val$context;

    public void onClick(View view)
    {
        Intent intent = new Intent(val$context, com/waze/rtalerts/RTAlertsGroupActivity);
        intent.putExtra("url", val$alertData.mGroupUrl);
        val$context.startActivityForResult(intent, 32773);
    }

    ()
    {
        val$context = activity;
        val$alertData = rtalertsalertdata;
        super();
    }
}
