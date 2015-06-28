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
import android.widget.ImageView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.mywaze.Group;
import com.waze.strings.DisplayStrings;

public class ReportGroupAdapter extends BaseAdapter
{

    private Group groups[];
    private LayoutInflater inflater;

    public ReportGroupAdapter(Context context)
    {
        inflater = LayoutInflater.from(context);
    }

    public int getCount()
    {
        if (groups == null)
        {
            return 0;
        } else
        {
            return groups.length;
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
        if (view == null)
        {
            view = inflater.inflate(0x7f0300ed, null);
        }
        Group group = groups[i];
        CheckedTextView checkedtextview = (CheckedTextView)view.findViewById(0x7f0903f3);
        ImageView imageview = (ImageView)view.findViewById(0x7f09063e);
        android.graphics.drawable.Drawable drawable = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(group.icon))).append(".bin").toString());
        View view1;
        if (imageview != null && drawable != null)
        {
            imageview.setImageDrawable(drawable);
            imageview.setVisibility(0);
        } else
        {
            imageview.setVisibility(8);
        }
        if (group.name.equals(""))
        {
            checkedtextview.setText(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_NO_GROUP));
        } else
        {
            checkedtextview.setText(group.name);
        }
        checkedtextview.setChecked(group.isSelected);
        view1 = view.findViewById(0x7f0902c8);
        if (i == 0)
        {
            if (i == -1 + groups.length)
            {
                view1.setBackgroundResource(0x7f020225);
            } else
            {
                view1.setBackgroundResource(0x7f020226);
            }
        } else
        if (i == -1 + groups.length)
        {
            view1.setBackgroundResource(0x7f020223);
        } else
        {
            view1.setBackgroundResource(0x7f020224);
        }
        view1.setPadding(0, 0, 0, 0);
        return view;
    }

    public void setGroups(Group agroup[])
    {
        groups = agroup;
    }
}
