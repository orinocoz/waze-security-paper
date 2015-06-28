// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.Group;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.reports:
//            ReportGroupAdapter

public class ReportGroupsActivity extends ActivityBase
{

    protected Group groups[];
    private MyWazeNativeManager myWazeNativeManager;

    public ReportGroupsActivity()
    {
        groups = null;
        myWazeNativeManager = MyWazeNativeManager.getInstance();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300c5);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_GROUPS, false);
        final ReportGroupAdapter adapter = new ReportGroupAdapter(this);
        final ListView listView = (ListView)findViewById(0x7f09056f);
        listView.setAdapter(adapter);
        myWazeNativeManager.getGroups(new com.waze.mywaze.MyWazeNativeManager.GetGroupsListener() {

            final ReportGroupsActivity this$0;
            private final ReportGroupAdapter val$adapter;
            private final ListView val$listView;

            public void onComplete(Group agroup[])
            {
                groups = agroup;
                adapter.setGroups(agroup);
                listView.invalidateViews();
            }

            
            {
                this$0 = ReportGroupsActivity.this;
                adapter = reportgroupadapter;
                listView = listview;
                super();
            }
        });
        listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final ReportGroupsActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                if (groups == null)
                {
                    return;
                } else
                {
                    MyWazeNativeManager.getInstance().setSelectedGroup(groups[i]);
                    Intent intent = new Intent();
                    intent.putExtra("group", groups[i]);
                    setResult(-1, intent);
                    finish();
                    return;
                }
            }

            
            {
                this$0 = ReportGroupsActivity.this;
                super();
            }
        });
    }
}
