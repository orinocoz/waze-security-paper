// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.button;


// Referenced classes of package com.waze.view.button:
//            SwipeableButton

class this._cls0
    implements Runnable
{

    final SwipeableButton this$0;

    public void run()
    {
        if (!SwipeableButton.access$0(SwipeableButton.this) && startStopState == 1)
        {
            SwipeableButton.access$1(SwipeableButton.this, 1);
            SwipeableButton.access$2(SwipeableButton.this);
        }
    }

    ()
    {
        this$0 = SwipeableButton.this;
        super();
    }
}
