// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.button;

import android.os.Handler;
import android.widget.SeekBar;

// Referenced classes of package com.waze.view.button:
//            SwipeableButton

class this._cls0
    implements android.widget.hangeListener
{

    final SwipeableButton this$0;

    public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
    {
        if (flag)
        {
            boolean flag1;
            if (lastValidValue == 0 && i == 100)
            {
                seekbar.setProgress(0);
                flag1 = true;
            } else
            {
                lastValidValue = i;
                flag1 = false;
            }
            if (!flag1 && i > 10)
            {
                float f = (float)Math.max(0, 60 - i) / 60F;
                SwipeableButton.access$11(SwipeableButton.this, f);
                SwipeableButton.access$1(SwipeableButton.this, 1);
                if (!SwipeableButton.access$0(SwipeableButton.this))
                {
                    SwipeableButton.access$2(SwipeableButton.this);
                    return;
                }
            }
        }
    }

    public void onStartTrackingTouch(SeekBar seekbar)
    {
        lastValidValue = 0;
        startStopState = 1;
        SwipeableButton.access$9(SwipeableButton.this);
        handler.postDelayed(SwipeableButton.access$10(SwipeableButton.this), 300L);
    }

    public void onStopTrackingTouch(SeekBar seekbar)
    {
        if (startStopState == 1)
        {
            if (SwipeableButton.access$3(SwipeableButton.this).getProgress() == 100)
            {
                handler.postDelayed(SwipeableButton.access$6(SwipeableButton.this), 1000L);
            } else
            {
                handler.postDelayed(SwipeableButton.access$6(SwipeableButton.this), 0L);
            }
        } else
        {
            SwipeableButton.access$4(SwipeableButton.this);
        }
        if (SwipeableButton.access$7(SwipeableButton.this) == 0 && SwipeableButton.access$8(SwipeableButton.this) != null)
        {
            SwipeableButton.access$8(SwipeableButton.this).onClick();
            startStopState = 0;
        }
        SwipeableButton.access$1(SwipeableButton.this, 0);
        if (SwipeableButton.access$3(SwipeableButton.this).getProgress() == 100 && SwipeableButton.access$8(SwipeableButton.this) != null)
        {
            SwipeableButton.access$8(SwipeableButton.this).onSwipe();
        }
    }

    ipeableButtonListener()
    {
        this$0 = SwipeableButton.this;
        super();
    }
}
