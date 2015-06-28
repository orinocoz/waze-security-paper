// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.speech.RecognitionListener;
import android.speech.SpeechRecognizer;
import android.util.Log;
import java.util.ArrayList;

// Referenced classes of package com.waze:
//            SpeechttManagerBase, AppService, Logger, NativeManager

public class SpeechttManager extends SpeechttManagerBase
{
    private final class SpeechttListener
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

        public void onEvent(int i, Bundle bundle)
        {
            NativeManager.Post(i. new Runnable() {

                final SpeechttListener this$1;
                private final int val$eventType_;

                public void run()
                {
                    Logger.w((new StringBuilder("Speech to text event: ")).append(eventType_).toString());
                }

            
            {
                this$1 = final_speechttlistener;
                eventType_ = I.this;
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

        public SpeechttListener(SpeechRecognizer speechrecognizer)
        {
            this$0 = SpeechttManager.this;
            super();
            mRecognizer = speechrecognizer;
        }
    }


    private volatile boolean mExternalRecognizer;
    private volatile SpeechttListener mListener;

    public SpeechttManager()
    {
        mListener = null;
        mExternalRecognizer = true;
    }

    public boolean IsAvailable()
    {
        return SpeechRecognizer.isRecognitionAvailable(AppService.getAppContext());
    }

    protected void Reset()
    {
        mBusy = false;
        mListener = null;
        mExternalRecognizer = true;
    }

    public void Start(SpeechttManagerBase.Callback callback, long l, int i, byte abyte0[], byte abyte1[], int j)
    {
        if (mBusy)
        {
            Logger.w("Cannot start speech recognition - the engine is busy");
            return;
        }
        boolean flag;
        if ((j & 0x10) > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mExternalRecognizer = flag;
        if (mExternalRecognizer)
        {
            super.Start(callback, l, i, abyte0, abyte1, j);
        } else
        {
            final Intent intent = Prepare(abyte0, abyte1, j);
            intent.putExtra("calling_package", AppService.getAppContext().getPackageName());
            AppService.Post(new Runnable() {

                final SpeechttManager this$0;
                private final Intent val$intent;

                public void run()
                {
                    SpeechRecognizer speechrecognizer = SpeechRecognizer.createSpeechRecognizer(AppService.getAppContext());
                    mListener = new SpeechttListener(speechrecognizer);
                    speechrecognizer.setRecognitionListener(mListener);
                    speechrecognizer.startListening(intent);
                }

            
            {
                this$0 = SpeechttManager.this;
                intent = intent1;
                super();
            }
            });
        }
        mBusy = true;
    }

    public void Stop()
    {
        if (!mExternalRecognizer && mListener == null)
        {
            return;
        }
        Log.i("WAZE", "Stopping the recognition service");
        if (mExternalRecognizer)
        {
            super.Stop();
            return;
        } else
        {
            AppService.Post(new Runnable() {

                final SpeechttManager this$0;

                public void run()
                {
                    mListener.getRecognizer().stopListening();
                }

            
            {
                this$0 = SpeechttManager.this;
                super();
            }
            });
            return;
        }
    }


}
