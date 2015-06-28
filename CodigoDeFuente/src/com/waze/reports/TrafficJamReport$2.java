// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.reports:
//            TrafficJamReport

class this._cls0
    implements android.view.r
{

    final TrafficJamReport this$0;

    public void onClick(View view)
    {
        if (TrafficJamReport.access$0(TrafficJamReport.this) == 1)
        {
            TrafficJamReport.access$1(TrafficJamReport.this, -1);
            String s1 = nativeManager.getLanguageString(DisplayStrings.DS_TRAFFIC_JAM);
            ((TextView)findViewById(0x7f090034)).setText(s1);
            ((ImageView)findViewById(0x7f09075c)).setImageResource(0x7f0201f7);
        } else
        {
            TrafficJamReport.access$1(TrafficJamReport.this, 1);
            String s = nativeManager.getLanguageString(DisplayStrings.DS_HEAVY_TRAFFIC);
            ((TextView)findViewById(0x7f090034)).setText(s);
            ((ImageView)findViewById(0x7f090758)).setImageResource(0x7f0201f7);
            ((ImageView)findViewById(0x7f09075c)).setImageResource(0x7f0201fa);
            ((ImageView)findViewById(0x7f090760)).setImageResource(0x7f0201f7);
        }
        stop();
    }

    ()
    {
        this$0 = TrafficJamReport.this;
        super();
    }
}
