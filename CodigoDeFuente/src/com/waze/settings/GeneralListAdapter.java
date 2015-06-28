// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import android.widget.ImageView;

// Referenced classes of package com.waze.settings:
//            SettingsValue

public class GeneralListAdapter extends BaseAdapter
{

    private LayoutInflater inflater;
    private SettingsValue values[];

    public GeneralListAdapter(Context context)
    {
        inflater = LayoutInflater.from(context);
    }

    public int getCount()
    {
        if (values == null)
        {
            return 0;
        } else
        {
            return values.length;
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
        SettingsValue settingsvalue = values[i];
        CheckedTextView checkedtextview = (CheckedTextView)view.findViewById(0x7f0903f3);
        ImageView imageview = (ImageView)view.findViewById(0x7f09063e);
        View view1;
        if (imageview != null && settingsvalue != null && settingsvalue.icon != null)
        {
            imageview.setImageDrawable(settingsvalue.icon);
            imageview.setVisibility(0);
        } else
        {
            imageview.setVisibility(8);
        }
        checkedtextview.setText(settingsvalue.display);
        checkedtextview.setChecked(settingsvalue.isSelected);
        view1 = view.findViewById(0x7f0902c8);
        if (i == 0)
        {
            if (i == -1 + values.length)
            {
                view1.setBackgroundResource(0x7f020220);
            } else
            {
                view1.setBackgroundResource(0x7f020221);
            }
        } else
        if (i == -1 + values.length)
        {
            view1.setBackgroundResource(0x7f02021e);
        } else
        {
            view1.setBackgroundResource(0x7f02021f);
        }
        view1.setPadding(0, 0, 0, 0);
        return view;
    }

    public void setValues(SettingsValue asettingsvalue[])
    {
        values = asettingsvalue;
        notifyDataSetChanged();
    }
}