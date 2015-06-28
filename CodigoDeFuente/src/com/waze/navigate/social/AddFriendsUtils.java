// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.share.ShareUtility;
import com.waze.utils.ImageRepository;

public class AddFriendsUtils
{

    public AddFriendsUtils()
    {
    }

    public static View inflate(Context context, ViewGroup viewgroup)
    {
        return ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f030008, viewgroup, false);
    }

    public static void setNameAndImage(ActivityBase activitybase, View view, String s, String s1)
    {
        ImageView imageview = (ImageView)view.findViewById(0x7f090082);
        TextView textview = (TextView)view.findViewById(0x7f090086);
        TextView textview1 = (TextView)view.findViewById(0x7f090081);
        if (s == null || s.length() == 0)
        {
            textview.setText("");
            imageview.setImageResource(0x7f02011b);
        } else
        {
            textview.setText(s);
            textview1.setVisibility(0);
            textview1.setText(ShareUtility.getInitials(s));
            imageview.setImageDrawable(null);
        }
        ImageRepository.instance.getImage(s1, true, imageview, null, activitybase);
    }
}
