.class public final Lcom/waze/LogTail;
.super Ljava/lang/Object;
.source "LogTail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/LogTail$TailLoop;
    }
.end annotation


# instance fields
.field private mBufSize:I

.field private mPath:Ljava/lang/String;

.field private mReader:Ljava/io/BufferedReader;

.field private mSDLogEnabled:Z

.field private final mSDLogPath:Ljava/lang/String;

.field private mSDLogStream:Ljava/io/FileOutputStream;

.field private mTailLoop:Lcom/waze/LogTail$TailLoop;

.field private mTailLoopThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/high16 v0, 0x1

    iput v0, p0, Lcom/waze/LogTail;->mBufSize:I

    .line 181
    const-string v0, "sdcard/waze_log.txt"

    iput-object v0, p0, Lcom/waze/LogTail;->mSDLogPath:Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/LogTail;->mSDLogEnabled:Z

    .line 35
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .parameter "aSDLogEnabled"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/high16 v0, 0x1

    iput v0, p0, Lcom/waze/LogTail;->mBufSize:I

    .line 181
    const-string v0, "sdcard/waze_log.txt"

    iput-object v0, p0, Lcom/waze/LogTail;->mSDLogPath:Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/LogTail;->mSDLogEnabled:Z

    .line 45
    iput-boolean p1, p0, Lcom/waze/LogTail;->mSDLogEnabled:Z

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/waze/LogTail;)Ljava/io/BufferedReader;
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/waze/LogTail;->mReader:Ljava/io/BufferedReader;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/LogTail;)Z
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/waze/LogTail;->mSDLogEnabled:Z

    return v0
.end method

.method static synthetic access$2(Lcom/waze/LogTail;)Ljava/io/FileOutputStream;
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/waze/LogTail;->mSDLogStream:Ljava/io/FileOutputStream;

    return-object v0
.end method


# virtual methods
.method public Close()V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/waze/LogTail;->StopLogTail()V

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/waze/LogTail;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public Open(Ljava/lang/String;)V
    .locals 4
    .parameter "aPath"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/waze/LogTail;->mPath:Ljava/lang/String;

    .line 59
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/waze/LogTail;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/waze/LogTail;->mBufSize:I

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lcom/waze/LogTail;->mReader:Ljava/io/BufferedReader;

    .line 60
    new-instance v1, Lcom/waze/LogTail$TailLoop;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/waze/LogTail$TailLoop;-><init>(Lcom/waze/LogTail;Lcom/waze/LogTail$TailLoop;)V

    iput-object v1, p0, Lcom/waze/LogTail;->mTailLoop:Lcom/waze/LogTail$TailLoop;

    .line 61
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/waze/LogTail;->mTailLoop:Lcom/waze/LogTail$TailLoop;

    const-string v3, "Native Log Thread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/waze/LogTail;->mTailLoopThread:Ljava/lang/Thread;

    .line 63
    iget-boolean v1, p0, Lcom/waze/LogTail;->mSDLogEnabled:Z

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "sdcard/waze_log.txt"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/waze/LogTail;->mSDLogStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "LogTail Open"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in opening log file"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public StartLogTail()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/waze/LogTail;->mReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/waze/LogTail;->mTailLoopThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    :cond_0
    return-void
.end method

.method public StopLogTail()V
    .locals 4

    .prologue
    .line 94
    iget-object v1, p0, Lcom/waze/LogTail;->mTailLoopThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->stop()V

    .line 96
    iget-boolean v1, p0, Lcom/waze/LogTail;->mSDLogEnabled:Z

    if-eqz v1, :cond_0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/waze/LogTail;->mSDLogStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Log Tail"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error closing SD log stream."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
