// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.settings.SettingsTitleText;
import com.waze.strings.DisplayStrings;
import com.waze.user.PersonBase;
import java.util.List;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsUtils, EditFriendsActivity

private class _numToAddBack extends ArrayAdapter
{

    private ActivityBase _activity;
    private LayoutInflater _inflater;
    private int _numToAddBack;
    private int _numToRemove;
    final EditFriendsActivity this$0;

    private View makeFooter(String s)
    {
        TextView textview = new TextView(_activity);
        textview.setTextAppearance(_activity, 0x7f060049);
        textview.setText(s);
        textview.setBackgroundColor(_activity.getResources().getColor(0x7f080043));
        textview.setTextSize(2, 14F);
        textview.setTypeface(Typeface.DEFAULT, 0);
        float f = _activity.getResources().getDisplayMetrics().density;
        int i = (int)(15F * f);
        int j = (int)(5F * f);
        textview.setPadding(i, j, i, j);
        return textview;
    }

    private View makeHeader(String s)
    {
        SettingsTitleText settingstitletext = new SettingsTitleText(_activity, null);
        settingstitletext.setText(s);
        settingstitletext.setBackgroundColor(_activity.getResources().getColor(0x7f080043));
        int i = (int)(5F * _activity.getResources().getDisplayMetrics().density);
        settingstitletext.setPadding(0, i, 0, i);
        return settingstitletext;
    }

    public int getCount()
    {
        int i = super.getCount();
        if (_numToAddBack > 0)
        {
            return i + 3;
        } else
        {
            return i + 1;
        }
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (i == 0)
        {
            return makeFooter(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_FRIENDS_SEE_EACH_OTHER));
        }
        int j = i - 1;
        int k = _numToAddBack;
        boolean flag = false;
        if (k > 0)
        {
            if (j == _numToRemove && _numToAddBack > 0)
            {
                return makeHeader(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_REMOVED_FRIENDS));
            }
            int l = _numToRemove;
            flag = false;
            if (j > l)
            {
                flag = true;
                j--;
            }
            if (j == _numToRemove + _numToAddBack)
            {
                return makeFooter(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ADD_BACK_FRIENDS));
            }
        }
        final PersonBase p = (PersonBase)getItem(j);
        View view1;
        if (view == null || isHeader(view))
        {
            view1 = _inflater.inflate(0x7f030008, null);
        } else
        {
            view1 = view;
        }
        view1.setTag(p);
        AddFriendsUtils.setNameAndImage(_activity, view1, p.getName(), p.getImage());
        if (flag)
        {
            view1.findViewById(0x7f090089).setVisibility(8);
            view1.findViewById(0x7f09008a).setVisibility(0);
            view1.findViewById(0x7f09008a).setOnClickListener(new android.view.View.OnClickListener() {

                final EditFriendsActivity.PersonArrayAdapter this$1;
                private final PersonBase val$p;

                public void onClick(View view2)
                {
                    EditFriendsActivity.access$0(this$0, p);
                }

            
            {
                this$1 = EditFriendsActivity.PersonArrayAdapter.this;
                p = personbase;
                super();
            }
            });
        } else
        {
            view1.findViewById(0x7f09008a).setVisibility(8);
            view1.findViewById(0x7f090089).setVisibility(0);
            view1.findViewById(0x7f090089).setOnClickListener(new android.view.View.OnClickListener() {

                final EditFriendsActivity.PersonArrayAdapter this$1;
                private final PersonBase val$p;

                public void onClick(View view2)
                {
                    EditFriendsActivity.access$1(this$0, p);
                }

            
            {
                this$1 = EditFriendsActivity.PersonArrayAdapter.this;
                p = personbase;
                super();
            }
            });
        }
        view1.findViewById(0x7f09007f).setVisibility(4);
        return view1;
    }

    boolean isHeader(View view)
    {
        return (view instanceof TextView) || (view instanceof SettingsTitleText);
    }


    public _cls2.val.p(ActivityBase activitybase, List list, int i, int j)
    {
        this$0 = EditFriendsActivity.this;
        super(activitybase, 0, list);
        _inflater = (LayoutInflater)activitybase.getSystemService("layout_inflater");
        _activity = activitybase;
        _numToRemove = i;
        _numToAddBack = j;
    }
}
