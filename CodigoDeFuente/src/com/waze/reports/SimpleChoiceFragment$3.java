// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;

// Referenced classes of package com.waze.reports:
//            SimpleChoiceFragment

class mpleChoice
    implements android.view.t._cls3
{

    final SimpleChoiceFragment this$0;
    private final mpleChoice val$choice;
    private final View val$view;

    public void onClick(View view1)
    {
        if (SimpleChoiceFragment.access$1(SimpleChoiceFragment.this) == view1)
        {
            return;
        }
        val$view.findViewById(0x7f09065d).setVisibility(0);
        if (SimpleChoiceFragment.access$1(SimpleChoiceFragment.this) != null)
        {
            SimpleChoiceFragment.access$1(SimpleChoiceFragment.this).findViewById(0x7f09065d).setVisibility(8);
        }
        SimpleChoiceFragment.access$2(SimpleChoiceFragment.this, val$view);
        SimpleChoiceFragment.access$3(SimpleChoiceFragment.this, val$choice);
    }

    mpleChoice()
    {
        this$0 = final_simplechoicefragment;
        val$view = view1;
        val$choice = mpleChoice.this;
        super();
    }
}
