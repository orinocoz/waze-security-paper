// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.widget.ScrollView;

// Referenced classes of package com.waze.reports:
//            EditPlaceFragment

class val.onesSV
    implements Runnable
{

    final EditPlaceFragment this$0;
    private final ScrollView val$onesSV;

    public void run()
    {
        val$onesSV.scrollTo(0, (int)(20F * EditPlaceFragment.access$8(EditPlaceFragment.this)));
    }

    ()
    {
        this$0 = final_editplacefragment;
        val$onesSV = ScrollView.this;
        super();
    }
}
