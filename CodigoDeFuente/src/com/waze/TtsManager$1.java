// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.speech.tts.TextToSpeech;

// Referenced classes of package com.waze:
//            TtsManager, AppService

class >
    implements Runnable
{

    final TtsManager this$0;

    public void run()
    {
        android.content.Context context = AppService.getAppContext();
        TtsManager.access$2(TtsManager.this, new TextToSpeech(context, TtsManager.this));
    }

    tToSpeech()
    {
        this$0 = TtsManager.this;
        super();
    }
}
