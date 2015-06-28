// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;

// Referenced classes of package com.waze:
//            SpeechttManagerBase, AppService, Logger, MsgBox

class val.intent
    implements Runnable
{

    final SpeechttManagerBase this$0;
    private final Intent val$intent;

    public void run()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity != null)
        {
            try
            {
                mainactivity.startActivityForResult(val$intent, 4096);
                return;
            }
            catch (ActivityNotFoundException activitynotfoundexception)
            {
                Logger.e("Error. Speech to text service is not available", activitynotfoundexception);
            }
            MsgBox.ShowOk("Error", "Speech to text service is not available", "Ok", new OkMsgNoService(SpeechttManagerBase.this));
            return;
        } else
        {
            Logger.e("Cannot start speech recognizer. Main activity is not available");
            return;
        }
    }

    dException()
    {
        this$0 = final_speechttmanagerbase;
        val$intent = Intent.this;
        super();
    }
}
