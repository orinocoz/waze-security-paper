// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;

// Referenced classes of package com.waze:
//            SpeechttManagerBase, AppService, Logger

class this._cls0
    implements Runnable
{

    final SpeechttManagerBase this$0;

    public void run()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity != null)
        {
            mainactivity.finishActivity(4096);
            return;
        } else
        {
            Logger.e("Cannot stop speech recognizer. Main activity is not available");
            return;
        }
    }

    ()
    {
        this$0 = SpeechttManagerBase.this;
        super();
    }
}
