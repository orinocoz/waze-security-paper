// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.res.Resources;
import android.graphics.Color;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.user.PersonBase;
import java.util.List;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsUtils, AddFromActivity

public static class _selectedIds extends ArrayAdapter
{

    private NativeManager _nativeManager;
    private SparseBooleanArray _selectedIds;
    private ActivityBase activity;
    private boolean hasMore;
    private LayoutInflater inflater;
    private int mHeaderBg;
    private int mHeaderText;
    private int numSuggested;
    private boolean showStatus;

    private View makeHeader(String s)
    {
        TextView textview = new TextView(activity);
        textview.setText(s);
        textview.setBackgroundColor(mHeaderBg);
        textview.setTextColor(mHeaderText);
        textview.setTextSize(2, 18F);
        float f = activity.getResources().getDisplayMetrics().density;
        int i = (int)(15F * f);
        int j = (int)(5F * f);
        textview.setPadding(i, j, i, j);
        return textview;
    }

    public int getCount()
    {
        int i = super.getCount();
        if (hasMore)
        {
            i += 2;
        }
        return i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (hasMore)
        {
            if (i == 0)
            {
                return makeHeader(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SUGGESTED_FRIENDS));
            }
            if (--i == numSuggested)
            {
                return makeHeader(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_MORE_FRIENDS));
            }
            if (i > numSuggested)
            {
                i--;
            }
        }
        PersonBase personbase = (PersonBase)getItem(i);
        View view1;
        TextView textview;
        CheckBox checkbox;
        if (view == null || (view instanceof TextView))
        {
            view1 = inflater.inflate(0x7f030008, viewgroup, false);
        } else
        {
            view1 = view;
        }
        view1.setTag(personbase);
        AddFriendsUtils.setNameAndImage(activity, view1, personbase.getName(), personbase.getImage());
        textview = (TextView)view1.findViewById(0x7f090087);
        if (!showStatus)
        {
            textview.setVisibility(8);
        } else
        {
            textview.setVisibility(0);
            if (personbase.getIsOnWaze())
            {
                if (personbase.mPhone != null && personbase.mPhone.length() > 0)
                {
                    textview.setText(personbase.mPhone);
                } else
                {
                    textview.setVisibility(8);
                }
            } else
            if (personbase.mPhone != null && personbase.mPhone.length() > 0)
            {
                String s = _nativeManager.getLanguageString(DisplayStrings.DS_INVITE_VIA_PS);
                Object aobj[] = new Object[1];
                aobj[0] = personbase.mPhone;
                textview.setText(String.format(s, aobj));
            } else
            {
                textview.setText(_nativeManager.getLanguageString(DisplayStrings.DS_NOT_ON_WAZE_SEND_INVITE));
            }
        }
        checkbox = (CheckBox)view1.findViewById(0x7f09008f);
        checkbox.setVisibility(0);
        checkbox.setChecked(_selectedIds.get(personbase.getID()));
        view1.findViewById(0x7f090085).setVisibility(8);
        if (personbase instanceof FriendUserData)
        {
            FriendUserData frienduserdata = (FriendUserData)personbase;
            View view2 = view1.findViewById(0x7f09007f);
            int j;
            if (frienduserdata.isOnline)
            {
                j = 0;
            } else
            {
                j = 4;
            }
            view2.setVisibility(j);
        } else
        {
            view1.findViewById(0x7f09007f).setVisibility(4);
        }
        if (personbase.getIsOnWaze())
        {
            view1.findViewById(0x7f09008e).setVisibility(0);
            return view1;
        } else
        {
            view1.findViewById(0x7f09008e).setVisibility(8);
            return view1;
        }
    }

    public void setHeaderColors(int i, int j)
    {
        mHeaderBg = i;
        mHeaderText = j;
    }

    void setSelected(int i)
    {
        _selectedIds.put(i, true);
    }

    void setUnselected(int i)
    {
        _selectedIds.put(i, false);
    }

    public A(ActivityBase activitybase, List list, int i, boolean flag)
    {
        super(activitybase, 0, list);
        mHeaderBg = Color.rgb(147, 196, 211);
        mHeaderText = Color.rgb(47, 74, 83);
        inflater = (LayoutInflater)activitybase.getSystemService("layout_inflater");
        activity = activitybase;
        numSuggested = i;
        boolean flag1;
        if (i > 0 && i < list.size())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        hasMore = flag1;
        showStatus = flag;
        _nativeManager = NativeManager.getInstance();
        _selectedIds = new SparseBooleanArray();
    }
}
