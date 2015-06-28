// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.button;

import android.os.Handler;
import android.widget.SeekBar;

// Referenced classes of package com.waze.view.button:
//            SwipeableButton

class this._cls0
    implements Runnable
{

    final SwipeableButton this$0;

    public void run()
    {
        int i = -10 + SwipeableButton.access$3(SwipeableButton.this).getProgress();
        if (i <= 0)
        {
            SwipeableButton.access$4(SwipeableButton.this);
            SwipeableButton.access$3(SwipeableButton.this).setProgress(0);
            boolean flag = SwipeableButton.access$0(SwipeableButton.this);
            i = 0;
            if (flag)
            {
                int j = startStopState;
                i = 0;
                if (j == 1)
                {
                    startStopState = 0;
                    SwipeableButton.access$5(SwipeableButton.this);
                }
            }
        } else
        {
            handler.postDelayed(this, 10L);
        }
        SwipeableButton.access$3(SwipeableButton.this).setProgress(i);
    }

    ()
    {
        this$0 = SwipeableButton.this;
        super();
    }
}
