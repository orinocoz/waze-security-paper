// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.selectionlist;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.waze.selectionlist:
//            SelectionListActivity, SelectionListAdapter

class val.adapter
    implements android.widget.istener
{

    final SelectionListActivity this$0;
    private final SelectionListAdapter val$adapter;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        val$adapter.select(i);
        setResult(i + 1);
        finish();
    }

    ()
    {
        this$0 = final_selectionlistactivity;
        val$adapter = SelectionListAdapter.this;
        super();
    }
}
