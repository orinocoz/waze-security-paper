// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.media.MediaRecorder;

// Referenced classes of package com.waze:
//            Logger

public class SoundRecorder
{
    private static final class CompatabilityWrapper
    {

        public static void setSamplingRate(MediaRecorder mediarecorder, int i)
        {
            mediarecorder.setAudioSamplingRate(i);
        }

        private CompatabilityWrapper()
        {
        }
    }

    private static class OnErrorListener
        implements android.media.MediaRecorder.OnErrorListener
    {

        public void onError(MediaRecorder mediarecorder, int i, int j)
        {
            Logger.e((new StringBuilder("Error: ")).append(i).append(" in recording process. Extra ").append(j).toString());
        }

        private OnErrorListener()
        {
        }

        OnErrorListener(OnErrorListener onerrorlistener)
        {
            this();
        }
    }

    private static class OnInfoListener
        implements android.media.MediaRecorder.OnInfoListener
    {

        public void onInfo(MediaRecorder mediarecorder, int i, int j)
        {
            Logger.ii((new StringBuilder("Info: ")).append(i).append(" in recording process. Extra ").append(j).toString());
        }

        private OnInfoListener()
        {
        }

        OnInfoListener(OnInfoListener oninfolistener)
        {
            this();
        }
    }


    private static final long MAX_FILE_SIZE_BYTES = 0x186a0L;
    private static final int SAMPLING_RATE = 16000;
    private static SoundRecorder mInstance = null;
    private MediaRecorder mMR;

    private SoundRecorder()
    {
        mMR = null;
        InitSoundRecorderNTV();
    }

    public static void Create()
    {
        mInstance = new SoundRecorder();
    }

    private native void InitSoundRecorderNTV();

    public int Start(String s, int i)
    {
        int j = 0;
        if (mMR != null)
        {
            Logger.e("The recorder is already initialized!!");
            return -1;
        }
        Logger.d((new StringBuilder("Recoridng file to: ")).append(s).toString());
        mMR = new MediaRecorder();
        mMR.setAudioSource(1);
        mMR.setOutputFormat(2);
        mMR.setAudioEncoder(1);
        mMR.setOutputFile(s);
        mMR.setOnErrorListener(new OnErrorListener(null));
        mMR.setOnInfoListener(new OnInfoListener(null));
        mMR.setMaxDuration((int)(1.05D * (double)i));
        mMR.setMaxFileSize(0x186a0L);
        try
        {
            mMR.prepare();
            mMR.start();
        }
        catch (Exception exception)
        {
            Logger.ee("Error starting media recorder", exception);
            j = -1;
        }
        return j;
    }

    public void Stop()
    {
        try
        {
            Logger.d("Stop recording file");
            if (mMR != null)
            {
                mMR.stop();
                mMR.reset();
                mMR.release();
                mMR = null;
            }
            return;
        }
        catch (Exception exception)
        {
            Logger.ee("Error stopping media recorder", exception);
        }
    }

}
