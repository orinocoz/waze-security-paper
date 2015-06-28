// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

// Referenced classes of package com.waze.navigate:
//            FavoritesActivity, AddressItem

private class favoriteItems extends BaseAdapter
{

    private AddressItem favoriteItems[];
    final FavoritesActivity this$0;

    public int getCount()
    {
        return favoriteItems.length;
    }

    public Object getItem(int i)
    {
        return favoriteItems[i];
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f03000e, null);
        }
        view.setTag(0x7f09002c, favoriteItems[i]);
        view.findViewById(0x7f0900e1).setVisibility(0);
        if (favoriteItems[i] == null) goto _L2; else goto _L1
_L1:
        View view1;
        view.findViewById(0x7f0900c4).setVisibility(8);
        view.findViewById(0x7f0900c6).setVisibility(8);
        view.findViewById(0x7f0900c3).setVisibility(8);
        ((TextView)view.findViewById(0x7f0900c2)).setText(Html.fromHtml(favoriteItems[i].getTitle()));
        Integer integer = favoriteItems[i].getImage();
        RelativeLayout relativelayout;
        boolean flag;
        byte byte0;
        if (integer != null)
        {
            ((ImageView)view.findViewById(0x7f0900be)).setImageResource(integer.intValue());
            view.findViewById(0x7f0900be).setVisibility(0);
        } else
        {
            view.findViewById(0x7f0900be).setVisibility(8);
        }
        relativelayout = (RelativeLayout)view.findViewById(0x7f0900d9);
        relativelayout.setTag(0x7f09002c, favoriteItems[i]);
        if (favoriteItems[i].getMoreAction() != null && favoriteItems[i].getMoreAction().booleanValue())
        {
            relativelayout.setVisibility(0);
        } else
        {
            relativelayout.setVisibility(8);
        }
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
        JVM INSTR tableswitch 0 3: default 276
    //                   0 323
    //                   1 333
    //                   2 343
    //                   3 353;
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
        this$0 = FavoritesActivity.this;
        super();
        favoriteItems = aaddressitem;
    }
}
