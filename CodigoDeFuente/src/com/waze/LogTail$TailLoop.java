// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;
import java.io.BufferedReader;
import java.io.FileOutputStream;

// Referenced classes of package com.waze:
//            LogTail

private class <init>
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
            s = LogTail.access$0(LogTail.this).readLine();
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
        if (LogTail.access$1(LogTail.this) && LogTail.access$2(LogTail.this) != null)
        {
            LogTail.access$2(LogTail.this).write((new StringBuilder(String.valueOf(s))).append("\n").toString().getBytes());
        }
          goto _L1
        Thread.sleep(100L);
          goto _L1
    }

    private ()
    {
        this$0 = LogTail.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
