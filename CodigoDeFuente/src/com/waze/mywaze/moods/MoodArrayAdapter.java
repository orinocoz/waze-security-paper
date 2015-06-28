// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.moods;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.MoodManager;

// Referenced classes of package com.waze.mywaze.moods:
//            MoodItem

public class MoodArrayAdapter extends ArrayAdapter
{

    private MoodManager moodManager;

    public MoodArrayAdapter(Context context, int i, MoodItem amooditem[])
    {
        super(context, i, amooditem);
        moodManager = MoodManager.getInstance();
    }

    private View getItemView(MoodItem mooditem, View view, ViewGroup viewgroup)
    {
        View view1 = view;
        if (view1 == null || view1.getId() != 0x7f090400)
        {
            view1 = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030087, viewgroup, false);
        }
        ((ImageView)view1.findViewById(0x7f090402)).setImageDrawable(mooditem.image);
        CheckedTextView checkedtextview = (CheckedTextView)view1.findViewById(0x7f090403);
        checkedtextview.setText(mooditem.caption);
        checkedtextview.setChecked(mooditem.mood.equals(moodManager.getWazerMood()));
        Resources resources = getContext().getResources();
        int i;
        View view2;
        if (mooditem.enabled)
        {
            i = 0x7f080023;
        } else
        {
            i = 0x7f080029;
        }
        checkedtextview.setTextColor(resources.getColor(i));
        view2 = view1.findViewById(0x7f090401);
        if (mooditem.last)
        {
            if (mooditem.first)
            {
                view2.setBackgroundResource(0x7f020225);
            } else
            {
                view2.setBackgroundResource(0x7f020223);
            }
        } else
        if (mooditem.first)
        {
            view2.setBackgroundResource(0x7f020226);
        } else
        {
            view2.setBackgroundResource(0x7f020224);
        }
        view2.setPadding(0, 0, 0, 0);
        return view1;
    }

    private View getTitleView(String s, View view, ViewGroup viewgroup)
    {
        View view1 = view;
        if (view1 == null || view1.getId() != 0x7f090404)
        {
            view1 = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030088, viewgroup, false);
        }
        ((TextView)view1.findViewById(0x7f090405)).setText(s);
        return view1;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        Log.d("WAZE", (new StringBuilder("Getting mood view for item no.")).append(i).toString());
        MoodItem mooditem = (MoodItem)getItem(i);
        Log.d("WAZE", (new StringBuilder("Item is ")).append(mooditem.caption).toString());
        if (mooditem.title)
        {
            return getTitleView(mooditem.caption, view, viewgroup);
        } else
        {
            return getItemView(mooditem, view, viewgroup);
        }
    }

    public boolean isEnabled(int i)
    {
        return ((MoodItem)getItem(i)).enabled;
    }
}
