.class public abstract Lcom/waze/ToastThread;
.super Landroid/os/HandlerThread;
.source "ToastThread.java"


# instance fields
.field protected final LOOPER_CANCEL_DELAY:J

.field protected final TOAST_CANCEL_DELAY:J

.field private final TOAST_DURATION_TEST_PERIOD:J

.field protected mDuration:J

.field private mDurationTestCallback:Ljava/lang/Runnable;

.field protected volatile mHandler:Landroid/os/Handler;

.field protected mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "aName"

    .prologue
    const/4 v2, 0x0

    .line 36
    const/4 v0, -0x8

    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 176
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/waze/ToastThread;->TOAST_CANCEL_DELAY:J

    .line 177
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/waze/ToastThread;->LOOPER_CANCEL_DELAY:J

    .line 179
    iput-object v2, p0, Lcom/waze/ToastThread;->mToast:Landroid/widget/Toast;

    .line 181
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/waze/ToastThread;->TOAST_DURATION_TEST_PERIOD:J

    .line 182
    iput-object v2, p0, Lcom/waze/ToastThread;->mDurationTestCallback:Ljava/lang/Runnable;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/waze/ToastThread;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/waze/ToastThread;->mDurationTestCallback:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/waze/ToastThread;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 139
    return-void
.end method

.method protected onLooperPrepared()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waze/ToastThread;->mHandler:Landroid/os/Handler;

    .line 123
    invoke-virtual {p0}, Lcom/waze/ToastThread;->show()Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/ToastThread;->mToast:Landroid/widget/Toast;

    .line 125
    iget-object v0, p0, Lcom/waze/ToastThread;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "WAZE"

    const-string v1, "Toast is not initialized properly: stopping the thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/waze/ToastThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 130
    :cond_0
    return-void
.end method

.method protected setCustomDuration(J)V
    .locals 4
    .parameter "aDuration"

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/waze/ToastThread;->mDuration:J

    .line 144
    iget-object v0, p0, Lcom/waze/ToastThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lcom/waze/ToastThread$5;

    invoke-direct {v0, p0}, Lcom/waze/ToastThread$5;-><init>(Lcom/waze/ToastThread;)V

    iput-object v0, p0, Lcom/waze/ToastThread;->mDurationTestCallback:Ljava/lang/Runnable;

    .line 171
    iget-object v0, p0, Lcom/waze/ToastThread;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/waze/ToastThread;->mDurationTestCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    :cond_0
    return-void
.end method

.method public abstract show()Landroid/widget/Toast;
.end method

.method public stopToast()V
    .locals 5

    .prologue
    .line 42
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/waze/ToastThread;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 45
    monitor-exit p0

    .line 73
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/waze/ToastThread;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/waze/ToastThread$1;

    invoke-direct {v2, p0}, Lcom/waze/ToastThread$1;-><init>(Lcom/waze/ToastThread;)V

    .line 56
    const-wide/16 v3, 0x3e8

    .line 48
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    iget-object v1, p0, Lcom/waze/ToastThread;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/waze/ToastThread$2;

    invoke-direct {v2, p0}, Lcom/waze/ToastThread$2;-><init>(Lcom/waze/ToastThread;)V

    .line 62
    const-wide/16 v3, 0x2af8

    .line 58
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    iget-object v1, p0, Lcom/waze/ToastThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/waze/ToastThread;->mDurationTestCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/ToastThread;->mHandler:Landroid/os/Handler;

    .line 42
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error stopping toast: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final stopToastImmediately()V
    .locals 5

    .prologue
    .line 78
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :try_start_1
    iget-object v1, p0, Lcom/waze/ToastThread;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 83
    monitor-exit p0

    .line 113
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/waze/ToastThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/waze/ToastThread;->mDurationTestCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    iget-object v1, p0, Lcom/waze/ToastThread;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/waze/ToastThread$3;

    invoke-direct {v2, p0}, Lcom/waze/ToastThread$3;-><init>(Lcom/waze/ToastThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    iget-object v1, p0, Lcom/waze/ToastThread;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/waze/ToastThread$4;

    invoke-direct {v2, p0}, Lcom/waze/ToastThread$4;-><init>(Lcom/waze/ToastThread;)V

    .line 102
    const-wide/16 v3, 0x2710

    .line 98
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/ToastThread;->mHandler:Landroid/os/Handler;

    .line 78
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error stopping toast: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
