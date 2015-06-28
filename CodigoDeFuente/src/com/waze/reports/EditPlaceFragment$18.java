// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.widget.ScrollView;

// Referenced classes of package com.waze.reports:
//            EditPlaceFragment

class val.tensSV
    implements Runnable
{

    final EditPlaceFragment this$0;
    private final ScrollView val$tensSV;

    public void run()
    {
        val$tensSV.scrollTo(0, (int)(20F * EditPlaceFragment.access$8(EditPlaceFragment.this)));
    }

    ()
    {
        this$0 = final_editplacefragment;
        val$tensSV = ScrollView.this;
        super();
    }
}
