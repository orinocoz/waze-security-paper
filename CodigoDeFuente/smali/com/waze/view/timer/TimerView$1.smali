.class Lcom/waze/view/timer/TimerView$1;
.super Ljava/lang/Object;
.source "TimerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/view/timer/TimerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/timer/TimerView;


# direct methods
.method constructor <init>(Lcom/waze/view/timer/TimerView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/timer/TimerView$1;->this$0:Lcom/waze/view/timer/TimerView;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 76
    .local v1, now:J
    const/high16 v4, 0x3f80

    iget-object v5, p0, Lcom/waze/view/timer/TimerView$1;->this$0:Lcom/waze/view/timer/TimerView;

    #getter for: Lcom/waze/view/timer/TimerView;->startTime:Ljava/util/Date;
    invoke-static {v5}, Lcom/waze/view/timer/TimerView;->access$0(Lcom/waze/view/timer/TimerView;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v5, v1, v5

    long-to-float v5, v5

    iget-object v6, p0, Lcom/waze/view/timer/TimerView$1;->this$0:Lcom/waze/view/timer/TimerView;

    #getter for: Lcom/waze/view/timer/TimerView;->time:I
    invoke-static {v6}, Lcom/waze/view/timer/TimerView;->access$1(Lcom/waze/view/timer/TimerView;)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x447a

    mul-float/2addr v6, v7

    div-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 77
    .local v3, ratio:F
    cmpg-float v4, v3, v10

    if-gez v4, :cond_0

    .line 78
    const/4 v3, 0x0

    .line 80
    :cond_0
    iget-object v4, p0, Lcom/waze/view/timer/TimerView$1;->this$0:Lcom/waze/view/timer/TimerView;

    #getter for: Lcom/waze/view/timer/TimerView;->time:I
    invoke-static {v4}, Lcom/waze/view/timer/TimerView;->access$1(Lcom/waze/view/timer/TimerView;)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/waze/view/timer/TimerView$1;->this$0:Lcom/waze/view/timer/TimerView;

    #getter for: Lcom/waze/view/timer/TimerView;->startTime:Ljava/util/Date;
    invoke-static {v6}, Lcom/waze/view/timer/TimerView;->access$0(Lcom/waze/view/timer/TimerView;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v6, v1, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 81
    .local v0, curTime:I
    if-gtz v0, :cond_1

    .line 82
    iget-object v4, p0, Lcom/waze/view/timer/TimerView$1;->this$0:Lcom/waze/view/timer/TimerView;

    invoke-virtual {v4, v11}, Lcom/waze/view/timer/TimerView;->setVisibility(I)V

    .line 84
    :cond_1
    iget-object v4, p0, Lcom/waze/view/timer/TimerView$1;->this$0:Lcom/waze/view/timer/TimerView;

    #getter for: Lcom/waze/view/timer/TimerView;->timerText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/waze/view/timer/TimerView;->access$2(Lcom/waze/view/timer/TimerView;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v4, p0, Lcom/waze/view/timer/TimerView$1;->this$0:Lcom/waze/view/timer/TimerView;

    #getter for: Lcom/waze/view/timer/TimerView;->timerCircle:Lcom/waze/view/timer/TimerCircle;
    invoke-static {v4}, Lcom/waze/view/timer/TimerView;->access$3(Lcom/waze/view/timer/TimerView;)Lcom/waze/view/timer/TimerCircle;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/waze/view/timer/TimerCircle;->setRatio(F)V

    .line 86
    iget-object v4, p0, Lcom/waze/view/timer/TimerView$1;->this$0:Lcom/waze/view/timer/TimerView;

    #getter for: Lcom/waze/view/timer/TimerView;->timerCircle:Lcom/waze/view/timer/TimerCircle;
    invoke-static {v4}, Lcom/waze/view/timer/TimerView;->access$3(Lcom/waze/view/timer/TimerView;)Lcom/waze/view/timer/TimerCircle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/view/timer/TimerCircle;->invalidate()V

    .line 87
    iget-object v4, p0, Lcom/waze/view/timer/TimerView$1;->this$0:Lcom/waze/view/timer/TimerView;

    iget-boolean v4, v4, Lcom/waze/view/timer/TimerView;->shouldStop:Z

    if-nez v4, :cond_3

    .line 88
    cmpl-float v4, v3, v10

    if-lez v4, :cond_2

    .line 89
    iget-object v4, p0, Lcom/waze/view/timer/TimerView$1;->this$0:Lcom/waze/view/timer/TimerView;

    #getter for: Lcom/waze/view/timer/TimerView;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/waze/view/timer/TimerView;->access$4(Lcom/waze/view/timer/TimerView;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x7d

    invoke-virtual {v4, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    :goto_0
    return-void

    .line 91
    :cond_2
    iget-object v4, p0, Lcom/waze/view/timer/TimerView$1;->this$0:Lcom/waze/view/timer/TimerView;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/waze/view/timer/TimerView;->expired:Z

    .line 92
    iget-object v4, p0, Lcom/waze/view/timer/TimerView$1;->this$0:Lcom/waze/view/timer/TimerView;

    invoke-virtual {v4}, Lcom/waze/view/timer/TimerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 95
    :cond_3
    iget-object v4, p0, Lcom/waze/view/timer/TimerView$1;->this$0:Lcom/waze/view/timer/TimerView;

    invoke-virtual {v4, v11}, Lcom/waze/view/timer/TimerView;->setVisibility(I)V

    goto :goto_0
.end method
