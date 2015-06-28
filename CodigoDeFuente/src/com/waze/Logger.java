// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;
import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;

// Referenced classes of package com.waze:
//            AppService, NativeManager, ResManager

public class Logger
{
    public static class LogCatMonitor extends Thread
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

        public LogCatMonitor()
        {
            mLogcatProc = null;
            mActive = false;
            mOutFileValid = false;
            setPriority(1);
            setName("Logcat Monitor");
        }
    }


    private static final int DEBUG_LVL = 1;
    private static final int ERROR_LVL = 4;
    private static final int FATAL_LVL = 5;
    private static final int INFO_LVL = 2;
    private static final String LOG_PREFIX = "Java Layer: ";
    public static final String TAG = "WAZE";
    private static final int WARNING_LVL = 3;
    private static Logger mInstance = null;
    public static boolean mLogAndroidDebug = false;
    public static boolean mLogAndroidEnabled = true;
    public static boolean mLogFileEnabled = true;

    private Logger()
    {
    }

    private static void LogData(final int aLevel, final String aStr)
    {
        if (mInstance == null)
        {
            return;
        }
        Logger logger = mInstance;
        logger;
        JVM INSTR monitorenter ;
        NativeManager nativemanager = AppService.getNativeManager();
        if (nativemanager == null)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        if (nativemanager.IsNativeThread())
        {
            break MISSING_BLOCK_LABEL_90;
        }
        nativemanager.PostRunnable(new Runnable() {

            private final int val$aLevel;
            private final String val$aStr;

            public void run()
            {
                Logger.mInstance.WazeLogNTV(aLevel, (new StringBuilder("Java Layer: ")).append(aStr).toString());
            }

            
            {
                aLevel = j;
                aStr = s;
                super();
            }
        });
_L1:
        logger;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        logger;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception)
        {
            Log.w("WAZE", (new StringBuilder("Error in LogData: ")).append(exception.getMessage()).toString());
            exception.printStackTrace();
            return;
        }
        mInstance.WazeLogNTV(aLevel, (new StringBuilder("Java Layer: ")).append(aStr).toString());
          goto _L1
    }

    public static String TAG(String s)
    {
        return new String((new StringBuilder("WAZE [ ")).append(s).append(" ]").toString());
    }

    private native void WazeLogNTV(int j, String s);

    public static void create()
    {
        if (mInstance == null)
        {
            mInstance = new Logger();
        }
    }

    public static void d(String s)
    {
        if (mLogAndroidDebug)
        {
            Log.d("WAZE", s);
        }
        if (mLogFileEnabled)
        {
            LogData(1, s);
        }
    }

    public static void d(String s, Throwable throwable)
    {
        d((new StringBuilder(String.valueOf(s))).append(" ").append(throwable.getMessage()).append(" ").append(getStackStr(throwable)).toString());
    }

    public static void d_(String s, String s1)
    {
        Log.d((new StringBuilder("WAZE.")).append(s).toString(), s1);
    }

    public static void e(String s)
    {
        if (mLogAndroidDebug)
        {
            Log.e("WAZE", s);
        }
        if (mLogFileEnabled)
        {
            LogData(4, s);
        }
    }

    public static void e(String s, Throwable throwable)
    {
        e((new StringBuilder(String.valueOf(s))).append(" ").append(throwable.getMessage()).append(" ").append(getStackStr(throwable)).toString());
    }

    public static void e_(String s, String s1)
    {
        Log.e((new StringBuilder("WAZE.")).append(s).toString(), s1);
    }

    public static void ee(String s)
    {
        if (mLogAndroidEnabled)
        {
            Log.e("WAZE", s);
        }
        if (mLogFileEnabled)
        {
            LogData(4, s);
        }
    }

    public static void ee(String s, Throwable throwable)
    {
        ee((new StringBuilder(String.valueOf(s))).append(" ").append(throwable.getMessage()).append(" ").append(getStackStr(throwable)).toString());
    }

    public static void f(String s)
    {
        LogData(5, s);
    }

    public static String getStackStr(Throwable throwable)
    {
        StringWriter stringwriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringwriter));
        return stringwriter.toString();
    }

    public static void i(String s)
    {
        if (mLogAndroidDebug)
        {
            Log.i("WAZE", s);
        }
        if (mLogFileEnabled)
        {
            LogData(2, s);
        }
    }

    public static void i(String s, Throwable throwable)
    {
        i((new StringBuilder(String.valueOf(s))).append(" ").append(throwable.getMessage()).append(" ").append(getStackStr(throwable)).toString());
    }

    public static void i_(String s, String s1)
    {
        Log.i((new StringBuilder("WAZE.")).append(s).toString(), s1);
    }

    public static void ii(String s)
    {
        if (mLogAndroidEnabled)
        {
            Log.i("WAZE", s);
        }
        if (mLogFileEnabled)
        {
            LogData(2, s);
        }
    }

    public static void ii(String s, Throwable throwable)
    {
        ii((new StringBuilder(String.valueOf(s))).append(" ").append(throwable.getMessage()).append(" ").append(getStackStr(throwable)).toString());
    }

    public static void v_(String s, String s1)
    {
        Log.v((new StringBuilder("WAZE.")).append(s).toString(), s1);
    }

    public static void w(String s)
    {
        if (mLogAndroidDebug)
        {
            Log.w("WAZE", s);
        }
        if (mLogFileEnabled)
        {
            LogData(3, s);
        }
    }

    public static void w(String s, Throwable throwable)
    {
        w((new StringBuilder(String.valueOf(s))).append(" ").append(throwable.getMessage()).append(" ").append(getStackStr(throwable)).toString());
    }

    public static void w_(String s, String s1)
    {
        Log.w((new StringBuilder("WAZE.")).append(s).toString(), s1);
    }

    public static void ww(String s)
    {
        if (mLogAndroidEnabled)
        {
            Log.w("WAZE", s);
        }
        if (mLogFileEnabled)
        {
            LogData(3, s);
        }
    }

    public static void ww(String s, Throwable throwable)
    {
        ww((new StringBuilder(String.valueOf(s))).append(" ").append(throwable.getMessage()).append(" ").append(getStackStr(throwable)).toString());
    }



}
