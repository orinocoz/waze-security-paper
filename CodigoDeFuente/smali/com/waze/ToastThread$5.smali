.class Lcom/waze/ToastThread$5;
.super Ljava/lang/Object;
.source "ToastThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ToastThread;->setCustomDuration(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ToastThread;


# direct methods
.method constructor <init>(Lcom/waze/ToastThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ToastThread$5;->this$0:Lcom/waze/ToastThread;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x1f4

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/waze/ToastThread$5;->this$0:Lcom/waze/ToastThread;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :try_start_1
    iget-object v1, p0, Lcom/waze/ToastThread$5;->this$0:Lcom/waze/ToastThread;

    iget-wide v3, v1, Lcom/waze/ToastThread;->mDuration:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/waze/ToastThread$5;->this$0:Lcom/waze/ToastThread;

    iget-object v1, v1, Lcom/waze/ToastThread;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/ToastThread$5;->this$0:Lcom/waze/ToastThread;

    iget-object v1, v1, Lcom/waze/ToastThread;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/waze/ToastThread$5;->this$0:Lcom/waze/ToastThread;

    iget-object v1, v1, Lcom/waze/ToastThread;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 157
    iget-object v1, p0, Lcom/waze/ToastThread$5;->this$0:Lcom/waze/ToastThread;

    iget-object v1, v1, Lcom/waze/ToastThread;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/waze/ToastThread$5;->this$0:Lcom/waze/ToastThread;

    #getter for: Lcom/waze/ToastThread;->mDurationTestCallback:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/waze/ToastThread;->access$0(Lcom/waze/ToastThread;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    iget-object v1, p0, Lcom/waze/ToastThread$5;->this$0:Lcom/waze/ToastThread;

    iget-wide v3, v1, Lcom/waze/ToastThread;->mDuration:J

    sub-long/2addr v3, v7

    iput-wide v3, v1, Lcom/waze/ToastThread;->mDuration:J

    .line 150
    :cond_0
    monitor-exit v2

    .line 169
    :goto_0
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "Error stopping toast"

    invoke-static {v1, v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
