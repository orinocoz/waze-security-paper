// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.navbar.NavBar;
import com.waze.view.text.AutoResizeTextView;

// Referenced classes of package com.waze.main.navigate:
//            NavigationItem

public class NavigationListItemAdapter extends BaseAdapter
{

    private boolean driveOnLeft;
    private LayoutInflater inflater;
    private NavigationItem items[];

    public NavigationListItemAdapter(Context context, boolean flag)
    {
        inflater = (LayoutInflater)context.getSystemService("layout_inflater");
        driveOnLeft = flag;
    }

    public int getCount()
    {
        if (items == null)
        {
            return 0;
        } else
        {
            return items.length;
        }
    }

    public Object getItem(int i)
    {
        return null;
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (items == null)
        {
            return null;
        }
        NavigationItem navigationitem = items[i];
        View view1 = view;
        if (view1 == null)
        {
            view1 = inflater.inflate(0x7f030097, viewgroup, false);
        }
        ImageView imageview = (ImageView)view1.findViewById(0x7f090479);
        int j;
        AutoResizeTextView autoresizetextview;
        AutoResizeTextView autoresizetextview1;
        AutoResizeTextView autoresizetextview2;
        View view2;
        if (driveOnLeft)
        {
            j = NavBar.instImagesLeft[navigationitem.instruction];
        } else
        {
            j = NavBar.instImagesRight[navigationitem.instruction];
        }
        imageview.setImageResource(j);
        autoresizetextview = (AutoResizeTextView)view1.findViewById(0x7f09047b);
        autoresizetextview.resetTextSize();
        autoresizetextview.setText(navigationitem.address);
        autoresizetextview1 = (AutoResizeTextView)view1.findViewById(0x7f09047a);
        autoresizetextview1.resetTextSize();
        autoresizetextview1.setText(navigationitem.label);
        autoresizetextview2 = (AutoResizeTextView)view1.findViewById(0x7f09047c);
        autoresizetextview2.resetTextSize();
        autoresizetextview2.setText(navigationitem.distance);
        ((TextView)view1.findViewById(0x7f09047d)).setText((new StringBuilder()).append(i + 1).append("/").append(items.length).toString());
        view2 = view1.findViewById(0x7f090478);
        if (i == -1 + items.length)
        {
            if (i == 0)
            {
                view2.setBackgroundResource(0x7f02006d);
            } else
            {
                view2.setBackgroundResource(0x7f02006c);
            }
        } else
        if (i == 0)
        {
            view2.setBackgroundResource(0x7f02006e);
        } else
        {
            view2.setBackgroundResource(0x7f02006c);
        }
        view2.setPadding(0, 0, 0, 0);
        return view1;
    }

    public void setItems(NavigationItem anavigationitem[])
    {
        items = anavigationitem;
    }
}
