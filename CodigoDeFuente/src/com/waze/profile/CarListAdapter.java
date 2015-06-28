// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ResManager;

public class CarListAdapter extends ArrayAdapter
{

    private NativeManager nativeManager;
    private String selection;

    public CarListAdapter(Context context, int i, String as[], String s)
    {
        super(context, i, as);
        selection = s;
        nativeManager = AppService.getNativeManager();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1 = view;
        if (view1 == null)
        {
            view1 = ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f03002a, viewgroup, false);
        }
        View view2 = view1.findViewById(0x7f0901f9);
        View view3 = view1.findViewById(0x7f0901f8);
        View view4 = view1.findViewById(0x7f0901fc);
        CheckedTextView checkedtextview;
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
        ((ImageView)view1.findViewById(0x7f0901fa)).setImageDrawable(ResManager.GetSkinDrawable((new StringBuilder("cars/")).append((String)getItem(i)).append(".bin").toString()));
        checkedtextview = (CheckedTextView)view1.findViewById(0x7f0901fb);
        checkedtextview.setText(nativeManager.getLanguageString((new StringBuilder(String.valueOf((String)getItem(i)))).append(".png").toString()));
        checkedtextview.setChecked(selection.equals(getItem(i)));
        return view1;
    }

    public void setSelection(String s)
    {
        selection = s;
        notifyDataSetChanged();
    }
}
