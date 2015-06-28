// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;
import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;

// Referenced classes of package com.waze:
//            ResManager, Logger

public static class setName extends Thread
{

    private boolean mActive;
    private Process mLogcatProc;
    private boolean mOutFileValid;

    public void Destroy()
    {
        mActive = false;
        synchronized (mLogcatProc)
        {
            mLogcatProc.destroy();
        }
        return;
        exception1;
        process;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            Log.e("Waze", "Error closing streams in Logcat thread");
        }
        return;
    }

    public void run()
    {
        BufferedReader bufferedreader;
        FileOutputStream fileoutputstream;
        bufferedreader = null;
        fileoutputstream = null;
        BufferedReader bufferedreader1;
        mLogcatProc = Runtime.getRuntime().exec(new String[] {
            "logcat", "-v", "time", "*:I"
        });
        bufferedreader1 = new BufferedReader(new InputStreamReader(mLogcatProc.getInputStream()));
        StringBuilder stringbuilder;
        String s;
        stringbuilder = new StringBuilder();
        s = System.getProperty("line.separator");
        mActive = true;
        mOutFileValid = false;
        FileOutputStream fileoutputstream1 = null;
_L6:
        if (!mActive) goto _L2; else goto _L1
_L1:
        String s1 = bufferedreader1.readLine();
        if (s1 != null) goto _L3; else goto _L2
_L2:
        synchronized (mLogcatProc)
        {
            mLogcatProc.destroy();
        }
        if (fileoutputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        fileoutputstream1.close();
        if (bufferedreader1 == null) goto _L5; else goto _L4
_L4:
        bufferedreader1.close();
        fileoutputstream1;
_L7:
        Log.e("Waze", "Logcat thread ended");
        return;
_L3:
        if (mOutFileValid)
        {
            break MISSING_BLOCK_LABEL_453;
        }
        fileoutputstream = new FileOutputStream((new StringBuilder(String.valueOf(ResManager.mAppDir))).append("logcat.txt").toString(), true);
        mOutFileValid = true;
_L10:
        stringbuilder.append(s1);
        stringbuilder.append(s);
        fileoutputstream.write(s1.getBytes());
        fileoutputstream.write(s.getBytes());
        fileoutputstream1 = fileoutputstream;
          goto _L6
        Exception exception2;
        exception2;
_L9:
        Log.e("Waze", (new StringBuilder("Error in Logcat thread: ")).append(exception2.getMessage()).toString());
        exception2.printStackTrace();
        synchronized (mLogcatProc)
        {
            mLogcatProc.destroy();
        }
        if (fileoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_302;
        }
        fileoutputstream.close();
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception1)
            {
                Log.e("Waze", "Error closing streams in Logcat thread");
            }
        }
          goto _L7
        exception3;
        process1;
        JVM INSTR monitorexit ;
        throw exception3;
        Exception exception;
        exception;
_L8:
        synchronized (mLogcatProc)
        {
            mLogcatProc.destroy();
        }
        if (fileoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_362;
        }
        fileoutputstream.close();
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception)
            {
                Log.e("Waze", "Error closing streams in Logcat thread");
            }
        }
        throw exception;
        exception1;
        process;
        JVM INSTR monitorexit ;
        throw exception1;
        exception4;
        process2;
        JVM INSTR monitorexit ;
        try
        {
            throw exception4;
        }
        catch (IOException ioexception2)
        {
            Log.e("Waze", "Error closing streams in Logcat thread");
        }
_L5:
        fileoutputstream1;
          goto _L7
        exception;
        bufferedreader = bufferedreader1;
          goto _L8
        exception;
        fileoutputstream = fileoutputstream1;
        bufferedreader = bufferedreader1;
          goto _L8
        exception2;
        bufferedreader = bufferedreader1;
          goto _L9
        exception2;
        fileoutputstream = fileoutputstream1;
        bufferedreader = bufferedreader1;
          goto _L9
        fileoutputstream = fileoutputstream1;
          goto _L10
    }

    public void setOutFileInvalid()
    {
        mOutFileValid = false;
    }

    public ()
    {
        mLogcatProc = null;
        mActive = false;
        mOutFileValid = false;
        setPriority(1);
        setName("Logcat Monitor");
    }
}
