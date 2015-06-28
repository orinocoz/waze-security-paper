// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.tabs;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class TabBar extends RelativeLayout
{
    public static interface IOnTabClickListener
    {

        public abstract void onClick(int i);
    }


    public static final int TAB_CONTROLLER_TYPE_2_TABS = 0;
    public static final int TAB_CONTROLLER_TYPE_3_TABS = 1;
    public static final int TAB_ID_0 = 0;
    public static final int TAB_ID_1 = 1;
    public static final int TAB_ID_2 = 2;
    private final android.view.View.OnClickListener mOnClickListener;
    IOnTabClickListener mOnTabClickListener;
    private View mSelectedTab;
    private View mTabCenter;
    private View mTabLeft;
    private View mTabRight;
    private int mType;

    public TabBar(Context context)
    {
        super(context);
        mOnClickListener = new android.view.View.OnClickListener() {

            final TabBar this$0;

            public void onClick(View view)
            {
                int i = view.getId();
                setSelected(view);
                if (mOnTabClickListener != null)
                {
                    if (i == 0x7f090712)
                    {
                        mOnTabClickListener.onClick(0);
                    }
                    if (i == 0x7f090717)
                    {
                        mOnTabClickListener.onClick(1);
                    }
                    if (i == 0x7f090718)
                    {
                        mOnTabClickListener.onClick(2);
                    }
                }
            }

            
            {
                this$0 = TabBar.this;
                super();
            }
        };
        mSelectedTab = null;
        mOnTabClickListener = null;
        mTabLeft = null;
        mTabCenter = null;
        mTabRight = null;
        init(context, 1);
    }

    public TabBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mOnClickListener = new _cls1();
        mSelectedTab = null;
        mOnTabClickListener = null;
        mTabLeft = null;
        mTabCenter = null;
        mTabRight = null;
        init(context, context.obtainStyledAttributes(attributeset, com.waze.R.styleable.TabController).getInteger(0, 1));
    }

    private View getTab(int i)
    {
        if (i == 0)
        {
            return mTabLeft;
        }
        if (i == 1)
        {
            return mTabCenter;
        }
        if (i == 2)
        {
            return mTabRight;
        } else
        {
            return null;
        }
    }

    private void init(Context context, int i)
    {
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f030114, this);
        setPadding(0, 0, 0, 0);
        mType = i;
        mTabLeft = findViewById(0x7f090712);
        mTabCenter = findViewById(0x7f090717);
        mTabRight = findViewById(0x7f090718);
        mTabLeft.setOnClickListener(mOnClickListener);
        mTabCenter.setOnClickListener(mOnClickListener);
        mTabRight.setOnClickListener(mOnClickListener);
        if (mType == 0)
        {
            mTabRight.setVisibility(8);
        }
    }

    private void setSelected(View view)
    {
        if (mSelectedTab != null)
        {
            mSelectedTab.setBackgroundResource(0x7f0203d9);
            mSelectedTab.setPadding(0, 0, 0, 0);
        }
        view.setBackgroundResource(0x7f0203db);
        view.setPadding(0, 0, 0, 0);
        mSelectedTab = view;
    }

    public void setAltRoutesTabs()
    {
        int i = 0;
        do
        {
            if (i >= 3)
            {
                return;
            }
            getTab(i).findViewById(0x7f090714).setVisibility(0);
            i++;
        } while (true);
    }

    public void setEnabled(int i, boolean flag)
    {
        int j = getResources().getColor(0x7f080028);
        View view = getTab(i);
        view.setClickable(flag);
        ((TextView)view.findViewById(0x7f090713)).setTextColor(j);
    }

    public void setListener(IOnTabClickListener iontabclicklistener)
    {
        mOnTabClickListener = iontabclicklistener;
    }

    public void setNumber(int i, int j)
    {
        ((TextView)getTab(i).findViewById(0x7f090716)).setText((new StringBuilder()).append(j).toString());
    }

    public void setSelected(int i)
    {
        setSelected(getTab(i));
    }

    public void setText(int i, String s)
    {
        ((TextView)getTab(i).findViewById(0x7f090713)).setText(s);
    }

    public void showNumber(int i, boolean flag)
    {
        View view = getTab(i);
        if (flag)
        {
            view.findViewById(0x7f090715).setVisibility(0);
            return;
        } else
        {
            view.findViewById(0x7f090715).setVisibility(8);
            return;
        }
    }

}
