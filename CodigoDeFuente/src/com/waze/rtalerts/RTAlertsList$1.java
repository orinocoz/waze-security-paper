// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsList, RTAlertsListAdapter, RTAlertsAlertData, RTAlertsComments

class this._cls0
    implements android.widget.temClickListener
{

    final RTAlertsList this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        RTAlertsList.access$0((RTAlertsAlertData)((RTAlertsListAdapter)adapterview.getAdapter()).getItem(i));
        if (RTAlertsList.access$1().mNumComments > 0)
        {
            RTAlertsComments.show(RTAlertsList.this, RTAlertsList.access$1());
            return;
        } else
        {
            Intent intent = new Intent();
            intent.putExtra("PopUp alert id", RTAlertsList.access$1().mID);
            setResult(1001, intent);
            finish();
            return;
        }
    }

    s()
    {
        this$0 = RTAlertsList.this;
        super();
    }
}
