// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.text.Editable;
import android.text.TextWatcher;
import com.waze.ifs.ui.PointsView;
import java.util.ArrayList;

// Referenced classes of package com.waze.reports:
//            AddPlaceNewFragment

private final class <init>
    implements TextWatcher
{

    private String _orig;
    private final int _pts;
    private final PointsView _ptsView;
    private _pts _validator;
    final AddPlaceNewFragment this$0;

    public void afterTextChanged(Editable editable)
    {
        if (_ptsView.isOn())
        {
            AddPlaceNewFragment addplacenewfragment1 = AddPlaceNewFragment.this;
            AddPlaceNewFragment.access$3(addplacenewfragment1, AddPlaceNewFragment.access$2(addplacenewfragment1) - _pts);
        }
        boolean flag = true;
        if (_validator != null)
        {
            flag = _validator._validator(editable.toString());
            _ptsView.setValid(flag);
        }
        boolean flag1;
        boolean flag2;
        boolean flag3;
        if (_orig.contentEquals(editable))
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        if (editable.length() > 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (flag2 && flag1 && flag)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        _ptsView.setIsOn(flag3, flag2, true);
        if (flag3)
        {
            AddPlaceNewFragment addplacenewfragment = AddPlaceNewFragment.this;
            AddPlaceNewFragment.access$3(addplacenewfragment, AddPlaceNewFragment.access$2(addplacenewfragment) + _pts);
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    private (PointsView pointsview, int i, boolean flag,  , String s)
    {
        this$0 = AddPlaceNewFragment.this;
        super();
        _validator = null;
        _ptsView = pointsview;
        _pts = i;
        _orig = s;
        if (_orig == null)
        {
            _orig = "";
        }
        _ptsView.setPoints(i);
        if (flag)
        {
            AddPlaceNewFragment.access$3(AddPlaceNewFragment.this, i + AddPlaceNewFragment.access$2(AddPlaceNewFragment.this));
        }
        _validator = ;
        if ( == null)
        {
            _ptsView.setValid(true);
        } else
        {
            _ptsView.setValid(._ptsView(_orig));
            AddPlaceNewFragment.access$4(AddPlaceNewFragment.this).add(pointsview);
        }
        _ptsView.setIsOn(flag, flag, false);
    }

    _ptsView(PointsView pointsview, int i, boolean flag, _ptsView _pptsview, String s, _ptsView _pptsview1)
    {
        this(pointsview, i, flag, _pptsview, s);
    }
}
