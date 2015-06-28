// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.voice;

import android.content.Intent;
import android.os.Bundle;
import android.speech.RecognitionListener;
import android.speech.SpeechRecognizer;
import android.util.Log;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.NativeManager;
import java.util.Iterator;
import java.util.List;

public class WazeSpeechRecognizer
{

    private static long callback;
    private static boolean inProgress = false;
    private static SpeechRecognizer recognizer = null;

    public WazeSpeechRecognizer()
    {
    }

    public static void handleResults(List list, float af[])
    {
        Log.d("WAZE", "Waze speech: handleResults");
        internalResults(list, af);
    }

    private static void internalResults(List list, float af[])
    {
        reset();
        if (list != null && list.size() != 0) goto _L2; else goto _L1
_L1:
        Log.d("WAZE", "Waze speech: No results");
        AppService.getNativeManager().asrListenCallback(callback, new String[0], new float[0]);
_L4:
        return;
_L2:
        int i = 0;
        Iterator iterator = list.iterator();
        do
        {
label0:
            {
                if (iterator.hasNext())
                {
                    break label0;
                }
                if (callback != -1L)
                {
                    AppService.getNativeManager().asrListenCallback(callback, list.toArray(), af);
                    return;
                }
            }
            if (true)
            {
                continue;
            }
            String s = (String)iterator.next();
            if (af != null)
            {
                StringBuilder stringbuilder = (new StringBuilder("Voice match: ")).append(s).append(" score: ");
                int j = i + 1;
                Log.d("WAZE", stringbuilder.append(af[i]).toString());
                i = j;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static void reset()
    {
        inProgress = false;
        recognizer = null;
    }

    public static void start(long l, String s)
    {
        callback = l;
        if (inProgress)
        {
            return;
        }
        Log.d("WAZE", "Waze speech: Start");
        inProgress = true;
        if (android.os.Build.VERSION.SDK_INT < 8)
        {
            Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
            intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
            AppService.getMainActivity().startActivityForResult(intent, 1234);
            return;
        } else
        {
            Intent intent1 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
            intent1.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
            intent1.putExtra("calling_package", "com.waze.dictate");
            intent1.putExtra("android.speech.extra.LANGUAGE", s);
            recognizer = SpeechRecognizer.createSpeechRecognizer(AppService.getAppContext());
            RecognitionListener recognitionlistener = new RecognitionListener() {

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
                    WazeSpeechRecognizer.reset();
                }

                public void onEvent(int i, Bundle bundle)
                {
                }

                public void onPartialResults(Bundle bundle)
                {
                    Log.d("WAZE", "Waze speech: Partial Results");
                    WazeSpeechRecognizer.internalResults(bundle.getStringArrayList("results_recognition"), bundle.getFloatArray("confidence_scores"));
                }

                public void onReadyForSpeech(Bundle bundle)
                {
                    Log.d("WAZE", "Waze speech: Ready");
                    AppService.getMainActivity().getLayoutMgr().displayVoiceListening();
                }

                public void onResults(Bundle bundle)
                {
                    Log.d("WAZE", "Waze speech: Results");
                    WazeSpeechRecognizer.internalResults(bundle.getStringArrayList("results_recognition"), bundle.getFloatArray("confidence_scores"));
                }

                public void onRmsChanged(float f)
                {
                }

            };
            recognizer.setRecognitionListener(recognitionlistener);
            AppService.getMainActivity().getLayoutMgr().displayVoiceWait();
            recognizer.startListening(intent1);
            return;
        }
    }

    public static void stop()
    {
        if (recognizer != null && inProgress)
        {
            Log.d("WAZE", "Waze speech: Stop");
            recognizer.cancel();
        }
        reset();
    }



}
