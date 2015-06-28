// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.pages;

import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;

// Referenced classes of package com.waze.view.pages:
//            PageIndicator

public class CirclePageIndicator extends LinearLayout
    implements PageIndicator, android.support.v4.view.ViewPager.OnPageChangeListener
{

    private int selected;
    private ViewPager viewPager;

    public CirclePageIndicator(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        selected = 0;
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f03002e, this);
    }

    private void setCircles()
    {
        removeAllViewsInLayout();
        if (viewPager != null)
        {
            int i = viewPager.getAdapter().getCount();
            android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
            int j = 0;
            while (j < i) 
            {
                ImageView imageview = new ImageView(getContext());
                imageview.setLayoutParams(layoutparams);
                if (j == selected)
                {
                    imageview.setImageResource(0x7f020296);
                } else
                {
                    imageview.setImageResource(0x7f020295);
                }
                addView(imageview);
                j++;
            }
        }
    }

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
    }

    public void onPageSelected(int i)
    {
        selected = i;
        setCircles();
    }

    public void setViewPager(ViewPager viewpager)
    {
        viewPager = viewpager;
        setCircles();
    }

    public void setViewPager(ViewPager viewpager, int i)
    {
        viewPager = viewpager;
        setCircles();
    }
}
