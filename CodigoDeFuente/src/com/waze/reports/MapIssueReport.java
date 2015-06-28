// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.rtalerts.MapProblem;
import com.waze.rtalerts.RTAlertsNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.tabs.TabBar;

// Referenced classes of package com.waze.reports:
//            ReportForm, MapIssueAdapter, ReportMenu

public class MapIssueReport extends ReportForm
{
    private static class MapIssuesTabsManager
    {

        private MapIssueReport mHolder;
        private TabBar mTabBar;
        private final com.waze.view.tabs.TabBar.IOnTabClickListener mTabClickListener = new _cls1();

        public void initTabs()
        {
            NativeManager nativemanager = NativeManager.getInstance();
            mTabBar = (TabBar)mHolder.findViewById(0x7f0903e9);
            mTabBar.setListener(mTabClickListener);
            mTabBar.setText(0, nativemanager.getLanguageString(DisplayStrings.DS_MAP_ISSUE));
            mTabBar.setText(1, nativemanager.getLanguageString(DisplayStrings.DS_PAVE_ROAD));
            mTabBar.setSelected(0);
        }


        public MapIssuesTabsManager(MapIssueReport mapissuereport)
        {
            mHolder = null;
            mTabBar = null;
            mHolder = mapissuereport;
        }
    }


    private boolean mIsInPaveMode;
    private MapIssueAdapter mapIssueAdapter;
    private MapIssuesTabsManager mapIssueTabsmanager;

    public MapIssueReport(Context context, ReportMenu reportmenu)
    {
        super(context, reportmenu, 0x7f03007f);
        mIsInPaveMode = false;
        initLayout();
    }

    private void onSend()
    {
        if (!mIsInPaveMode)
        {
            RTAlertsNativeManager.getInstance().reportMapIssue(((TextView)findViewById(0x7f0903eb)).getText().toString(), mapIssueAdapter.getSelected());
        } else
        {
            boolean flag;
            if (AppService.getNativeManager().isEditorIgnoreNewRoadsNTV())
            {
                flag = false;
            } else
            {
                flag = true;
            }
            NativeManager.Post(new Runnable() {

                final MapIssueReport this$0;

                public void run()
                {
                    AppService.getNativeManager().EditorTrackToggleNewRoadsNTV();
                }

            
            {
                this$0 = MapIssueReport.this;
                super();
            }
            });
            reportMenu.setRoadPaving(flag);
        }
        reportMenu.close();
    }

    private void setAdditionText(String s)
    {
        ((TextView)findViewById(0x7f0903f1)).setText(s);
    }

    private void setAdditionTextTitle(String s)
    {
        ((TextView)findViewById(0x7f0903f0)).setText(s);
    }

    private void setButtonText(String s)
    {
        ((TextView)findViewById(0x7f090370)).setText(s);
    }

    private void setTitle()
    {
        String s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_PAVE_ROAD);
        ((TextView)findViewById(0x7f090595)).setText(s);
    }

    public int getDelayedReportButtonResource()
    {
        return 0;
    }

    protected int getReportSubtype()
    {
        return 0;
    }

    protected int getReportType()
    {
        return -1;
    }

    public void hideSoftInput()
    {
        ((InputMethodManager)context.getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 0);
    }

    protected void initLayout()
    {
        super.initLayout();
        mapIssueTabsmanager = new MapIssuesTabsManager(this);
        mapIssueTabsmanager.initTabs();
        String s = nativeManager.getLanguageString(DisplayStrings.DS_MAP_ISSUE);
        ((TextView)findViewById(0x7f090034)).setText(s);
        String s1 = nativeManager.getLanguageString(DisplayStrings.DS_DESCRIBE_MAP_ISSUE_HERE____);
        TextView textview = (TextView)findViewById(0x7f0903eb);
        if (textview != null)
        {
            textview.setHint(s1);
        }
        View view = findViewById(0x7f0903ed);
        if (view != null)
        {
            view.setVisibility(8);
        }
        final ListView mapIssueList = (ListView)findViewById(0x7f0903ec);
        mapIssueAdapter = new MapIssueAdapter(getContext());
        mapIssueAdapter.setSelected(0);
        mapIssueList.setAdapter(mapIssueAdapter);
        mapIssueList.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final MapIssueReport this$0;
            private final ListView val$mapIssueList;

            public void onItemClick(AdapterView adapterview, View view1, int i, long l)
            {
                mapIssueAdapter.setSelected(i);
                mapIssueList.invalidateViews();
            }

            
            {
                this$0 = MapIssueReport.this;
                mapIssueList = listview;
                super();
            }
        });
        RTAlertsNativeManager.getInstance().getMapProblems(new com.waze.rtalerts.RTAlertsNativeManager.MapProblemsListener() {

            final MapIssueReport this$0;
            private final ListView val$mapIssueList;

            public void onComplete(MapProblem amapproblem[])
            {
                mapIssueAdapter.setProblems(amapproblem);
                mapIssueList.invalidateViews();
            }

            
            {
                this$0 = MapIssueReport.this;
                mapIssueList = listview;
                super();
            }
        });
        findViewById(0x7f0903f2).setOnClickListener(new android.view.View.OnClickListener() {

            final MapIssueReport this$0;

            public void onClick(View view1)
            {
                onSend();
            }

            
            {
                this$0 = MapIssueReport.this;
                super();
            }
        });
    }

    public void onOrientationChanged(int i)
    {
        initLayout();
    }







    // Unreferenced inner class com/waze/reports/MapIssueReport$MapIssuesTabsManager$1

/* anonymous class */
    class MapIssuesTabsManager._cls1
        implements com.waze.view.tabs.TabBar.IOnTabClickListener
    {

        final boolean isRecording;
        NativeManager mgr;
        final MapIssuesTabsManager this$1;

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
                    mHolder.mIsInPaveMode = false;
                }
                if (i == 1)
                {
                    mHolder.hideSoftInput();
                    mHolder.findViewById(0x7f0903ea).setVisibility(8);
                    String s = mgr.getLanguageString(DisplayStrings.DS_PAVE);
                    ((TextView)mHolder.findViewById(0x7f090034)).setText(s);
                    mHolder.mIsInPaveMode = true;
                    mHolder.findViewById(0x7f0903ed).setVisibility(0);
                    if (!isRecording)
                    {
                        break label0;
                    }
                    mHolder.setAdditionTextTitle(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_DONEQ));
                    mHolder.setAdditionText(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_CLICK_STOP_AND_MAKE_SURE_TO_GO));
                    mHolder.setButtonText(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_STOP_PAVING));
                    ((ImageView)mHolder.findViewById(0x7f0903ef)).setImageResource(0x7f0201ff);
                }
                return;
            }
            mHolder.setAdditionTextTitle(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_NO_ROAD_HEREQ));
            mHolder.setAdditionText(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_CLICK_PAVE_AND_SIMPLY_DRIVE));
            mHolder.setButtonText(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_PAVE_ROAD));
            ((ImageView)mHolder.findViewById(0x7f0903ef)).setImageResource(0x7f020200);
        }

            
            {
                this$1 = MapIssuesTabsManager.this;
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
    }

}
