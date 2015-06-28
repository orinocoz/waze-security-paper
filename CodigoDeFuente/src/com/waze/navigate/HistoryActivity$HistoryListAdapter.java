// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;

// Referenced classes of package com.waze.navigate:
//            AddressItem, HistoryActivity

private class historyItems extends BaseAdapter
{

    private AddressItem historyItems[];
    final HistoryActivity this$0;

    public int getCount()
    {
        return historyItems.length;
    }

    public Object getItem(int i)
    {
        return historyItems[i];
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        AddressItem addressitem;
        addressitem = (AddressItem)getItem(i);
        if (view == null)
        {
            view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f03000e, null);
        }
        view.setTag(0x7f09002c, addressitem);
        view.findViewById(0x7f0900e2).setVisibility(0);
        view.findViewById(0x7f0900c3).setVisibility(8);
        if (addressitem == null) goto _L2; else goto _L1
_L1:
        View view1;
        TextView textview = (TextView)view.findViewById(0x7f0900c2);
        TextView textview1;
        TextView textview2;
        boolean flag;
        byte byte0;
        if (addressitem.getTitle().equals(""))
        {
            textview.setVisibility(8);
        } else
        {
            textview.setVisibility(0);
            textview.setText(addressitem.getTitle());
        }
        textview1 = (TextView)view.findViewById(0x7f0900c4);
        if (addressitem.getAddress().equals(""))
        {
            textview1.setVisibility(8);
        } else
        {
            textview1.setVisibility(0);
            textview1.setText(addressitem.getAddress());
        }
        textview2 = (TextView)view.findViewById(0x7f0900c6);
        if (addressitem.getDistance().equals(""))
        {
            textview2.setVisibility(8);
        } else
        {
            textview2.setVisibility(0);
            textview2.setText(addressitem.getDistance());
        }
        ((RelativeLayout)view.findViewById(0x7f0900d9)).setTag(0x7f09002c, addressitem);
        view1 = view.findViewById(0x7f09002c);
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i == -1 + getCount())
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        flag | byte0;
        JVM INSTR tableswitch 0 3: default 240
    //                   0 320
    //                   1 330
    //                   2 340
    //                   3 350;
           goto _L3 _L4 _L5 _L6 _L7
_L3:
        view1.setPadding(0, 0, 0, 0);
_L2:
        return view;
_L4:
        view1.setBackgroundResource(0x7f020224);
        continue; /* Loop/switch isn't completed */
_L5:
        view1.setBackgroundResource(0x7f020226);
        continue; /* Loop/switch isn't completed */
_L6:
        view1.setBackgroundResource(0x7f020223);
        continue; /* Loop/switch isn't completed */
_L7:
        view1.setBackgroundResource(0x7f020225);
        if (true) goto _L3; else goto _L8
_L8:
    }

    public (Context context, int i, AddressItem aaddressitem[])
    {
        this$0 = HistoryActivity.this;
        super();
        historyItems = aaddressitem;
    }
}
