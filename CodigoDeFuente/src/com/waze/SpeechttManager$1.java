// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import android.speech.SpeechRecognizer;

// Referenced classes of package com.waze:
//            SpeechttManager, AppService

class val.intent
    implements Runnable
{

    final SpeechttManager this$0;
    private final Intent val$intent;

    public void run()
    {
        SpeechRecognizer speechrecognizer = SpeechRecognizer.createSpeechRecognizer(AppService.getAppContext());
        SpeechttManager.access$0(SpeechttManager.this, new eechttListener(SpeechttManager.this, speechrecognizer));
        speechrecognizer.setRecognitionListener(SpeechttManager.access$1(SpeechttManager.this));
        speechrecognizer.startListening(val$intent);
    }

    eechttListener()
    {
        this$0 = final_speechttmanager;
        val$intent = Intent.this;
        super();
    }
}
