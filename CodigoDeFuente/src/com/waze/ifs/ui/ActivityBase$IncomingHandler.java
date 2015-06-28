// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.waze.ifs.ui:
//            ActivityBase

class this._cls0 extends Handler
{

    final ActivityBase this$0;

    public void handleMessage(Message message)
    {
        if (myHandleMessage(message))
        {
            return;
        } else
        {
            super.handleMessage(message);
            return;
        }
    }

    ()
    {
        this$0 = ActivityBase.this;
        super();
    }
}
