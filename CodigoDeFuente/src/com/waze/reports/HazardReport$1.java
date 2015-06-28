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
//            HazardReport

class this._cls0
    implements android.view.tener
{

    final HazardReport this$0;

    public void onClick(View view)
    {
        if (HazardReport.access$0(HazardReport.this) == 0)
        {
            HazardReport.access$1(HazardReport.this, -1);
            HazardReport.access$2(HazardReport.this, -1);
            String s2 = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD);
            ((TextView)findViewById(0x7f090034)).setText(s2);
            ((ImageView)findViewById(0x7f09030d)).setImageResource(0x7f0201f7);
        } else
        {
            HazardReport.access$1(HazardReport.this, 0);
            String s = nativeManager.getLanguageString(DisplayStrings.DS_ON_ROAD);
            ((TextView)findViewById(0x7f090034)).setText(s);
            ((ImageView)findViewById(0x7f09030d)).setImageResource(0x7f0201fa);
            ((ImageView)findViewById(0x7f090311)).setImageResource(0x7f0201f7);
            ((ImageView)findViewById(0x7f090315)).setImageResource(0x7f0201f7);
            String s1 = nativeManager.getLanguageString(DisplayStrings.DS_HAZARD_ON_ROAD);
            String as[] = {
                nativeManager.getLanguageString(DisplayStrings.DS_OBJECT_ON_ROAD), nativeManager.getLanguageString(DisplayStrings.DS_CONSTRUCTION), nativeManager.getLanguageString(DisplayStrings.DS_POTHOLE), nativeManager.getLanguageString(DisplayStrings.DS_CAR_STOPPED_ON_ROAD), nativeManager.getLanguageString(DisplayStrings.DS_ROADKILL)
            };
            int ai[] = {
                3, 22, 4, 23, 5
            };
            HazardReport.access$3(HazardReport.this, s1, as, ai);
        }
        stop();
    }

    r()
    {
        this$0 = HazardReport.this;
        super();
    }
}
