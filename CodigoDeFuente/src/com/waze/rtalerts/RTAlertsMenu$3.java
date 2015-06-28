// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsMenu, RTAlertsMenuAdapter, RTAlertsList

class pter
    implements android.widget.temClickListener
{

    final RTAlertsMenu this$0;
    private final RTAlertsMenuAdapter val$adapter;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        pter.RowData rowdata = (pter.RowData)val$adapter.getItem(i);
        Intent intent = new Intent(RTAlertsMenu.this, com/waze/rtalerts/RTAlertsList);
        intent.putExtra("Type Id", rowdata.mId);
        intent.putExtra("Type Name", rowdata.mLabel);
        startActivityForResult(intent, 32773);
    }

    pter()
    {
        this$0 = final_rtalertsmenu;
        val$adapter = RTAlertsMenuAdapter.this;
        super();
    }
}
