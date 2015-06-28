// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import android.view.ViewGroup;
import com.waze.settings.SettingsTitleText;
import java.util.ArrayList;

// Referenced classes of package com.waze.reports:
//            EditOpeningHoursFragment, OpeningHours

class val.oh
    implements android.view.t._cls6
{

    final EditOpeningHoursFragment this$0;
    private final View val$newLine;
    private final OpeningHours val$oh;

    public void onClick(View view)
    {
        EditOpeningHoursFragment.access$5(EditOpeningHoursFragment.this).removeView(val$newLine);
        EditOpeningHoursFragment.access$0(EditOpeningHoursFragment.this).remove(val$oh);
        SettingsTitleText settingstitletext = EditOpeningHoursFragment.access$6(EditOpeningHoursFragment.this);
        byte byte0;
        if (EditOpeningHoursFragment.access$0(EditOpeningHoursFragment.this).isEmpty())
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        settingstitletext.setVisibility(byte0);
    }

    ()
    {
        this$0 = final_editopeninghoursfragment;
        val$newLine = view;
        val$oh = OpeningHours.this;
        super();
    }
}
