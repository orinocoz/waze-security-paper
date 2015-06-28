// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.os.Environment;
import android.util.Log;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package com.waze:
//            AppService, NativeManager

public class CustomExceptionHandler
    implements Thread.UncaughtExceptionHandler
{

    private Thread.UncaughtExceptionHandler defaultUEH;
    private String localPath;

    public CustomExceptionHandler()
    {
        defaultUEH = Thread.getDefaultUncaughtExceptionHandler();
        File file = Environment.getExternalStorageDirectory();
        localPath = (new StringBuilder()).append(file).append("/waze/crash_logs").toString();
        File file1 = new File((new StringBuilder(String.valueOf(localPath))).append("/aa").toString());
        if (file1.getParentFile() != null)
        {
            file1.getParentFile().mkdirs();
        }
    }

    private void writeToFile(String s, String s1)
    {
        try
        {
            BufferedWriter bufferedwriter = new BufferedWriter(new FileWriter((new StringBuilder(String.valueOf(localPath))).append("/").append(s1).toString()));
            bufferedwriter.write(s);
            bufferedwriter.flush();
            bufferedwriter.close();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        StringWriter stringwriter = new StringWriter();
        PrintWriter printwriter = new PrintWriter(stringwriter);
        throwable.printStackTrace(printwriter);
        String s = stringwriter.toString();
        printwriter.close();
        String s1 = (new SimpleDateFormat("ddMMyy_hh_mm_ss")).format(new Date());
        String s2 = (new StringBuilder("Android_")).append(s1).append(".plcrash").toString();
        Log.e("WAZE", (new StringBuilder()).append(AppService.getActiveActivity()).toString());
        String s3 = (new StringBuilder()).append(AppService.getActiveActivity()).append("\n").append(NativeManager.getManufacturer()).append(", ").append(NativeManager.getModel()).append(", ").append(NativeManager.getDevice()).append("\n").toString();
        NativeManager.getInstance().Config_Set_Closed_Properly(0, s);
        writeToFile((new StringBuilder(String.valueOf(s3))).append(s).toString(), s2);
        defaultUEH.uncaughtException(thread, throwable);
    }
}
