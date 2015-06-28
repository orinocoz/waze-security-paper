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
//            AccidentReport

class this._cls0
    implements android.view.ner
{

    final AccidentReport this$0;

    public void onClick(View view)
    {
        if (AccidentReport.access$0(AccidentReport.this) == 0)
        {
            AccidentReport.access$1(AccidentReport.this, -1);
            String s1 = nativeManager.getLanguageString(DisplayStrings.DS_ACCIDENT);
            ((TextView)findViewById(0x7f090034)).setText(s1);
            ((ImageView)findViewById(0x7f090037)).setImageResource(0x7f0201f7);
        } else
        {
            AccidentReport.access$1(AccidentReport.this, 0);
            String s = nativeManager.getLanguageString(DisplayStrings.DS_MINOR_ACCIDENT);
            ((TextView)findViewById(0x7f090034)).setText(s);
            ((ImageView)findViewById(0x7f090037)).setImageResource(0x7f0201fa);
            ((ImageView)findViewById(0x7f09003b)).setImageResource(0x7f0201f7);
        }
        stop();
    }

    ()
    {
        this$0 = AccidentReport.this;
        super();
    }
}
