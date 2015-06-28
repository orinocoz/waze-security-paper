// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.speech.SpeechRecognizer;

// Referenced classes of package com.waze:
//            SpeechttManager

class this._cls0
    implements Runnable
{

    final SpeechttManager this$0;

    public void run()
    {
        SpeechttManager.access$1(SpeechttManager.this).getRecognizer().stopListening();
    }

    izer()
    {
        this$0 = SpeechttManager.this;
        super();
    }
}
