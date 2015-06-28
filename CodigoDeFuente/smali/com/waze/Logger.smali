.class public Lcom/waze/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/Logger$LogCatMonitor;
    }
.end annotation


# static fields
.field private static final DEBUG_LVL:I = 0x1

.field private static final ERROR_LVL:I = 0x4

.field private static final FATAL_LVL:I = 0x5

.field private static final INFO_LVL:I = 0x2

.field private static final LOG_PREFIX:Ljava/lang/String; = "Java Layer: "

.field public static final TAG:Ljava/lang/String; = "WAZE"

.field private static final WARNING_LVL:I = 0x3

.field private static mInstance:Lcom/waze/Logger;

.field public static mLogAndroidDebug:Z

.field public static mLogAndroidEnabled:Z

.field public static mLogFileEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 338
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/Logger;->mInstance:Lcom/waze/Logger;

    .line 346
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/Logger;->mLogAndroidDebug:Z

    .line 347
    sput-boolean v1, Lcom/waze/Logger;->mLogAndroidEnabled:Z

    .line 348
    sput-boolean v1, Lcom/waze/Logger;->mLogFileEnabled:Z

    .line 351
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    return-void
.end method

.method private static LogData(ILjava/lang/String;)V
    .locals 7
    .parameter "aLevel"
    .parameter "aStr"

    .prologue
    .line 301
    sget-object v3, Lcom/waze/Logger;->mInstance:Lcom/waze/Logger;

    if-nez v3, :cond_0

    .line 330
    :goto_0
    return-void

    .line 306
    :cond_0
    :try_start_0
    sget-object v4, Lcom/waze/Logger;->mInstance:Lcom/waze/Logger;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :try_start_1
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    .line 309
    .local v2, mgr:Lcom/waze/NativeManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v3

    if-nez v3, :cond_1

    .line 311
    new-instance v1, Lcom/waze/Logger$1;

    invoke-direct {v1, p0, p1}, Lcom/waze/Logger$1;-><init>(ILjava/lang/String;)V

    .line 316
    .local v1, logEvent:Ljava/lang/Runnable;
    invoke-virtual {v2, v1}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 306
    .end local v1           #logEvent:Ljava/lang/Runnable;
    :goto_1
    monitor-exit v4

    goto :goto_0

    .end local v2           #mgr:Lcom/waze/NativeManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 324
    :catch_0
    move-exception v0

    .line 326
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "WAZE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error in LogData: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 320
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #mgr:Lcom/waze/NativeManager;
    :cond_1
    :try_start_3
    sget-object v3, Lcom/waze/Logger;->mInstance:Lcom/waze/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Java Layer: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/waze/Logger;->WazeLogNTV(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static TAG(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "aSubSystem"

    .prologue
    .line 187
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WAZE [ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private native WazeLogNTV(ILjava/lang/String;)V
.end method

.method static synthetic access$0()Lcom/waze/Logger;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/waze/Logger;->mInstance:Lcom/waze/Logger;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/Logger;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    invoke-direct {p0, p1, p2}, Lcom/waze/Logger;->WazeLogNTV(ILjava/lang/String;)V

    return-void
.end method

.method public static create()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/waze/Logger;->mInstance:Lcom/waze/Logger;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/waze/Logger;

    invoke-direct {v0}, Lcom/waze/Logger;-><init>()V

    sput-object v0, Lcom/waze/Logger;->mInstance:Lcom/waze/Logger;

    .line 42
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .parameter "aStr"

    .prologue
    .line 59
    sget-boolean v0, Lcom/waze/Logger;->mLogAndroidDebug:Z

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "WAZE"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-boolean v0, Lcom/waze/Logger;->mLogFileEnabled:Z

    if-eqz v0, :cond_1

    .line 62
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/waze/Logger;->LogData(ILjava/lang/String;)V

    .line 63
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "aStr"
    .parameter "aThrowable"

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/waze/Logger;->getStackStr(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/Logger;->d(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static d_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "secondayTag"
    .parameter "msg"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WAZE."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter "aStr"

    .prologue
    .line 149
    sget-boolean v0, Lcom/waze/Logger;->mLogAndroidDebug:Z

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "WAZE"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    sget-boolean v0, Lcom/waze/Logger;->mLogFileEnabled:Z

    if-eqz v0, :cond_1

    .line 152
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/waze/Logger;->LogData(ILjava/lang/String;)V

    .line 153
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "aStr"
    .parameter "aThrowable"

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/waze/Logger;->getStackStr(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/Logger;->e(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static e_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "secondayTag"
    .parameter "msg"

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WAZE."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public static ee(Ljava/lang/String;)V
    .locals 1
    .parameter "aStr"

    .prologue
    .line 168
    sget-boolean v0, Lcom/waze/Logger;->mLogAndroidEnabled:Z

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "WAZE"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    sget-boolean v0, Lcom/waze/Logger;->mLogFileEnabled:Z

    if-eqz v0, :cond_1

    .line 171
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/waze/Logger;->LogData(ILjava/lang/String;)V

    .line 172
    :cond_1
    return-void
.end method

.method public static ee(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "aStr"
    .parameter "aThrowable"

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/waze/Logger;->getStackStr(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1
    .parameter "aStr"

    .prologue
    .line 179
    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/waze/Logger;->LogData(ILjava/lang/String;)V

    .line 180
    return-void
.end method

.method public static getStackStr(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .parameter "aThrowable"

    .prologue
    .line 48
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 49
    .local v1, result:Ljava/io/Writer;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 50
    .local v0, printWriter:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .parameter "aStr"

    .prologue
    .line 74
    sget-boolean v0, Lcom/waze/Logger;->mLogAndroidDebug:Z

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "WAZE"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    sget-boolean v0, Lcom/waze/Logger;->mLogFileEnabled:Z

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/waze/Logger;->LogData(ILjava/lang/String;)V

    .line 78
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "aStr"
    .parameter "aThrowable"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/waze/Logger;->getStackStr(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/Logger;->i(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static i_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "secondayTag"
    .parameter "msg"

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WAZE."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public static ii(Ljava/lang/String;)V
    .locals 1
    .parameter "aStr"

    .prologue
    .line 81
    sget-boolean v0, Lcom/waze/Logger;->mLogAndroidEnabled:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "WAZE"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    sget-boolean v0, Lcom/waze/Logger;->mLogFileEnabled:Z

    if-eqz v0, :cond_1

    .line 84
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/waze/Logger;->LogData(ILjava/lang/String;)V

    .line 85
    :cond_1
    return-void
.end method

.method public static ii(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "aStr"
    .parameter "aThrowable"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/waze/Logger;->getStackStr(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/Logger;->ii(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static v_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "secondayTag"
    .parameter "msg"

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WAZE."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .parameter "aStr"

    .prologue
    .line 121
    sget-boolean v0, Lcom/waze/Logger;->mLogAndroidDebug:Z

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "WAZE"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    sget-boolean v0, Lcom/waze/Logger;->mLogFileEnabled:Z

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/waze/Logger;->LogData(ILjava/lang/String;)V

    .line 125
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "aStr"
    .parameter "aThrowable"

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/waze/Logger;->getStackStr(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static w_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "secondayTag"
    .parameter "msg"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WAZE."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public static ww(Ljava/lang/String;)V
    .locals 1
    .parameter "aStr"

    .prologue
    .line 131
    sget-boolean v0, Lcom/waze/Logger;->mLogAndroidEnabled:Z

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "WAZE"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    sget-boolean v0, Lcom/waze/Logger;->mLogFileEnabled:Z

    if-eqz v0, :cond_1

    .line 134
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/waze/Logger;->LogData(ILjava/lang/String;)V

    .line 135
    :cond_1
    return-void
.end method

.method public static ww(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "aStr"
    .parameter "aThrowable"

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/waze/Logger;->getStackStr(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/Logger;->ww(Ljava/lang/String;)V

    .line 143
    return-void
.end method
