.class public final Lcom/waze/CPUProfiler;
.super Ljava/util/TimerTask;
.source "CPUProfiler.java"


# static fields
.field private static final CPU_LIMIT_ANIMATION:I = 0x16e360

.field private static final OVERALL_IDLE_IDX:I = 0x5

.field private static final OVERALL_SYSTEM_IDX:I = 0x4

.field private static final OVERALL_USER_IDX:I = 0x2

.field private static final PROCESS_KERNEL_IDX:I = 0xe

.field private static final PROCESS_USER_IDX:I = 0xd

.field private static final SAMPLE_PERIOD:J = 0xea60L

.field private static final USAGE_THRESHOLD:F = 80.0f

.field private static final WAZE_CPU_PROFILER:Ljava/lang/String; = "WAZE CPU PROFILER"

.field private static mInstance:Lcom/waze/CPUProfiler;

.field static s_cpuMaxFreq:I


# instance fields
.field private final SHOW_LOGCAT:Z

.field private mCurUsageCPUIdle:J

.field private mCurUsageCPUProcess:J

.field private mCurUsageCPUSys:J

.field private mCurUsageCPUUser:J

.field private mLastIdleCPU:J

.field private mLastProcessCPU:J

.field private mLastSysCPU:J

.field private mLastTotal:J

.field private mLastUserCPU:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/CPUProfiler;->mInstance:Lcom/waze/CPUProfiler;

    .line 194
    const/4 v0, 0x0

    sput v0, Lcom/waze/CPUProfiler;->s_cpuMaxFreq:I

    .line 214
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 178
    iput-wide v0, p0, Lcom/waze/CPUProfiler;->mLastTotal:J

    .line 179
    iput-wide v0, p0, Lcom/waze/CPUProfiler;->mLastUserCPU:J

    .line 180
    iput-wide v0, p0, Lcom/waze/CPUProfiler;->mLastSysCPU:J

    .line 181
    iput-wide v0, p0, Lcom/waze/CPUProfiler;->mLastIdleCPU:J

    .line 184
    iput-wide v0, p0, Lcom/waze/CPUProfiler;->mLastProcessCPU:J

    .line 185
    iput-wide v0, p0, Lcom/waze/CPUProfiler;->mCurUsageCPUProcess:J

    .line 188
    iput-wide v0, p0, Lcom/waze/CPUProfiler;->mCurUsageCPUUser:J

    .line 189
    iput-wide v0, p0, Lcom/waze/CPUProfiler;->mCurUsageCPUSys:J

    .line 190
    iput-wide v0, p0, Lcom/waze/CPUProfiler;->mCurUsageCPUIdle:J

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/CPUProfiler;->SHOW_LOGCAT:Z

    .line 84
    return-void
.end method

.method private FormatResultString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 164
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "hh:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 166
    .local v2, now:Ljava/util/Date;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, fmtTime:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WAZE CPU PROFILER(percents). User: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/waze/CPUProfiler;->mCurUsageCPUUser:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". System: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/waze/CPUProfiler;->mCurUsageCPUSys:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 169
    const-string v5, ". Idle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/waze/CPUProfiler;->mCurUsageCPUIdle:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". WAZE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/waze/CPUProfiler;->mCurUsageCPUProcess:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 170
    const-string v5, ". Post time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 168
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, res:Ljava/lang/String;
    return-object v3
.end method

.method private PostResultToLog()V
    .locals 3

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/waze/CPUProfiler;->FormatResultString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, resStr:Ljava/lang/String;
    new-instance v0, Lcom/waze/CPUProfiler$1;

    invoke-direct {v0, p0, v2}, Lcom/waze/CPUProfiler$1;-><init>(Lcom/waze/CPUProfiler;Ljava/lang/String;)V

    .line 151
    .local v0, logTask:Ljava/lang/Runnable;
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    .line 152
    .local v1, mgr:Lcom/waze/NativeManager;
    invoke-virtual {v1, v0}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method private ReadCPU()Z
    .locals 25

    .prologue
    .line 92
    :try_start_0
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    new-instance v22, Ljava/io/FileInputStream;

    const-string v23, "/proc/stat"

    invoke-direct/range {v22 .. v23}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v21 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v22, 0x3e8

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 93
    .local v17, reader:Ljava/io/BufferedReader;
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .line 94
    .local v14, load:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V

    .line 96
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 98
    .local v18, toks:[Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    const/16 v23, 0x4

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    add-long v21, v21, v23

    .line 99
    const/16 v23, 0x5

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    .line 98
    add-long v9, v21, v23

    .line 101
    .local v9, currTotal:J
    const/16 v21, 0x2

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 102
    .local v11, currUser:J
    const/16 v21, 0x4

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 103
    .local v7, currSystem:J
    const/16 v21, 0x5

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 105
    .local v3, currIdle:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/waze/CPUProfiler;->mLastTotal:J

    move-wide/from16 v21, v0

    sub-long v19, v9, v21

    .line 108
    .local v19, totalDelta:J
    const-wide/16 v21, 0x0

    cmp-long v21, v19, v21

    if-nez v21, :cond_0

    .line 109
    const/16 v21, 0x0

    .line 139
    .end local v3           #currIdle:J
    .end local v7           #currSystem:J
    .end local v9           #currTotal:J
    .end local v11           #currUser:J
    .end local v14           #load:Ljava/lang/String;
    .end local v17           #reader:Ljava/io/BufferedReader;
    .end local v18           #toks:[Ljava/lang/String;
    .end local v19           #totalDelta:J
    :goto_0
    return v21

    .line 112
    .restart local v3       #currIdle:J
    .restart local v7       #currSystem:J
    .restart local v9       #currTotal:J
    .restart local v11       #currUser:J
    .restart local v14       #load:Ljava/lang/String;
    .restart local v17       #reader:Ljava/io/BufferedReader;
    .restart local v18       #toks:[Ljava/lang/String;
    .restart local v19       #totalDelta:J
    :cond_0
    const-wide/16 v21, 0x64

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/waze/CPUProfiler;->mLastIdleCPU:J

    move-wide/from16 v23, v0

    sub-long v23, v3, v23

    mul-long v21, v21, v23

    div-long v21, v21, v19

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/waze/CPUProfiler;->mCurUsageCPUIdle:J

    .line 113
    const-wide/16 v21, 0x64

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/waze/CPUProfiler;->mLastUserCPU:J

    move-wide/from16 v23, v0

    sub-long v23, v11, v23

    mul-long v21, v21, v23

    div-long v21, v21, v19

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/waze/CPUProfiler;->mCurUsageCPUUser:J

    .line 114
    const-wide/16 v21, 0x64

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/waze/CPUProfiler;->mLastSysCPU:J

    move-wide/from16 v23, v0

    sub-long v23, v7, v23

    mul-long v21, v21, v23

    div-long v21, v21, v19

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/waze/CPUProfiler;->mCurUsageCPUSys:J

    .line 117
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    .line 118
    .local v16, pid:I
    new-instance v17, Ljava/io/BufferedReader;

    .end local v17           #reader:Ljava/io/BufferedReader;
    new-instance v21, Ljava/io/InputStreamReader;

    new-instance v22, Ljava/io/FileInputStream;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "/proc/"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/stat"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v21 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v22, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 119
    .restart local v17       #reader:Ljava/io/BufferedReader;
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .line 120
    .local v15, loadProcess:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V

    .line 122
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 123
    const/16 v21, 0xd

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    const/16 v23, 0xe

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    add-long v5, v21, v23

    .line 124
    .local v5, currProcessCPU:J
    const-wide/16 v21, 0x64

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/waze/CPUProfiler;->mLastProcessCPU:J

    move-wide/from16 v23, v0

    sub-long v23, v5, v23

    mul-long v21, v21, v23

    div-long v21, v21, v19

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/waze/CPUProfiler;->mCurUsageCPUProcess:J

    .line 128
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/waze/CPUProfiler;->mLastTotal:J

    .line 129
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/waze/CPUProfiler;->mLastUserCPU:J

    .line 130
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/waze/CPUProfiler;->mLastSysCPU:J

    .line 131
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/waze/CPUProfiler;->mLastIdleCPU:J

    .line 132
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/waze/CPUProfiler;->mLastProcessCPU:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 134
    .end local v3           #currIdle:J
    .end local v5           #currProcessCPU:J
    .end local v7           #currSystem:J
    .end local v9           #currTotal:J
    .end local v11           #currUser:J
    .end local v14           #load:Ljava/lang/String;
    .end local v15           #loadProcess:Ljava/lang/String;
    .end local v16           #pid:I
    .end local v17           #reader:Ljava/io/BufferedReader;
    .end local v18           #toks:[Ljava/lang/String;
    .end local v19           #totalDelta:J
    :catch_0
    move-exception v13

    .line 136
    .local v13, ex:Ljava/lang/Exception;
    const-string v21, "WAZE CPU PROFILER"

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    const/16 v21, 0x0

    goto/16 :goto_0
.end method

.method public static Start(Ljava/util/Timer;)V
    .locals 6
    .parameter "aTimer"

    .prologue
    .line 55
    new-instance v0, Lcom/waze/CPUProfiler;

    invoke-direct {v0}, Lcom/waze/CPUProfiler;-><init>()V

    sput-object v0, Lcom/waze/CPUProfiler;->mInstance:Lcom/waze/CPUProfiler;

    .line 56
    sget-object v1, Lcom/waze/CPUProfiler;->mInstance:Lcom/waze/CPUProfiler;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 57
    return-void
.end method

.method public static getPerformance()V
    .locals 5

    .prologue
    .line 62
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v2, reader:Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, cpuMaxFreq:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/waze/CPUProfiler;->s_cpuMaxFreq:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0           #cpuMaxFreq:Ljava/lang/String;
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static shouldAnimate()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 72
    sget v1, Lcom/waze/CPUProfiler;->s_cpuMaxFreq:I

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    sget v1, Lcom/waze/CPUProfiler;->s_cpuMaxFreq:I

    const v2, 0x16e360

    if-ge v1, v2, :cond_0

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/waze/CPUProfiler;->ReadCPU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-wide v0, p0, Lcom/waze/CPUProfiler;->mCurUsageCPUSys:J

    iget-wide v2, p0, Lcom/waze/CPUProfiler;->mCurUsageCPUUser:J

    add-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x42a0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/waze/CPUProfiler;->PostResultToLog()V

    .line 51
    :cond_0
    return-void
.end method
