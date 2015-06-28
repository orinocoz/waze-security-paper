// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup;

public class MyPageAdapter extends PagerAdapter
{

    ViewGroup Container;
    int mNumberOfViews;
    View mViews[];

    public MyPageAdapter(int i, View aview[])
    {
        mNumberOfViews = i;
        mViews = aview;
    }

    public void DestroyAllItems()
    {
        int i = 0;
        do
        {
            if (i >= mNumberOfViews)
            {
                mNumberOfViews = 0;
                return;
            }
            destroyItem(Container, i, mViews[i]);
            mViews[i] = null;
            i++;
        } while (true);
    }

    public void destroyItem(ViewGroup viewgroup, int i, Object obj)
    {
        if (obj == null)
        {
            return;
        } else
        {
            ((ViewPager)viewgroup).removeView((View)obj);
            return;
        }
    }

    public void finishUpdate(ViewGroup viewgroup)
    {
        Container = viewgroup;
        super.finishUpdate(viewgroup);
    }

    public int getCount()
    {
        return mNumberOfViews;
    }

    public Object instantiateItem(ViewGroup viewgroup, int i)
    {
        if (mViews[i] == null || mViews[i].getParent() != null)
        {
            return null;
        } else
        {
            ((ViewPager)viewgroup).addView(mViews[i]);
            return mViews[i];
        }
    }

    public boolean isViewFromObject(View view, Object obj)
    {
        return view == obj;
    }

    public Parcelable saveState()
    {
        return super.saveState();
    }
}
