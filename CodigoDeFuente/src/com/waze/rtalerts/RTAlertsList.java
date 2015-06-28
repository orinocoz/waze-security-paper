// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.tabs.TabBar;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsListAdapter, RTAlertsAlertData, RTAlertsComments

public class RTAlertsList extends ActivityBase
{

    private static RTAlertsAlertData mAlertSelected = null;
    private static RTAlertsAlertData mAlertsData[];
    private int mAlertsTypeIdMask;
    private int mAroundMeTab;
    private final android.widget.AdapterView.OnItemClickListener mListClickListener = new android.widget.AdapterView.OnItemClickListener() {

        final RTAlertsList this$0;

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            RTAlertsList.mAlertSelected = (RTAlertsAlertData)((RTAlertsListAdapter)adapterview.getAdapter()).getItem(i);
            if (RTAlertsList.mAlertSelected.mNumComments > 0)
            {
                RTAlertsComments.show(RTAlertsList.this, RTAlertsList.mAlertSelected);
                return;
            } else
            {
                Intent intent = new Intent();
                intent.putExtra("PopUp alert id", RTAlertsList.mAlertSelected.mID);
                setResult(1001, intent);
                finish();
                return;
            }
        }

            
            {
                this$0 = RTAlertsList.this;
                super();
            }
    };
    private int mMyGroupsTab;
    private int mOnRouteTab;
    private int mSelectedTab;
    private String mTitle;

    public RTAlertsList()
    {
        mAroundMeTab = 0;
        mOnRouteTab = 1;
        mMyGroupsTab = 2;
        mSelectedTab = 0;
        mAlertsTypeIdMask = 0;
        mTitle = null;
    }

    public static RTAlertsAlertData getAlertSelected()
    {
        return mAlertSelected;
    }

    public static RTAlertsAlertData[] getAlertsData()
    {
        return mAlertsData;
    }

    private void updateList(RTAlertsAlertData artalertsalertdata[])
    {
        if (artalertsalertdata == null)
        {
            return;
        }
        ArrayList arraylist = new ArrayList();
        int i = 0;
        do
        {
            if (i >= artalertsalertdata.length)
            {
                RTAlertsListAdapter rtalertslistadapter = (RTAlertsListAdapter)((ListView)findViewById(0x7f0905c9)).getAdapter();
                rtalertslistadapter.updateList(arraylist);
                rtalertslistadapter.notifyDataSetChanged();
                return;
            }
            if ((artalertsalertdata[i].mAlertsTypesMask & mAlertsTypeIdMask) > 0 && (mSelectedTab == mAroundMeTab || mSelectedTab == mOnRouteTab && artalertsalertdata[i].mIsAlertOnRoute || mSelectedTab == mMyGroupsTab && artalertsalertdata[i].mGroupRelevance))
            {
                arraylist.add(artalertsalertdata[i]);
            }
            i++;
        } while (true);
    }

    public static void updateListData(RTAlertsAlertData artalertsalertdata[])
    {
        mAlertsData = artalertsalertdata;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (j == 1002 || j == -1 || j == 1001)
        {
            setResult(j, intent);
            finish();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300d9);
        RTAlertsListAdapter rtalertslistadapter = new RTAlertsListAdapter(this);
        ListView listview = (ListView)findViewById(0x7f0905c9);
        listview.setAdapter(rtalertslistadapter);
        listview.setOnItemClickListener(mListClickListener);
        TabBar tabbar = (TabBar)findViewById(0x7f0905c8);
        tabbar.setText(0, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_AROUND_ME));
        tabbar.setText(1, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ON_ROUTE));
        tabbar.setText(2, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_MY_GROUPS));
        tabbar.setSelected(0);
        if (getIntent().hasExtra("Type Name"))
        {
            mTitle = getIntent().getStringExtra("Type Name");
        }
        if (getIntent().hasExtra("Type Id"))
        {
            mAlertsTypeIdMask = getIntent().getIntExtra("Type Id", 0);
        }
        ((TitleBar)findViewById(0x7f0905c7)).init(this, mTitle);
        tabbar.setListener(new com.waze.view.tabs.TabBar.IOnTabClickListener() {

            final RTAlertsList this$0;

            public void onClick(int i)
            {
                mSelectedTab = i;
                updateList(RTAlertsList.mAlertsData);
            }

            
            {
                this$0 = RTAlertsList.this;
                super();
            }
        });
        updateList(mAlertsData);
        mAlertSelected = null;
    }






}
