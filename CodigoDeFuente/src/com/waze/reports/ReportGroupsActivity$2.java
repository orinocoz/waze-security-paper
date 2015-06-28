// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.reports:
//            ReportGroupsActivity

class this._cls0
    implements android.widget.Listener
{

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

    stener()
    {
        this$0 = ReportGroupsActivity.this;
        super();
    }
}
