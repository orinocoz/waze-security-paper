// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.widget.ScrollView;

// Referenced classes of package com.waze.reports:
//            EditPlaceFragment

class val.sv
    implements Runnable
{

    final EditPlaceFragment this$0;
    private final ScrollView val$sv;

    public void run()
    {
        val$sv.scrollTo(0, EditPlaceFragment.access$7(EditPlaceFragment.this));
    }

    ()
    {
        this$0 = final_editplacefragment;
        val$sv = ScrollView.this;
        super();
    }
}
