// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.widget.ListView;
import com.waze.mywaze.Group;

// Referenced classes of package com.waze.reports:
//            ReportGroupsActivity, ReportGroupAdapter

class val.listView
    implements com.waze.mywaze.GroupsListener
{

    final ReportGroupsActivity this$0;
    private final ReportGroupAdapter val$adapter;
    private final ListView val$listView;

    public void onComplete(Group agroup[])
    {
        groups = agroup;
        val$adapter.setGroups(agroup);
        val$listView.invalidateViews();
    }

    roupsListener()
    {
        this$0 = final_reportgroupsactivity;
        val$adapter = reportgroupadapter;
        val$listView = ListView.this;
        super();
    }
}
