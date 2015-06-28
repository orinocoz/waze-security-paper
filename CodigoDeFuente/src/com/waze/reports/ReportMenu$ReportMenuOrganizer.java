// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Context;
import android.content.res.Resources;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.waze.view.text.AutoResizeTextView;

// Referenced classes of package com.waze.reports:
//            ReportMenu

class _menuSpacing
{

    private static final int ID_BASE = 100;
    final RelativeLayout _container;
    int _curNumOfItems;
    final boolean _isVertical;
    int _lastButton;
    int _lastFirstInLine;
    final int _menuSpacing;
    final int _numLines;
    final ReportMenu this$0;

    void addReportButton(String s, int i, android.view.zer zer)
    {
        int j = 5;
        int k = 1;
        View view = buildReportButton(s, i, zer);
        view.setId(100 + _curNumOfItems);
        int l = (int)(93F * ReportMenu.access$0(ReportMenu.this));
        int i1;
        android.widget.r r;
        if (_isVertical)
        {
            i1 = (int)(93F * ReportMenu.access$0(ReportMenu.this));
        } else
        {
            i1 = (int)(85F * ReportMenu.access$0(ReportMenu.this));
        }
        r = new android.widget.it>(l, i1);
        if (_lastButton == 0)
        {
            float f = ReportMenu.access$0(ReportMenu.this);
            if (_isVertical)
            {
                j = 13;
            }
            r.Margins((int)(f * (float)j), 0, 0, 0);
            _lastFirstInLine = 100 + _curNumOfItems;
        } else
        {
            int j1;
            if (_curNumOfItems % _numLines == 0)
            {
                j1 = k;
            } else
            {
                j1 = 0;
            }
            if (j1 != 0)
            {
                int i2;
                int j2;
                int k2;
                if (!_isVertical)
                {
                    j = 6;
                }
                r.Rule(j, _lastFirstInLine);
                if (_isVertical)
                {
                    i2 = 3;
                } else
                {
                    i2 = k;
                }
                r.Rule(i2, _lastFirstInLine);
                if (_isVertical)
                {
                    j2 = 0;
                } else
                {
                    j2 = _menuSpacing;
                }
                if (_isVertical)
                {
                    k2 = _menuSpacing;
                } else
                {
                    k2 = 0;
                }
                r.Margins(j2, k2, 0, 0);
                _lastFirstInLine = 100 + _curNumOfItems;
            } else
            {
                if (_isVertical)
                {
                    j = 6;
                }
                r.Rule(j, _lastButton);
                int k1;
                int l1;
                if (!_isVertical)
                {
                    k = 3;
                }
                r.Rule(k, _lastButton);
                if (_isVertical)
                {
                    k1 = _menuSpacing;
                } else
                {
                    k1 = 0;
                }
                if (_isVertical)
                {
                    l1 = 0;
                } else
                {
                    l1 = _menuSpacing;
                }
                r.Margins(k1, l1, 0, 0);
            }
        }
        _lastButton = 100 + _curNumOfItems;
        _curNumOfItems = 1 + _curNumOfItems;
        _container.addView(view, r);
    }

    View buildReportButton(String s, int i, android.view.zer zer)
    {
        Context context = getContext();
        int j;
        LinearLayout linearlayout;
        int k;
        ImageView imageview;
        AutoResizeTextView autoresizetextview;
        android.widget.r r;
        if (_isVertical)
        {
            j = 0x7f060019;
        } else
        {
            j = 0x7f06001a;
        }
        linearlayout = new LinearLayout(context, null, j);
        linearlayout.setBackgroundResource(0x7f0201f7);
        linearlayout.setClickable(true);
        linearlayout.setGravity(1);
        linearlayout.setOrientation(1);
        linearlayout.setId(i);
        linearlayout.setOnClickListener(zer);
        k = (int)(5F * ReportMenu.access$0(ReportMenu.this));
        linearlayout.setPadding(k, k, k, k);
        imageview = new ImageView(getContext());
        imageview.setImageResource(i);
        linearlayout.addView(imageview, -2, 0);
        ((android.widget.r.this._cls0)imageview.getLayoutParams()).t = 1.0F;
        autoresizetextview = new AutoResizeTextView(new ContextThemeWrapper(getContext(), 0x7f06001f));
        autoresizetextview.setText(s);
        r = new android.widget.>(-2, -2);
        r.rgins(0, (int)ReportMenu.access$0(ReportMenu.this), 0, 0);
        linearlayout.addView(autoresizetextview, r);
        return linearlayout;
    }

    (RelativeLayout relativelayout, int i, boolean flag)
    {
        this$0 = ReportMenu.this;
        super();
        _curNumOfItems = 0;
        _lastFirstInLine = 0;
        _lastButton = 0;
        _container = relativelayout;
        _numLines = i;
        _isVertical = flag;
        _menuSpacing = (int)getContext().getResources().getDimension(0x7f0b001d);
    }
}
