// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.test;

import android.os.Handler;
import java.util.TimerTask;

// Referenced classes of package com.waze.test:
//            TestGps

class t> extends TimerTask
{

    final TestGps this$0;

    public void run()
    {
        if (mStarted)
        {
            mGpsHandler.post(new Runnable() {

                final TestGps._cls1 this$1;

                public void run()
                {
                    TestGps.access$0(this$0);
                }

            
            {
                this$1 = TestGps._cls1.this;
                super();
            }
            });
            return;
        } else
        {
            mGpsHandler.post(new Runnable() {

                final TestGps._cls1 this$1;

                public void run()
                {
                    TestGps.access$1(this$0);
                }

            
            {
                this$1 = TestGps._cls1.this;
                super();
            }
            });
            return;
        }
    }


    _cls2.this._cls1()
    {
        this$0 = TestGps.this;
        super();
    }
}
