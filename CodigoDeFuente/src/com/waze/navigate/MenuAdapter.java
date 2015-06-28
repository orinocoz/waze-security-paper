// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;

public class MenuAdapter extends BaseAdapter
    implements ListAdapter
{
    static class ViewHolder
    {

        TextView text;

        ViewHolder()
        {
        }
    }


    private LayoutInflater inflater;

    public MenuAdapter(Context context)
    {
        inflater = LayoutInflater.from(context);
    }

    public int getCount()
    {
        return 2;
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
        ViewHolder viewholder;
        if (view == null)
        {
            view = inflater.inflate(0x7f030083, null);
            viewholder = new ViewHolder();
            viewholder.text = (TextView)view.findViewById(0x7f0903f8);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        viewholder.text.setText((new StringBuilder("Hey ")).append(i).toString());
        return view;
    }
}
