// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.selectionlist;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckedTextView;

public class SelectionListAdapter extends ArrayAdapter
{

    private int selection;

    public SelectionListAdapter(Context context, int i, String as[], int j)
    {
        super(context, i, as);
        selection = j;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1 = view;
        if (view1 == null)
        {
            view1 = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030075, viewgroup, false);
        }
        View view2 = view1.findViewById(0x7f090371);
        View view3 = view1.findViewById(0x7f0901f8);
        View view4 = view1.findViewById(0x7f0901fc);
        CheckedTextView checkedtextview;
        boolean flag;
        if (getCount() == 1)
        {
            view2.setBackgroundResource(0x7f020225);
            view3.setVisibility(0);
            view4.setVisibility(0);
        } else
        if (i == 0)
        {
            view2.setBackgroundResource(0x7f020226);
            view3.setVisibility(0);
            view4.setVisibility(8);
        } else
        if (i == -1 + getCount())
        {
            view2.setBackgroundResource(0x7f020223);
            view3.setVisibility(8);
            view4.setVisibility(0);
        } else
        {
            view2.setBackgroundResource(0x7f020224);
            view3.setVisibility(8);
            view4.setVisibility(8);
        }
        view2.setPadding(0, 0, 0, 0);
        checkedtextview = (CheckedTextView)view1.findViewById(0x7f090372);
        checkedtextview.setText((CharSequence)getItem(i));
        if (i == selection)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        checkedtextview.setChecked(flag);
        return view1;
    }

    public void select(int i)
    {
        selection = i;
        notifyDataSetChanged();
    }
}
