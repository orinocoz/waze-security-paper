// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.mywaze.Group;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.reports:
//            ReportForm

class val.groupsView
    implements com.waze.mywaze.anager.ActiveGroupListener
{

    final ReportForm this$0;
    private final View val$groupsView;

    public void onComplete(Group group)
    {
        if (group == null)
        {
            val$groupsView.setVisibility(8);
            return;
        } else
        {
            val$groupsView.setVisibility(0);
            String s = nativeManager.getLanguageString(DisplayStrings.DS_ALSO_SEND_THIS_REPORT_TOC);
            ((TextView)findViewById(0x7f09056d)).setText(s);
            ReportForm.access$1(ReportForm.this, group);
            MyWazeNativeManager.getInstance().setSelectedGroup(group);
            return;
        }
    }

    nager()
    {
        this$0 = final_reportform;
        val$groupsView = View.this;
        super();
    }
}
