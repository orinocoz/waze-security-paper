// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.content.Intent;
import android.speech.tts.TextToSpeech;
import android.util.Log;
import java.util.HashMap;
import java.util.Locale;

// Referenced classes of package com.waze:
//            AppService, Logger, NativeManager

public final class TtsManager
    implements android.speech.tts.TextToSpeech.OnInitListener
{
    private final class UtteranceCompletedListener
        implements android.speech.tts.TextToSpeech.OnUtteranceCompletedListener
    {

        final TtsManager this$0;

        public void onUtteranceCompleted(String s)
        {
            Log.w("WAZE", (new StringBuilder("Request completed for ")).append(s).toString());
            Long long1 = (Long)mRequestMap.get(s);
            if (long1 == null)
            {
                Logger.ee((new StringBuilder("WazeTttManager Error. There is no request for ")).append(s).toString());
            }
            TtsManagerCallbackNTV(long1.longValue(), 4);
        }

        private UtteranceCompletedListener()
        {
            this$0 = TtsManager.this;
            super();
        }

        UtteranceCompletedListener(UtteranceCompletedListener utterancecompletedlistener)
        {
            this();
        }
    }


    private final int TTS_RES_STATUS_ERROR = 1;
    private final int TTS_RES_STATUS_NO_RESULTS = 8;
    private final int TTS_RES_STATUS_PARTIAL_SUCCESS = 2;
    private final int TTS_RES_STATUS_SUCCESS = 4;
    private HashMap mRequestMap;
    private TextToSpeech mTts;
    private volatile boolean mTtsInitilized;

    TtsManager()
    {
        mTtsInitilized = false;
        mTts = null;
    }

    private native void InitTtsManagerNTV();

    private native void TtsManagerCallbackNTV(long l, int i);

    private void checkData()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity != null)
        {
            Intent intent = new Intent();
            intent.setAction("android.speech.tts.engine.CHECK_TTS_DATA");
            mainactivity.startActivityForResult(intent, 8192);
        }
    }

    private boolean setLanguage(String s)
    {
        boolean flag = s.equalsIgnoreCase("italiano");
        Locale locale = null;
        if (flag)
        {
            locale = Locale.ITALIAN;
        }
        if (locale != null)
        {
            int i = mTts.isLanguageAvailable(locale);
            boolean flag1 = false;
            if (i == 0)
            {
                Log.i("WAZE", (new StringBuilder("Setting TTS language to ")).append(locale.toString()).toString());
                mTts.setLanguage(locale);
                flag1 = true;
            }
            return flag1;
        } else
        {
            Logger.ee((new StringBuilder("Error setting locale for language: ")).append(s).toString());
            return false;
        }
    }

    public void InitNativeLayer()
    {
        InitTtsManagerNTV();
    }

    public void Prepare()
    {
        checkData();
    }

    public void Submit(String s, String s1, String s2, long l)
    {
label0:
        {
            if (mTtsInitilized)
            {
                Log.w("WAZE", (new StringBuilder("Received request for ")).append(s).append(". Path: ").append(s1).toString());
                if (setLanguage(s2))
                {
                    break label0;
                }
                Log.w("WAZE", (new StringBuilder("Error setting language for  ")).append(s2).toString());
                TtsManagerCallbackNTV(l, 1);
            }
            return;
        }
        HashMap hashmap = new HashMap();
        hashmap.put("utteranceId", s);
        if (mTts.synthesizeToFile(s, hashmap, s1) == -1)
        {
            TtsManagerCallbackNTV(l, 1);
            return;
        } else
        {
            mRequestMap.put(s, new Long(l));
            return;
        }
    }

    public void onDataCheckResult(int i, Intent intent)
    {
        if (i == 1)
        {
            NativeManager.Post(new Runnable() {

                final TtsManager this$0;

                public void run()
                {
                    android.content.Context context = AppService.getAppContext();
                    mTts = new TextToSpeech(context, TtsManager.this);
                }

            
            {
                this$0 = TtsManager.this;
                super();
            }
            });
        } else
        {
            Log.w("WAZE", "TTS Data doesn't present - installing");
            MainActivity mainactivity = AppService.getMainActivity();
            if (mainactivity != null)
            {
                Intent intent1 = new Intent();
                intent1.setAction("android.speech.tts.engine.INSTALL_TTS_DATA");
                mainactivity.startActivityForResult(intent1, 16384);
                return;
            }
        }
    }

    public void onDataInstallResult(int i, Intent intent)
    {
        checkData();
    }

    public void onInit(int i)
    {
        if (i == 0)
        {
            mTtsInitilized = true;
            mRequestMap = new HashMap();
            mTts.setOnUtteranceCompletedListener(new UtteranceCompletedListener(null));
        }
    }



}
