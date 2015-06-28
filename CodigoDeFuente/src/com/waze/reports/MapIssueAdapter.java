// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import android.widget.ListAdapter;
import com.waze.NativeManager;
import com.waze.rtalerts.MapProblem;

public class MapIssueAdapter extends BaseAdapter
    implements ListAdapter
{

    private LayoutInflater inflater;
    private MapProblem problems[];
    private int selected;

    public MapIssueAdapter(Context context)
    {
        inflater = LayoutInflater.from(context);
    }

    public int getCount()
    {
        if (problems == null)
        {
            return 0;
        } else
        {
            return problems.length;
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

    public int getSelected()
    {
        return selected;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = inflater.inflate(0x7f030080, null);
        }
        String s = NativeManager.getInstance().getLanguageString(problems[i].description);
        CheckedTextView checkedtextview = (CheckedTextView)view.findViewById(0x7f0903f3);
        checkedtextview.setText(s);
        if (i == selected)
        {
            checkedtextview.setChecked(true);
            return view;
        } else
        {
            checkedtextview.setChecked(false);
            return view;
        }
    }

    public void setProblems(MapProblem amapproblem[])
    {
        problems = amapproblem;
    }

    public void setSelected(int i)
    {
        selected = i;
    }
}
