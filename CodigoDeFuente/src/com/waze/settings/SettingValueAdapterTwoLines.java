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
import android.widget.TextView;
import com.waze.voice.VoiceData;

public class SettingValueAdapterTwoLines extends BaseAdapter
{

    private LayoutInflater inflater;
    private VoiceData values[];

    public SettingValueAdapterTwoLines(Context context)
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
        if (values == null)
        {
            return null;
        } else
        {
            return values[i];
        }
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public VoiceData[] getValues()
    {
        return values;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = inflater.inflate(0x7f0300ee, null);
        }
        VoiceData voicedata = values[i];
        CheckedTextView checkedtextview = (CheckedTextView)view.findViewById(0x7f0903f3);
        TextView textview = (TextView)view.findViewById(0x7f09063f);
        View view1;
        if (voicedata.SecondLine == null || voicedata.SecondLine.equals(""))
        {
            textview.setVisibility(8);
        } else
        {
            textview.setVisibility(0);
            textview.setText(voicedata.SecondLine);
        }
        checkedtextview.setText(voicedata.Name);
        checkedtextview.setChecked(voicedata.bIsSelected);
        view1 = view.findViewById(0x7f0902c8);
        if (i == 0)
        {
            if (i == -1 + values.length)
            {
                view1.setBackgroundResource(0x7f020225);
            } else
            {
                view1.setBackgroundResource(0x7f020226);
            }
        } else
        if (i == -1 + values.length)
        {
            view1.setBackgroundResource(0x7f020223);
        } else
        {
            view1.setBackgroundResource(0x7f020224);
        }
        view1.setPadding(0, 0, 0, 0);
        return view;
    }

    public void setValues(VoiceData avoicedata[])
    {
        values = avoicedata;
        notifyDataSetChanged();
    }
}
