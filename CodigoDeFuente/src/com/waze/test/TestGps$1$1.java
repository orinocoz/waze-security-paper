// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.test;

import android.os.Handler;
import java.util.TimerTask;

// Referenced classes of package com.waze.test:
//            TestGps

class this._cls1
    implements Runnable
{

    final is._cls0 this$1;

    public void run()
    {
        TestGps.access$0(_fld0);
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/test/TestGps$1

/* anonymous class */
    class TestGps._cls1 extends TimerTask
    {

        final TestGps this$0;

        public void run()
        {
            if (mStarted)
            {
                mGpsHandler.post(new TestGps._cls1._cls1());
                return;
            } else
            {
                mGpsHandler.post(new TestGps._cls1._cls2());
                return;
            }
        }


            
            {
                this$0 = TestGps.this;
                super();
            }

        // Unreferenced inner class com/waze/test/TestGps$1$2

/* anonymous class */
        class TestGps._cls1._cls2
            implements Runnable
        {

            final TestGps._cls1 this$1;

            public void run()
            {
                TestGps.access$1(this$0);
            }

                    
                    {
                        this$1 = TestGps._cls1.this;
                        super();
                    }
        }

    }

}
