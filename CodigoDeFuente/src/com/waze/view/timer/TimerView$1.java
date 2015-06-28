// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.timer;

import android.os.Handler;
import android.view.View;
import android.widget.TextView;
import java.util.Date;

// Referenced classes of package com.waze.view.timer:
//            TimerView, TimerCircle

class this._cls0
    implements Runnable
{

    final TimerView this$0;

    public void run()
    {
        long l = System.currentTimeMillis();
        float f = 1.0F - (float)(l - TimerView.access$0(TimerView.this).getTime()) / (1000F * (float)TimerView.access$1(TimerView.this));
        if (f < 0.0F)
        {
            f = 0.0F;
        }
        int i = (int)((long)TimerView.access$1(TimerView.this) - (l - TimerView.access$0(TimerView.this).getTime()) / 1000L);
        if (i <= 0)
        {
            setVisibility(8);
        }
        TimerView.access$2(TimerView.this).setText((new StringBuilder()).append(i).toString());
        TimerView.access$3(TimerView.this).setRatio(f);
        TimerView.access$3(TimerView.this).invalidate();
        if (!shouldStop)
        {
            if (f > 0.0F)
            {
                TimerView.access$4(TimerView.this).postDelayed(this, 125L);
                return;
            } else
            {
                expired = true;
                ((View)getParent()).performClick();
                return;
            }
        } else
        {
            setVisibility(8);
            return;
        }
    }

    ()
    {
        this$0 = TimerView.this;
        super();
    }
}
