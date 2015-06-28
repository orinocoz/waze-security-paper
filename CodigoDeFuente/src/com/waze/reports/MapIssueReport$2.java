// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

// Referenced classes of package com.waze.reports:
//            MapIssueReport, MapIssueAdapter

class val.mapIssueList
    implements android.widget.mClickListener
{

    final MapIssueReport this$0;
    private final ListView val$mapIssueList;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        MapIssueReport.access$4(MapIssueReport.this).setSelected(i);
        val$mapIssueList.invalidateViews();
    }

    lickListener()
    {
        this$0 = final_mapissuereport;
        val$mapIssueList = ListView.this;
        super();
    }
}
