// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
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
        String s = nativeManager.getLanguageString(DisplayStrings.DS_DURATION);
        String as[] = {
            nativeManager.getLanguageString(DisplayStrings.DS_UNKNOWN), nativeManager.getLanguageString(DisplayStrings.DS_LESS_THANN_AN_HOUR), nativeManager.getLanguageString(DisplayStrings.DS_SEVERAL_HOURS), nativeManager.getLanguageString(DisplayStrings.DS_ALL_DAY), nativeManager.getLanguageString(DisplayStrings.DS_SEVERAL_DAYS), nativeManager.getLanguageString(DisplayStrings.DS_LONG_TERM)
        };
        int ai[] = new int[6];
        ai[1] = 1;
        ai[2] = 2;
        ai[3] = 3;
        ai[4] = 4;
        ai[5] = 5;
        RoadClosureReport.access$3(RoadClosureReport.this, s, as, ai);
    }

    ()
    {
        this$0 = RoadClosureReport.this;
        super();
    }
}
