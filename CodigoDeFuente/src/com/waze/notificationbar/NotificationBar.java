// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.notificationbar;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class NotificationBar
{

    private static Context mContext = null;
    private boolean mBarEnabled;
    private int mType;
    private View mView;

    public NotificationBar(View view, Context context)
    {
        mBarEnabled = true;
        mType = 0;
        mView = view;
        mContext = context;
    }

    private void animateIn()
    {
        mView.setVisibility(0);
    }

    private void animateOut()
    {
        mView.setVisibility(8);
    }

    private void hideNow()
    {
        mView.setVisibility(8);
    }

    private void setIcon(String s)
    {
        ImageView imageview = (ImageView)mView.findViewById(0x7f090239);
        if (s != null && mType != 2)
        {
            imageview.setImageResource(getResourceId(mContext, s));
            return;
        } else
        {
            imageview.setVisibility(8);
            return;
        }
    }

    private void setMessage(String s)
    {
        if (s != null)
        {
            if (mType == 2)
            {
                mView.findViewById(0x7f0904bf).setBackgroundColor(Color.rgb(0, 92, 177));
            } else
            {
                mView.findViewById(0x7f0904bf).setBackgroundResource(0x7f02028a);
            }
            ((TextView)mView.findViewById(0x7f090020)).setText(s);
        }
    }

    public int getResourceId(Context context, String s)
    {
        String s1 = (new StringBuilder("drawable/")).append(s.replace("-", "_").toLowerCase()).toString();
        return context.getResources().getIdentifier(s1, null, context.getPackageName());
    }

    public void setIsEnabled(boolean flag)
    {
        if (flag == mBarEnabled)
        {
            return;
        }
        mBarEnabled = flag;
        if (flag)
        {
            animateIn();
            return;
        } else
        {
            hideNow();
            return;
        }
    }

    public void showMessage(String s, String s1, int i)
    {
        mType = i;
        setMessage(s);
        setIcon(s1);
        if (!mBarEnabled)
        {
            return;
        }
        if (s == null)
        {
            animateOut();
            return;
        } else
        {
            animateIn();
            return;
        }
    }

}
