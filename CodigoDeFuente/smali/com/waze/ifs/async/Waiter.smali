.class public Lcom/waze/ifs/async/Waiter;
.super Ljava/lang/Object;
.source "Waiter.java"


# instance fields
.field private mWaiting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/async/Waiter;->mWaiting:Z

    .line 7
    return-void
.end method


# virtual methods
.method public declared-synchronized _notify()V
    .locals 1

    .prologue
    .line 36
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/waze/ifs/async/Waiter;->mWaiting:Z

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized _notifyAll()V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/waze/ifs/async/Waiter;->mWaiting:Z

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized _wait()V
    .locals 3

    .prologue
    .line 23
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/waze/ifs/async/Waiter;->mWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 32
    :goto_1
    monitor-exit p0

    return-void

    .line 25
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 30
    .local v0, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "WAZE"

    const-string v2, "Error waiting: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 23
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized prepare()V
    .locals 1

    .prologue
    .line 11
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/waze/ifs/async/Waiter;->mWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waiting()Z
    .locals 1

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/waze/ifs/async/Waiter;->mWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
