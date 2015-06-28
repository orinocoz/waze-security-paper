// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;

public class ObservableScrollView extends ScrollView
{
    public static interface OnScrollListener
    {

        public abstract void onScrollChanged(ObservableScrollView observablescrollview, int i, int j, int k, int l);
    }


    boolean mDisallowIntercept;
    private OnScrollListener scrollViewListener;

    public ObservableScrollView(Context context)
    {
        super(context);
        mDisallowIntercept = false;
        scrollViewListener = null;
    }

    public ObservableScrollView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mDisallowIntercept = false;
        scrollViewListener = null;
    }

    public ObservableScrollView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mDisallowIntercept = false;
        scrollViewListener = null;
    }

    protected void onScrollChanged(int i, int j, int k, int l)
    {
        super.onScrollChanged(i, j, k, l);
        if (scrollViewListener != null)
        {
            scrollViewListener.onScrollChanged(this, i, j, k, l);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (mDisallowIntercept)
        {
            mDisallowIntercept = false;
            return false;
        } else
        {
            return super.onTouchEvent(motionevent);
        }
    }

    public void requestDisallowInterceptTouchEvent(boolean flag)
    {
        mDisallowIntercept = flag;
        super.requestDisallowInterceptTouchEvent(flag);
    }

    public void setOnScrollListener(OnScrollListener onscrolllistener)
    {
        scrollViewListener = onscrolllistener;
    }
}
