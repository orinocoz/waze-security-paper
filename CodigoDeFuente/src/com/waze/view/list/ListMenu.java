// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.list;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ListView;
import android.widget.RelativeLayout;

// Referenced classes of package com.waze.view.list:
//            ListMenuAdapter

public class ListMenu extends RelativeLayout
{

    private ListView mListView;

    public ListMenu(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f030077, this);
        mListView = (ListView)findViewById(0x7f090376);
    }

    public ListView getListView()
    {
        return mListView;
    }

    public void setAdapter(ListMenuAdapter listmenuadapter)
    {
        mListView.setAdapter(listmenuadapter);
    }
}
