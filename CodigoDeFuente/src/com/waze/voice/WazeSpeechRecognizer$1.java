// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.voice;

import android.os.Bundle;
import android.speech.RecognitionListener;
import android.util.Log;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;

// Referenced classes of package com.waze.voice:
//            WazeSpeechRecognizer

class 
    implements RecognitionListener
{

    public void onBeginningOfSpeech()
    {
        Log.d("WAZE", "Waze speech: Begin");
    }

    public void onBufferReceived(byte abyte0[])
    {
    }

    public void onEndOfSpeech()
    {
        Log.d("WAZE", "Waze speech: End");
    }

    public void onError(int i)
    {
        Log.d("WAZE", (new StringBuilder("Waze speech: Error ")).append(i).toString());
        if (i == 2 || i == 1)
        {
            AppService.getMainActivity().getLayoutMgr().displayVoiceError();
        } else
        {
            WazeSpeechRecognizer.handleResults(null, null);
        }
        WazeSpeechRecognizer.access$1();
    }

    public void onEvent(int i, Bundle bundle)
    {
    }

    public void onPartialResults(Bundle bundle)
    {
        Log.d("WAZE", "Waze speech: Partial Results");
        WazeSpeechRecognizer.access$0(bundle.getStringArrayList("results_recognition"), bundle.getFloatArray("confidence_scores"));
    }

    public void onReadyForSpeech(Bundle bundle)
    {
        Log.d("WAZE", "Waze speech: Ready");
        AppService.getMainActivity().getLayoutMgr().displayVoiceListening();
    }

    public void onResults(Bundle bundle)
    {
        Log.d("WAZE", "Waze speech: Results");
        WazeSpeechRecognizer.access$0(bundle.getStringArrayList("results_recognition"), bundle.getFloatArray("confidence_scores"));
    }

    public void onRmsChanged(float f)
    {
    }

    ()
    {
    }
}
