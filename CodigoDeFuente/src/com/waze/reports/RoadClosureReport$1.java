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
//            RoadClosureReport

class this._cls0
    implements android.view.
{

    final RoadClosureReport this$0;

    public void onClick(View view)
    {
        stop();
        if (RoadClosureReport.access$0(RoadClosureReport.this) == 0)
        {
            RoadClosureReport.access$1(RoadClosureReport.this, -1);
            RoadClosureReport.access$2(RoadClosureReport.this, -1);
            String s1 = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD);
            ((TextView)findViewById(0x7f090034)).setText(s1);
            ((ImageView)findViewById(0x7f09030d)).setImageResource(0x7f0201f7);
            ((TextView)findViewById(0x7f09030f)).setTextColor(0xff000000);
            return;
        } else
        {
            RoadClosureReport.access$1(RoadClosureReport.this, 0);
            String s = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD);
            ((TextView)findViewById(0x7f090034)).setText(s);
            ((ImageView)findViewById(0x7f09030d)).setImageResource(0x7f0201fa);
            ((ImageView)findViewById(0x7f090311)).setImageResource(0x7f0201f7);
            ((ImageView)findViewById(0x7f090315)).setImageResource(0x7f0201f7);
            ((TextView)findViewById(0x7f09030f)).setTextColor(0xff000000);
            ((TextView)findViewById(0x7f090313)).setTextColor(0xff000000);
            ((TextView)findViewById(0x7f090317)).setTextColor(0xff000000);
            return;
        }
    }

    ()
    {
        this$0 = RoadClosureReport.this;
        super();
    }
}
