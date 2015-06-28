// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import android.widget.ScrollView;

// Referenced classes of package com.waze.reports:
//            EditPlaceFragment

class val.child
    implements Runnable
{

    final EditPlaceFragment this$0;
    private final View val$child;
    private final ScrollView val$sv;

    public void run()
    {
        val$sv.smoothScrollTo(0, val$child.getTop() - (int)(100F * EditPlaceFragment.access$8(EditPlaceFragment.this)));
    }

    ()
    {
        this$0 = final_editplacefragment;
        val$sv = scrollview;
        val$child = View.this;
        super();
    }
}
