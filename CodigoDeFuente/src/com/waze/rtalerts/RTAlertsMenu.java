// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager, RTAlertsMenuAdapter, RTAlertsList, RTAlertsMenuData

public class RTAlertsMenu extends ActivityBase
{

    public static final String RTALERTS_TYPE_ID_MASK_EXTRA = "Type Id";
    public static final String RTALERTS_TYPE_NAME_EXTRA = "Type Name";

    public RTAlertsMenu()
    {
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (j == 1001 || j == 1002 || j == -1)
        {
            setResult(j, intent);
            finish();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        RTAlertsNativeManager rtalertsnativemanager = RTAlertsNativeManager.getInstance();
        setContentView(0x7f0300db);
        rtalertsnativemanager.getAlertsMenuData(new RTAlertsNativeManager.IAlertsMenuDataHandler() {

            final RTAlertsMenu this$0;

            public void handler(String s, RTAlertsMenuData artalertsmenudata[])
            {
                updateMenu(s, artalertsmenudata);
            }

            
            {
                this$0 = RTAlertsMenu.this;
                super();
            }
        });
        rtalertsnativemanager.getAlertsListData(new RTAlertsNativeManager.IAlertsListDataHandler() {

            final RTAlertsMenu this$0;

            public void handler(RTAlertsNativeManager.IAlertsListDataHandler.Data data)
            {
                RTAlertsList.updateListData(data.mAlertsData);
            }

            
            {
                this$0 = RTAlertsMenu.this;
                super();
            }
        });
        final RTAlertsMenuAdapter adapter = new RTAlertsMenuAdapter(this);
        ListView listview = (ListView)findViewById(0x7f0905df);
        listview.setAdapter(adapter);
        listview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final RTAlertsMenu this$0;
            private final RTAlertsMenuAdapter val$adapter;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                RTAlertsMenuAdapter.RowData rowdata = (RTAlertsMenuAdapter.RowData)adapter.getItem(i);
                Intent intent = new Intent(RTAlertsMenu.this, com/waze/rtalerts/RTAlertsList);
                intent.putExtra("Type Id", rowdata.mId);
                intent.putExtra("Type Name", rowdata.mLabel);
                startActivityForResult(intent, 32773);
            }

            
            {
                this$0 = RTAlertsMenu.this;
                adapter = rtalertsmenuadapter;
                super();
            }
        });
    }

    protected void onDestroy()
    {
        super.onDestroy();
        RTAlertsList.updateListData(null);
    }

    public void updateMenu(String s, RTAlertsMenuData artalertsmenudata[])
    {
        ((TitleBar)findViewById(0x7f0905de)).init(this, s);
        RTAlertsMenuAdapter rtalertsmenuadapter = (RTAlertsMenuAdapter)((ListView)findViewById(0x7f0905df)).getAdapter();
        rtalertsmenuadapter.updateList(artalertsmenudata);
        rtalertsmenuadapter.notifyDataSetChanged();
    }
}
