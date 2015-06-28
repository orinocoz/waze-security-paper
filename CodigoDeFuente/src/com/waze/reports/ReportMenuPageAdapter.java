// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Context;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;

// Referenced classes of package com.waze.reports:
//            ReportMenu1, ReportMenu2, ReportMenu

public class ReportMenuPageAdapter extends PagerAdapter
{

    private Context context;
    private ReportMenu reportMenu;

    public ReportMenuPageAdapter(Context context1, ReportMenu reportmenu)
    {
        context = context1;
        reportMenu = reportmenu;
    }

    public void destroyItem(View view, int i, Object obj)
    {
    }

    public void finishUpdate(View view)
    {
    }

    public int getCount()
    {
        return 2;
    }

    public Object instantiateItem(View view, int i)
    {
        Object obj;
        if (i == 0)
        {
            obj = new ReportMenu1(context, reportMenu);
        } else
        {
            obj = new ReportMenu2(context, reportMenu);
        }
        ((ViewPager)view).addView(((View) (obj)), i);
        view.invalidate();
        return obj;
    }

    public boolean isViewFromObject(View view, Object obj)
    {
        return view == obj;
    }

    public void restoreState(Parcelable parcelable, ClassLoader classloader)
    {
    }

    public Parcelable saveState()
    {
        return null;
    }

    public void startUpdate(View view)
    {
    }
}
