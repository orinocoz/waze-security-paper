// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.text.Editable;
import android.text.TextWatcher;
import com.waze.ifs.ui.PointsView;
import java.util.ArrayList;

// Referenced classes of package com.waze.reports:
//            EditPlaceFragment

private final class <init>
    implements TextWatcher
{

    private String _orig;
    private final int _pts;
    private final PointsView _ptsView;
    private _pts _validator;
    final EditPlaceFragment this$0;

    public void afterTextChanged(Editable editable)
    {
        if (_ptsView.isOn())
        {
            EditPlaceFragment editplacefragment1 = EditPlaceFragment.this;
            EditPlaceFragment.access$5(editplacefragment1, EditPlaceFragment.access$4(editplacefragment1) - _pts);
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
        if (flag1)
        {
            EditPlaceFragment.access$6(EditPlaceFragment.this);
        }
        if (editable.length() > 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        flag3 = false;
        if (flag1)
        {
            flag3 = false;
            if (flag)
            {
                flag3 = true;
            }
        }
        _ptsView.setIsOn(flag3, flag2, true);
        if (flag3)
        {
            EditPlaceFragment editplacefragment = EditPlaceFragment.this;
            EditPlaceFragment.access$5(editplacefragment, EditPlaceFragment.access$4(editplacefragment) + _pts);
        }
        updatePoints();
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    private (PointsView pointsview, int i,  , String s)
    {
        boolean flag = true;
        this$0 = EditPlaceFragment.this;
        super();
        _validator = null;
        _ptsView = pointsview;
        boolean flag1 = false;
        if (s != null)
        {
            boolean flag2 = s.isEmpty();
            flag1 = false;
            if (!flag2)
            {
                flag1 = true;
            }
        }
        _pts = i;
        _orig = s;
        if (s == null)
        {
            _orig = "";
        }
        _validator = ;
        PointsView pointsview1;
        if ( == null)
        {
            _ptsView.setValid(flag);
        } else
        {
            EditPlaceFragment.access$3(EditPlaceFragment.this).add(pointsview);
            _ptsView.setValid(._ptsView(_orig));
        }
        _ptsView.setPoints(i, flag1);
        pointsview1 = _ptsView;
        if (_orig.isEmpty())
        {
            flag = false;
        }
        pointsview1.setIsOn(false, flag, false);
    }

    _orig(PointsView pointsview, int i, _orig _porig, String s, _orig _porig1)
    {
        this(pointsview, i, _porig, s);
    }
}
