// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;
import java.util.HashMap;

// Referenced classes of package com.waze:
//            TtsManager, Logger

private final class <init>
    implements android.speech.tts.ner
{

    final TtsManager this$0;

    public void onUtteranceCompleted(String s)
    {
        Log.w("WAZE", (new StringBuilder("Request completed for ")).append(s).toString());
        Long long1 = (Long)TtsManager.access$0(TtsManager.this).get(s);
        if (long1 == null)
        {
            Logger.ee((new StringBuilder("WazeTttManager Error. There is no request for ")).append(s).toString());
        }
        TtsManager.access$1(TtsManager.this, long1.longValue(), 4);
    }

    private letedListener()
    {
        this$0 = TtsManager.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
