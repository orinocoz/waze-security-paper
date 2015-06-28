// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.share:
//            EncouragementActivity

class val.type
    implements android.view._cls1
{

    final EncouragementActivity this$0;
    private final int val$type;

    public void onClick(View view)
    {
        EncouragementActivity.access$0(EncouragementActivity.this, true);
        Analytics.log("ENC_POPUP_BUTTON", "TYPE", EncouragementActivity.access$1(EncouragementActivity.this));
        if (val$type == 0 || val$type == 1)
        {
            EncouragementActivity.access$2(EncouragementActivity.this);
        } else
        {
            if (val$type == 2)
            {
                EncouragementActivity.access$3(EncouragementActivity.this);
                return;
            }
            if (val$type == 3)
            {
                EncouragementActivity.access$4(EncouragementActivity.this);
                return;
            }
            if (val$type == 4)
            {
                EncouragementActivity.access$5(EncouragementActivity.this);
                return;
            }
            if (val$type == 5)
            {
                EncouragementActivity.access$6(EncouragementActivity.this);
                return;
            }
            if (val$type == 8)
            {
                EncouragementActivity.access$7(EncouragementActivity.this);
                return;
            }
            if (val$type == 10)
            {
                EncouragementActivity.access$8(EncouragementActivity.this);
                return;
            }
            if (val$type == 11)
            {
                EncouragementActivity.access$9(EncouragementActivity.this);
                return;
            }
            if (val$type == 12)
            {
                EncouragementActivity.access$10(EncouragementActivity.this);
                return;
            }
        }
    }

    ()
    {
        this$0 = final_encouragementactivity;
        val$type = I.this;
        super();
    }
}
