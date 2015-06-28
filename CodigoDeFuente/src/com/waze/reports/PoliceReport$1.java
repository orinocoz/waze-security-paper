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
//            PoliceReport

class this._cls0
    implements android.view.tener
{

    final PoliceReport this$0;

    public void onClick(View view)
    {
        if (PoliceReport.access$0(PoliceReport.this) == 1)
        {
            PoliceReport.access$1(PoliceReport.this, -1);
            String s1 = nativeManager.getLanguageString(DisplayStrings.DS_POLICE);
            ((TextView)findViewById(0x7f090034)).setText(s1);
            ((ImageView)findViewById(0x7f090543)).setImageResource(0x7f0201f7);
        } else
        {
            PoliceReport.access$1(PoliceReport.this, 1);
            String s;
            if (NativeManager.getInstance().isEnforcementPoliceEnabledNTV() == 2)
            {
                s = nativeManager.getLanguageString(DisplayStrings.DS_SPEED_TRAP);
            } else
            {
                s = nativeManager.getLanguageString(DisplayStrings.DS_POLICE);
            }
            ((TextView)findViewById(0x7f090034)).setText(s);
            ((ImageView)findViewById(0x7f090543)).setImageResource(0x7f0201fa);
            ((ImageView)findViewById(0x7f090547)).setImageResource(0x7f0201f7);
        }
        stop();
    }

    r()
    {
        this$0 = PoliceReport.this;
        super();
    }
}
