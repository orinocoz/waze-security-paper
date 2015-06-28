.class public final Lcom/waze/NativeTimerTask;
.super Ljava/util/TimerTask;
.source "NativeTimerTask.java"

# interfaces
.implements Lcom/waze/IMessageParam;


# instance fields
.field private mInterval:I

.field private mIsActive:Z

.field private mNativeManager:Lcom/waze/NativeManager;

.field private mTaskId:I

.field private mTaskNativeMsg:I


# direct methods
.method constructor <init>(IIILcom/waze/NativeManager;)V
    .locals 1
    .parameter "aTaskId"
    .parameter "aTaskNativeMsg"
    .parameter "interval"
    .parameter "aNativeManager"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/NativeTimerTask;->mIsActive:Z

    .line 33
    iput-object p4, p0, Lcom/waze/NativeTimerTask;->mNativeManager:Lcom/waze/NativeManager;

    .line 34
    iput p1, p0, Lcom/waze/NativeTimerTask;->mTaskId:I

    .line 35
    iput p3, p0, Lcom/waze/NativeTimerTask;->mInterval:I

    .line 36
    iput p2, p0, Lcom/waze/NativeTimerTask;->mTaskNativeMsg:I

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/NativeTimerTask;->mIsActive:Z

    .line 38
    return-void
.end method


# virtual methods
.method public declared-synchronized CancelSync()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/waze/NativeTimerTask;->cancel()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public IsActive()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/waze/NativeTimerTask;->mIsActive:Z

    return v0
.end method

.method public cancel()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/NativeTimerTask;->mIsActive:Z

    .line 88
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    return v0
.end method

.method public getTaskId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/waze/NativeTimerTask;->mTaskId:I

    return v0
.end method

.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/waze/NativeTimerTask;->mInterval:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/waze/NativeTimerTask;->mNativeManager:Lcom/waze/NativeManager;

    iget v1, p0, Lcom/waze/NativeTimerTask;->mTaskNativeMsg:I

    invoke-virtual {v0, v1, p0}, Lcom/waze/NativeManager;->PostPriorityNativeMessage(ILcom/waze/IMessageParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/waze/NativeTimerTask;->mNativeManager:Lcom/waze/NativeManager;

    iget v1, p0, Lcom/waze/NativeTimerTask;->mTaskNativeMsg:I

    invoke-virtual {v0, v1, p0}, Lcom/waze/NativeManager;->PostNativeMessage(ILcom/waze/IMessageParam;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTaskId(I)V
    .locals 0
    .parameter "aTaskId"

    .prologue
    .line 70
    iput p1, p0, Lcom/waze/NativeTimerTask;->mTaskId:I

    .line 71
    return-void
.end method
