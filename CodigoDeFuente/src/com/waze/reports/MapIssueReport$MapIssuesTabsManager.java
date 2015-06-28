// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.tabs.TabBar;

// Referenced classes of package com.waze.reports:
//            MapIssueReport

private static class mHolder
{

    private MapIssueReport mHolder;
    private TabBar mTabBar;
    private final com.waze.view.tabs.abBar mTabClickListener = new com.waze.view.tabs.TabBar.IOnTabClickListener() {

        final boolean isRecording;
        NativeManager mgr;
        final MapIssueReport.MapIssuesTabsManager this$1;

        public void onClick(int i)
        {
label0:
            {
                if (i == 0)
                {
                    mHolder.findViewById(0x7f0903ea).setVisibility(0);
                    mHolder.findViewById(0x7f0903ed).setVisibility(8);
                    String s1 = mgr.getLanguageString(DisplayStrings.DS_MAP_ISSUE);
                    ((TextView)mHolder.findViewById(0x7f090034)).setText(s1);
                    String s2 = mgr.getLanguageString(DisplayStrings.DS_SEND);
                    ((TextView)mHolder.findViewById(0x7f090370)).setText(s2);
                    MapIssueReport.access$0(mHolder, false);
                }
                if (i == 1)
                {
                    mHolder.hideSoftInput();
                    mHolder.findViewById(0x7f0903ea).setVisibility(8);
                    String s = mgr.getLanguageString(DisplayStrings.DS_PAVE);
                    ((TextView)mHolder.findViewById(0x7f090034)).setText(s);
                    MapIssueReport.access$0(mHolder, true);
                    mHolder.findViewById(0x7f0903ed).setVisibility(0);
                    if (!isRecording)
                    {
                        break label0;
                    }
                    MapIssueReport.access$1(mHolder, AppService.getNativeManager().getLanguageString(DisplayStrings.DS_DONEQ));
                    MapIssueReport.access$2(mHolder, AppService.getNativeManager().getLanguageString(DisplayStrings.DS_CLICK_STOP_AND_MAKE_SURE_TO_GO));
                    MapIssueReport.access$3(mHolder, AppService.getNativeManager().getLanguageString(DisplayStrings.DS_STOP_PAVING));
                    ((ImageView)mHolder.findViewById(0x7f0903ef)).setImageResource(0x7f0201ff);
                }
                return;
            }
            MapIssueReport.access$1(mHolder, AppService.getNativeManager().getLanguageString(DisplayStrings.DS_NO_ROAD_HEREQ));
            MapIssueReport.access$2(mHolder, AppService.getNativeManager().getLanguageString(DisplayStrings.DS_CLICK_PAVE_AND_SIMPLY_DRIVE));
            MapIssueReport.access$3(mHolder, AppService.getNativeManager().getLanguageString(DisplayStrings.DS_PAVE_ROAD));
            ((ImageView)mHolder.findViewById(0x7f0903ef)).setImageResource(0x7f020200);
        }

            
            {
                this$1 = MapIssueReport.MapIssuesTabsManager.this;
                super();
                mgr = NativeManager.getInstance();
                boolean flag;
                if (AppService.getNativeManager().isEditorIgnoreNewRoadsNTV())
                {
                    flag = false;
                } else
                {
                    flag = true;
                }
                isRecording = flag;
            }
    };

    public void initTabs()
    {
        NativeManager nativemanager = NativeManager.getInstance();
        mTabBar = (TabBar)mHolder.findViewById(0x7f0903e9);
        mTabBar.setListener(mTabClickListener);
        mTabBar.setText(0, nativemanager.getLanguageString(DisplayStrings.DS_MAP_ISSUE));
        mTabBar.setText(1, nativemanager.getLanguageString(DisplayStrings.DS_PAVE_ROAD));
        mTabBar.setSelected(0);
    }


    public _cls1.isRecording(MapIssueReport mapissuereport)
    {
        mHolder = null;
        mTabBar = null;
        mHolder = mapissuereport;
    }
}
