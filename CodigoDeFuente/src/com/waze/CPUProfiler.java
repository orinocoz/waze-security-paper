// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.os.Process;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.waze:
//            AppService, NativeManager, Logger

public final class CPUProfiler extends TimerTask
{

    private static final int CPU_LIMIT_ANIMATION = 0x16e360;
    private static final int OVERALL_IDLE_IDX = 5;
    private static final int OVERALL_SYSTEM_IDX = 4;
    private static final int OVERALL_USER_IDX = 2;
    private static final int PROCESS_KERNEL_IDX = 14;
    private static final int PROCESS_USER_IDX = 13;
    private static final long SAMPLE_PERIOD = 60000L;
    private static final float USAGE_THRESHOLD = 80F;
    private static final String WAZE_CPU_PROFILER = "WAZE CPU PROFILER";
    private static CPUProfiler mInstance = null;
    static int s_cpuMaxFreq = 0;
    private final boolean SHOW_LOGCAT = false;
    private long mCurUsageCPUIdle;
    private long mCurUsageCPUProcess;
    private long mCurUsageCPUSys;
    private long mCurUsageCPUUser;
    private long mLastIdleCPU;
    private long mLastProcessCPU;
    private long mLastSysCPU;
    private long mLastTotal;
    private long mLastUserCPU;

    private CPUProfiler()
    {
        mLastTotal = 0L;
        mLastUserCPU = 0L;
        mLastSysCPU = 0L;
        mLastIdleCPU = 0L;
        mLastProcessCPU = 0L;
        mCurUsageCPUProcess = 0L;
        mCurUsageCPUUser = 0L;
        mCurUsageCPUSys = 0L;
        mCurUsageCPUIdle = 0L;
    }

    private String FormatResultString()
    {
        String s = (new SimpleDateFormat("hh:mm:ss")).format(new Date());
        return (new StringBuilder("WAZE CPU PROFILER(percents). User: ")).append(mCurUsageCPUUser).append(". System: ").append(mCurUsageCPUSys).append(". Idle: ").append(mCurUsageCPUIdle).append(". WAZE: ").append(mCurUsageCPUProcess).append(". Post time: ").append(s).toString();
    }

    private void PostResultToLog()
    {
        Runnable runnable = new Runnable() {

            final CPUProfiler this$0;
            private final String val$resStr;

            public void run()
            {
                Logger.w(resStr);
            }

            
            {
                this$0 = CPUProfiler.this;
                resStr = s;
                super();
            }
        };
        AppService.getNativeManager().PostRunnable(runnable);
    }

    private boolean ReadCPU()
    {
        long l;
        long l1;
        long l2;
        long l3;
        long l4;
        int i;
        BufferedReader bufferedreader1;
        String s1;
        String as1[];
        long l5;
        try
        {
            BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/stat")), 1000);
            String s = bufferedreader.readLine();
            bufferedreader.close();
            String as[] = s.split(" ");
            l = Long.parseLong(as[2]) + Long.parseLong(as[4]) + Long.parseLong(as[5]);
            l1 = Long.parseLong(as[2]);
            l2 = Long.parseLong(as[4]);
            l3 = Long.parseLong(as[5]);
            l4 = l - mLastTotal;
        }
        catch (Exception exception)
        {
            Logger.e("WAZE CPU PROFILER", exception);
            return false;
        }
        if (l4 == 0L)
        {
            return false;
        }
        mCurUsageCPUIdle = (100L * (l3 - mLastIdleCPU)) / l4;
        mCurUsageCPUUser = (100L * (l1 - mLastUserCPU)) / l4;
        mCurUsageCPUSys = (100L * (l2 - mLastSysCPU)) / l4;
        i = Process.myPid();
        bufferedreader1 = new BufferedReader(new InputStreamReader(new FileInputStream((new StringBuilder("/proc/")).append(i).append("/stat").toString())), 100);
        s1 = bufferedreader1.readLine();
        bufferedreader1.close();
        as1 = s1.split(" ");
        l5 = Long.parseLong(as1[13]) + Long.parseLong(as1[14]);
        mCurUsageCPUProcess = (100L * (l5 - mLastProcessCPU)) / l4;
        mLastTotal = l;
        mLastUserCPU = l1;
        mLastSysCPU = l2;
        mLastIdleCPU = l3;
        mLastProcessCPU = l5;
        return true;
    }

    public static void Start(Timer timer)
    {
        mInstance = new CPUProfiler();
        timer.scheduleAtFixedRate(mInstance, 0L, 60000L);
    }

    public static void getPerformance()
    {
        try
        {
            RandomAccessFile randomaccessfile = new RandomAccessFile("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq", "r");
            String s = randomaccessfile.readLine();
            randomaccessfile.close();
            s_cpuMaxFreq = Integer.parseInt(s);
            return;
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
        }
    }

    public static boolean shouldAnimate()
    {
        while (s_cpuMaxFreq == 0 || s_cpuMaxFreq >= 0x16e360) 
        {
            return true;
        }
        return false;
    }

    public void run()
    {
        if (ReadCPU() && (float)(mCurUsageCPUSys + mCurUsageCPUUser) >= 80F)
        {
            PostResultToLog();
        }
    }

}
