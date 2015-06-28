// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;
import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;

public final class LogTail
{
    private class TailLoop
        implements Runnable
    {

        final LogTail this$0;

        public void run()
        {
            Log.i("TailLoop", "Starting the LogTail");
_L1:
            String s;
            try
            {
                s = mReader.readLine();
            }
            catch (Exception exception)
            {
                Thread.currentThread().interrupt();
                Log.e("TailLoop", (new StringBuilder("Error in reading log file")).append(exception.getMessage()).append(exception.getStackTrace()).toString());
                return;
            }
            if (s == null)
            {
                break MISSING_BLOCK_LABEL_129;
            }
            Log.i("NativeLog", s);
            if (mSDLogEnabled && mSDLogStream != null)
            {
                mSDLogStream.write((new StringBuilder(String.valueOf(s))).append("\n").toString().getBytes());
            }
              goto _L1
            Thread.sleep(100L);
              goto _L1
        }

        private TailLoop()
        {
            this$0 = LogTail.this;
            super();
        }

        TailLoop(TailLoop tailloop)
        {
            this();
        }
    }


    private int mBufSize;
    private String mPath;
    private BufferedReader mReader;
    private boolean mSDLogEnabled;
    private final String mSDLogPath;
    private FileOutputStream mSDLogStream;
    private TailLoop mTailLoop;
    private Thread mTailLoopThread;

    LogTail()
    {
        mBufSize = 0x10000;
        mSDLogPath = "sdcard/waze_log.txt";
        mSDLogEnabled = false;
    }

    LogTail(boolean flag)
    {
        mBufSize = 0x10000;
        mSDLogPath = "sdcard/waze_log.txt";
        mSDLogEnabled = false;
        mSDLogEnabled = flag;
    }

    public void Close()
    {
        StopLogTail();
        try
        {
            mReader.close();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public void Open(String s)
    {
        mPath = s;
        try
        {
            mReader = new BufferedReader(new FileReader(mPath), mBufSize);
            mTailLoop = new TailLoop(null);
            mTailLoopThread = new Thread(mTailLoop, "Native Log Thread");
            if (mSDLogEnabled)
            {
                mSDLogStream = new FileOutputStream("sdcard/waze_log.txt");
            }
            return;
        }
        catch (Exception exception)
        {
            Log.e("LogTail Open", (new StringBuilder("Error in opening log file")).append(exception.getMessage()).append(exception.getStackTrace()).toString());
        }
    }

    public void StartLogTail()
    {
        if (mReader != null)
        {
            mTailLoopThread.start();
        }
    }

    public void StopLogTail()
    {
        mTailLoopThread.stop();
        if (!mSDLogEnabled)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        mSDLogStream.close();
        return;
        IOException ioexception;
        ioexception;
        Log.i("Log Tail", (new StringBuilder("Error closing SD log stream.")).append(ioexception.getMessage()).append(ioexception.getStackTrace()).toString());
        return;
    }



}
