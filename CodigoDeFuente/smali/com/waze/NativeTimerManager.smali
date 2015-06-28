.class public final Lcom/waze/NativeTimerManager;
.super Ljava/lang/Object;
.source "NativeTimerManager.java"


# static fields
.field private static final FREMAP_MAX_TASK_COUNT:I = 0x20


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mNativeManager:Lcom/waze/NativeManager;

.field private mTasks:[Lcom/waze/NativeTimerTask;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/waze/NativeManager;)V
    .locals 1
    .parameter "aNativeManager"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const-string v0, "TimerManager"

    iput-object v0, p0, Lcom/waze/NativeTimerManager;->LOG_TAG:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/waze/NativeTimerManager;->mNativeManager:Lcom/waze/NativeManager;

    .line 39
    iget-object v0, p0, Lcom/waze/NativeTimerManager;->mNativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->getTimer()Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/NativeTimerManager;->mTimer:Ljava/util/Timer;

    .line 42
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/waze/NativeTimerTask;

    iput-object v0, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    .line 45
    invoke-direct {p0}, Lcom/waze/NativeTimerManager;->InitTimerManagerNTV()V

    .line 47
    return-void
.end method

.method private native InitTimerManagerNTV()V
.end method


# virtual methods
.method public ActiveTasksCount()I
    .locals 4

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, lCount:I
    iget-object v3, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    monitor-enter v3

    .line 218
    const/4 v1, 0x0

    .local v1, lTask:I
    :goto_0
    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    .line 215
    :try_start_0
    monitor-exit v3

    .line 226
    return v0

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 222
    add-int/lit8 v0, v0, 0x1

    .line 218
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public ActiveTasksExist()Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/waze/NativeTimerManager;->ActiveTasksCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public AddTask(III)V
    .locals 4
    .parameter "aTaskId"
    .parameter "aTaskNativeMsg"
    .parameter "aInterval"

    .prologue
    .line 68
    invoke-static {}, Lcom/waze/NativeManager;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 71
    :cond_0
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimerManagerTask ID is illegal: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_2
    if-gtz p3, :cond_3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimerManagerInterval is illegal: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    aget-object v0, v0, p1

    if-eqz v0, :cond_4

    .line 91
    invoke-virtual {p0, p1}, Lcom/waze/NativeTimerManager;->RemoveTask(I)V

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    new-instance v2, Lcom/waze/NativeTimerTask;

    .line 95
    iget-object v3, p0, Lcom/waze/NativeTimerManager;->mNativeManager:Lcom/waze/NativeManager;

    invoke-direct {v2, p1, p2, p3, v3}, Lcom/waze/NativeTimerTask;-><init>(IIILcom/waze/NativeManager;)V

    .line 94
    aput-object v2, v0, p1

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    int-to-long v0, p3

    invoke-virtual {p0, p1, v0, v1}, Lcom/waze/NativeTimerManager;->StartTask(IJ)V

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public RemoveTask(I)V
    .locals 3
    .parameter "aTaskId"

    .prologue
    .line 115
    invoke-static {}, Lcom/waze/NativeManager;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    if-ltz p1, :cond_0

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/waze/NativeTimerTask;->cancel()Z

    .line 126
    iget-object v0, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 121
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ShutDown()V
    .locals 3

    .prologue
    .line 169
    iget-object v2, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    monitor-enter v2

    .line 172
    const/4 v0, 0x0

    .local v0, lTask:I
    :goto_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/waze/NativeTimerManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 169
    monitor-exit v2

    .line 181
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/waze/NativeTimerTask;->cancel()Z

    .line 172
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ShutDownBg()V
    .locals 3

    .prologue
    .line 185
    iget-object v2, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    monitor-enter v2

    .line 188
    const/4 v0, 0x0

    .local v0, lTask:I
    :goto_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/waze/NativeTimerManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 185
    monitor-exit v2

    .line 197
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/waze/NativeTimerTask;->cancel()Z

    .line 188
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public StartTask(IJ)V
    .locals 7
    .parameter "aTaskId"
    .parameter "aInterval"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/waze/NativeTimerManager;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/waze/NativeTimerManager;->mTasks:[Lcom/waze/NativeTimerTask;

    aget-object v1, v1, p1

    move-wide v2, p2

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v6

    .line 152
    .local v6, ex:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start Task Error!  TaskId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    const-string v1, "Interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 158
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v0, "TimerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StartTask. Task: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    const-string v2, " is not active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
