// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.widget.ScrollView;

// Referenced classes of package com.waze.reports:
//            EditPlaceFragment

class val.sv2
    implements com.waze.animation.easing.r.EasingCallback
{

    final EditPlaceFragment this$0;
    private final ScrollView val$sv;
    private final ScrollView val$sv2;
    private final boolean val$up;

    public void onFinished(double d)
    {
        if (val$up)
        {
            EditPlaceFragment editplacefragment1 = EditPlaceFragment.this;
            EditPlaceFragment.access$21(editplacefragment1, -1 + EditPlaceFragment.access$20(editplacefragment1));
        } else
        {
            EditPlaceFragment editplacefragment = EditPlaceFragment.this;
            EditPlaceFragment.access$21(editplacefragment, 1 + EditPlaceFragment.access$20(editplacefragment));
        }
        EditPlaceFragment.access$22(EditPlaceFragment.this, false);
        EditPlaceFragment.access$23(EditPlaceFragment.this, true);
    }

    public void onStarted(double d)
    {
    }

    public void onValueChanged(double d, double d1)
    {
        int i;
        if (val$up)
        {
            i = (int)((double)(40F * EditPlaceFragment.access$8(EditPlaceFragment.this)) - d);
        } else
        {
            i = (int)d;
        }
        val$sv.scrollTo(0, i);
        if (val$sv2 != null)
        {
            val$sv2.scrollTo(0, i);
        }
    }

    ingManager.EasingCallback()
    {
        this$0 = final_editplacefragment;
        val$up = flag;
        val$sv = scrollview;
        val$sv2 = ScrollView.this;
        super();
    }
}
