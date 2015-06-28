// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.selectionlist;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.selectionlist:
//            SelectionListAdapter

public class SelectionListActivity extends ActivityBase
{

    public static final String LIST_ITEMS_ID = "com.waze.selectionlist.items";
    public static final String LIST_SELECTION_ID = "com.waze.selectionlist.selection";
    public static final String LIST_TITLE_ID = "com.waze.selectionlist.title";

    public SelectionListActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030076);
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 == null)
        {
            Log.e("WAZE", "Selection list cannot instantiate with no data");
            finish();
        }
        String s = bundle1.getString("com.waze.selectionlist.title");
        if (s == null)
        {
            s = "";
        }
        int i;
        String as[];
        final SelectionListAdapter adapter;
        ListView listview;
        if (bundle1.containsKey("com.waze.selectionlist.selection"))
        {
            i = bundle1.getInt("com.waze.selectionlist.selection");
        } else
        {
            i = -1;
        }
        as = bundle1.getStringArray("com.waze.selectionlist.items");
        ((TitleBar)findViewById(0x7f090373)).init(this, s);
        adapter = new SelectionListAdapter(getApplicationContext(), 0x7f030075, as, i);
        listview = (ListView)findViewById(0x7f090374);
        listview.setAdapter(adapter);
        listview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final SelectionListActivity this$0;
            private final SelectionListAdapter val$adapter;

            public void onItemClick(AdapterView adapterview, View view, int j, long l)
            {
                adapter.select(j);
                setResult(j + 1);
                finish();
            }

            
            {
                this$0 = SelectionListActivity.this;
                adapter = selectionlistadapter;
                super();
            }
        });
    }
}
