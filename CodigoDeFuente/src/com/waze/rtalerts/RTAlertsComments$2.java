// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsComments, RTAlertsAlertData

class this._cls0
    implements android.view.r
{

    final RTAlertsComments this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent();
        intent.putExtra("PopUp alert id", RTAlertsComments.mAlertData.mID);
        setResult(1001, intent);
        finish();
    }

    ()
    {
        this$0 = RTAlertsComments.this;
        super();
    }
}
