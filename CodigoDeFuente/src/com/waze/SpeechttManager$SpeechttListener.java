// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.os.Bundle;
import android.speech.RecognitionListener;
import android.speech.SpeechRecognizer;
import android.util.Log;
import java.util.ArrayList;

// Referenced classes of package com.waze:
//            Logger, SpeechttManager, NativeManager

private final class mRecognizer
    implements RecognitionListener
{

    private final SpeechRecognizer mRecognizer;
    final SpeechttManager this$0;

    public SpeechRecognizer getRecognizer()
    {
        return mRecognizer;
    }

    public void onBeginningOfSpeech()
    {
        Log.i("WAZE", "Recognizer listener: starting speech");
    }

    public void onBufferReceived(byte abyte0[])
    {
    }

    public void onEndOfSpeech()
    {
        Log.i("WAZE", "Recognizer listener: end of speech");
    }

    public void onError(int i)
    {
        Logger.w((new StringBuilder("Error (")).append(i).append(") is reported while recognition process").toString());
        mRecognizer.destroy();
        Reset();
    }

    public void onEvent(final int eventType_, Bundle bundle)
    {
        NativeManager.Post(new Runnable() {

            final SpeechttManager.SpeechttListener this$1;
            private final int val$eventType_;

            public void run()
            {
                Logger.w((new StringBuilder("Speech to text event: ")).append(eventType_).toString());
            }

            
            {
                this$1 = SpeechttManager.SpeechttListener.this;
                eventType_ = i;
                super();
            }
        });
    }

    public void onPartialResults(Bundle bundle)
    {
        String s = new String();
        ArrayList arraylist = bundle.getStringArrayList("results_recognition");
        int i = 0;
        do
        {
            if (i >= arraylist.size())
            {
                Log.i("WAZE", (new StringBuilder("Recognizer partial result: ")).append(s).toString());
                return;
            }
            s = (new StringBuilder(String.valueOf(s))).append((String)arraylist.get(i)).toString();
            if (i < -1 + arraylist.size())
            {
                s = (new StringBuilder(String.valueOf(s))).append(" ").toString();
            }
            i++;
        } while (true);
    }

    public void onReadyForSpeech(Bundle bundle)
    {
    }

    public void onResults(Bundle bundle)
    {
        ArrayList arraylist = bundle.getStringArrayList("results_recognition");
        ResultsHandler(arraylist);
        mRecognizer.destroy();
    }

    public void onRmsChanged(float f)
    {
    }

    public _cls1.val.eventType_(SpeechRecognizer speechrecognizer)
    {
        this$0 = SpeechttManager.this;
        super();
        mRecognizer = speechrecognizer;
    }
}
