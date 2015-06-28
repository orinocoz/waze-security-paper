// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import java.util.ArrayList;

// Referenced classes of package com.waze:
//            Logger, AppService, MsgBox, NativeManager

public class SpeechttManagerBase
{
    public static abstract class Callback
    {

        public final long CONTEXT_NULL;
        public volatile long mCbContext;

        private void run(String s, int i)
        {
            onResults(mCbContext, s, i);
        }

        protected abstract void onResults(long l, String s, int i);


        public Callback()
        {
            CONTEXT_NULL = 0L;
            mCbContext = 0L;
            mCbContext = 0L;
        }

        public Callback(long l)
        {
            CONTEXT_NULL = 0L;
            mCbContext = 0L;
            mCbContext = l;
        }
    }

    protected class OnOkMsgNoService
        implements android.content.DialogInterface.OnClickListener
    {

        final SpeechttManagerBase this$0;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.cancel();
            ResultsHandler(null);
        }

        protected OnOkMsgNoService()
        {
            this$0 = SpeechttManagerBase.this;
            super();
        }
    }


    public static final int SPEECHTT_FLAG_EXTERNAL_RECOGNIZER = 16;
    public static final int SPEECHTT_FLAG_INPUT_CMD = 8;
    public static final int SPEECHTT_FLAG_INPUT_SEARCH = 2;
    public static final int SPEECHTT_FLAG_INPUT_TEXT = 4;
    public static final int SPEECHTT_FLAG_TIMEOUT_ENABLED = 1;
    private static final int SPEECHTT_MAX_RESULTS = 1;
    public static final int SPEECHTT_RES_STATUS_ERROR = 0;
    public static final int SPEECHTT_RES_STATUS_NO_RESULTS = 2;
    public static final int SPEECHTT_RES_STATUS_SUCCESS = 1;
    protected volatile boolean mBusy;
    protected Callback mCallback;

    public SpeechttManagerBase()
    {
        mBusy = false;
        mCallback = null;
    }

    protected String GetModel(int i)
    {
        String s = "free_form";
        if ((i & 2) > 0)
        {
            s = "web_search";
        }
        return s;
    }

    public void InitNativeLayer()
    {
        InitSpeechttManagerNTV();
    }

    protected native void InitSpeechttManagerNTV();

    public boolean IsAvailable()
    {
        return true;
    }

    public void OnResultsExternal(int i, Intent intent)
    {
        if (i == -1)
        {
            ResultsHandler(intent.getStringArrayListExtra("android.speech.extra.RESULTS"));
            return;
        }
        if (i == 0)
        {
            Log.w("WAZE", (new StringBuilder("Recognition is canceled: ")).append(i).toString());
            Logger.w("Recognition process is canceled!");
        } else
        {
            Log.w("WAZE", (new StringBuilder("Error result is reported: ")).append(i).toString());
            Logger.w((new StringBuilder("Not valid result code (")).append(i).append(") is reported while recognition process").toString());
        }
        ResultsHandler(null);
    }

    protected final Intent Prepare(byte abyte0[], byte abyte1[], int i)
    {
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", GetModel(i));
        intent.putExtra("android.speech.extra.MAX_RESULTS", 1);
        if (abyte0 != null)
        {
            intent.putExtra("android.speech.extra.LANGUAGE", new String(abyte0, 0, abyte0.length));
        }
        if (abyte1 != null)
        {
            intent.putExtra("android.speech.extra.PROMPT", new String(abyte1, 0, abyte1.length));
        }
        return intent;
    }

    protected void Reset()
    {
        mBusy = false;
    }

    protected void ResultsHandler(ArrayList arraylist)
    {
        String s;
        int i;
        if (arraylist == null)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        s = new String();
        i = 0;
_L3:
        if (i < arraylist.size()) goto _L2; else goto _L1
_L1:
        int j;
        Log.i("WAZE", (new StringBuilder("Recognizer result: ")).append(s).toString());
        j = 1;
_L4:
        String s1 = s;
        if (mCallback != null)
        {
            mCallback.run(s1, j);
        }
        Reset();
        return;
_L2:
        s = (new StringBuilder(String.valueOf(s))).append((String)arraylist.get(i)).toString();
        if (i < -1 + arraylist.size())
        {
            s = (new StringBuilder(String.valueOf(s))).append(" ").toString();
        }
        i++;
          goto _L3
        Log.i("WAZE", "There are no results...");
        j = 2;
        s = null;
          goto _L4
    }

    protected native void SpeechttManagerCallbackNTV(long l, String s, int i);

    public void Start(Callback callback, long l, int i, byte abyte0[], byte abyte1[], int j)
    {
        if (mBusy)
        {
            Logger.w("Cannot start speech recognition - the engine is busy");
            return;
        } else
        {
            setCallback(callback);
            AppService.Post(new Runnable() {

                final SpeechttManagerBase this$0;
                private final Intent val$intent;

                public void run()
                {
                    MainActivity mainactivity = AppService.getMainActivity();
                    if (mainactivity != null)
                    {
                        try
                        {
                            mainactivity.startActivityForResult(intent, 4096);
                            return;
                        }
                        catch (ActivityNotFoundException activitynotfoundexception)
                        {
                            Logger.e("Error. Speech to text service is not available", activitynotfoundexception);
                        }
                        MsgBox.ShowOk("Error", "Speech to text service is not available", "Ok", new OnOkMsgNoService());
                        return;
                    } else
                    {
                        Logger.e("Cannot start speech recognizer. Main activity is not available");
                        return;
                    }
                }

            
            {
                this$0 = SpeechttManagerBase.this;
                intent = intent1;
                super();
            }
            });
            mBusy = true;
            return;
        }
    }

    public void StartNative(long l, int i, byte abyte0[], byte abyte1[], int j)
    {
        setNativeLayerCallback(l);
        Start(mCallback, l, i, abyte0, abyte1, j);
    }

    public void Stop()
    {
        Log.i("WAZE", "Stopping the recognition service");
        AppService.Post(new Runnable() {

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

            
            {
                this$0 = SpeechttManagerBase.this;
                super();
            }
        });
    }

    public void setCallback(Callback callback)
    {
        mCallback = callback;
    }

    protected void setNativeLayerCallback(long l)
    {
        mCallback = new Callback(l) {

            final SpeechttManagerBase this$0;

            protected void onResults(final long aCbContext, final String aResult, int i)
            {
                NativeManager.Post(i. new Runnable() {

                    final _cls3 this$1;
                    private final long val$aCbContext;
                    private final String val$aResult;
                    private final int val$aStatus;

                    public void run()
                    {
                        SpeechttManagerCallbackNTV(aCbContext, aResult, aStatus);
                    }

            
            {
                this$1 = final__pcls3;
                aCbContext = l;
                aResult = s;
                aStatus = I.this;
                super();
            }
                });
            }


            
            {
                this$0 = SpeechttManagerBase.this;
                super(l);
            }
        };
    }
}
