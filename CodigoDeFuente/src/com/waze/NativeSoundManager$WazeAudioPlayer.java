// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.media.MediaPlayer;
import java.io.FileInputStream;
import java.io.IOException;

// Referenced classes of package com.waze:
//            NativeSoundManager, Logger, NativeManager

private final class mCallback extends Thread
{
    private final class CompletionListener
        implements android.media.MediaPlayer.OnCompletionListener
    {

        final NativeSoundManager.WazeAudioPlayer this$1;

        public void onCompletion(MediaPlayer mediaplayer)
        {
            finalizePlay(mediaplayer);
        }

        private CompletionListener()
        {
            this$1 = NativeSoundManager.WazeAudioPlayer.this;
            super();
        }

        CompletionListener(CompletionListener completionlistener)
        {
            this();
        }
    }

    private final class ErrorListener
        implements android.media.MediaPlayer.OnErrorListener
    {

        final NativeSoundManager.WazeAudioPlayer this$1;

        public boolean onError(MediaPlayer mediaplayer, int i, int j)
        {
            finalizePlay(mediaplayer);
            return true;
        }

        private ErrorListener()
        {
            this$1 = NativeSoundManager.WazeAudioPlayer.this;
            super();
        }

        ErrorListener(ErrorListener errorlistener)
        {
            this();
        }
    }


    private boolean mBuffered;
    private boolean mBuffering;
    private Long mCallback;
    private String mFileName;
    private MediaPlayer mMP;
    final NativeSoundManager this$0;

    private void BufferInternal()
        throws IOException
    {
        mMP = new MediaPlayer();
        mMP.setOnCompletionListener(new CompletionListener(null));
        mMP.setOnErrorListener(new ErrorListener(null));
        FileInputStream fileinputstream;
        float f;
        if (NativeSoundManager.access$1(NativeSoundManager.this))
        {
            mMP.setAudioStreamType(0);
        } else
        {
            mMP.setAudioStreamType(3);
        }
        fileinputstream = new FileInputStream(mFileName);
        mMP.setDataSource(fileinputstream.getFD());
        f = NativeSoundManager.access$2(NativeSoundManager.this);
        Logger.d_("Sound_Manager", (new StringBuilder("Setting volume: ")).append(f).toString());
        if (NativeSoundManager.access$3(NativeSoundManager.this))
        {
            mMP.setVolume(0.0F, 0.0F);
        } else
        {
            mMP.setVolume(f, f);
        }
        mMP.prepare();
        mBuffered = true;
    }

    private void finalizePlay(MediaPlayer mediaplayer)
    {
        mediaplayer.release();
        NativeSoundManager.access$0(NativeSoundManager.this, false);
        NativeManager.Post(new Runnable() {

            final NativeSoundManager.WazeAudioPlayer this$1;

            public void run()
            {
                NativeSoundManager.access$4(this$0);
            }

            
            {
                this$1 = NativeSoundManager.WazeAudioPlayer.this;
                super();
            }
        });
        if (mCallback.longValue() != 0L)
        {
            NativeManager.Post(new Runnable() {

                final NativeSoundManager.WazeAudioPlayer this$1;

                public void run()
                {
                    NativeSoundManager.access$5(this$0, mCallback.longValue());
                }

            
            {
                this$1 = NativeSoundManager.WazeAudioPlayer.this;
                super();
            }
            });
        }
    }

    public void Buffer()
    {
        mBuffering = true;
        start();
    }

    public void Play()
    {
        if (mBuffering && !mBuffered)
        {
            return;
        }
        NativeSoundManager.access$0(NativeSoundManager.this, true);
        if (!mBuffered)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        this;
        JVM INSTR monitorenter ;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            Logger.e("Audio Player. Error notifying the thread", exception);
        }
        return;
        start();
        return;
    }

    public String getFileName()
    {
        return mFileName;
    }

    public void run()
    {
        if (!mBuffered)
        {
            BufferInternal();
        }
        if (!mBuffering) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorenter ;
        wait();
        this;
        JVM INSTR monitorexit ;
_L2:
        mMP.start();
_L3:
        return;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            Logger.ee((new StringBuilder("Audio Player. Error playing the file ")).append(mFileName).toString(), exception);
            exception.printStackTrace();
        }
        if (mMP != null)
        {
            finalizePlay(mMP);
            return;
        }
          goto _L3
    }




    _cls2.this._cls1(String s, Long long1)
    {
        this$0 = NativeSoundManager.this;
        super();
        mBuffered = false;
        mBuffering = false;
        mMP = null;
        mFileName = s;
        mCallback = long1;
    }
}
