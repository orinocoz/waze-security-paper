.class final Lcom/waze/NativeLocListener$WatchDogTask;
.super Ljava/util/TimerTask;
.source "NativeLocListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/NativeLocListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WatchDogTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeLocListener;


# direct methods
.method private constructor <init>(Lcom/waze/NativeLocListener;)V
    .locals 0
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/waze/NativeLocListener$WatchDogTask;->this$0:Lcom/waze/NativeLocListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/NativeLocListener;Lcom/waze/NativeLocListener$WatchDogTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/waze/NativeLocListener$WatchDogTask;-><init>(Lcom/waze/NativeLocListener;)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/NativeLocListener$WatchDogTask;)Lcom/waze/NativeLocListener;
    .locals 1
    .parameter

    .prologue
    .line 589
    iget-object v0, p0, Lcom/waze/NativeLocListener$WatchDogTask;->this$0:Lcom/waze/NativeLocListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 593
    iget-object v4, p0, Lcom/waze/NativeLocListener$WatchDogTask;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mGpsFixSent:Z
    invoke-static {v4}, Lcom/waze/NativeLocListener;->access$0(Lcom/waze/NativeLocListener;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/waze/NativeLocListener$WatchDogTask;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mLastGpsFixTime:J
    invoke-static {v6}, Lcom/waze/NativeLocListener;->access$1(Lcom/waze/NativeLocListener;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 597
    .local v2, timeSinceFix:J
    const-wide/32 v4, 0xea60

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/waze/NativeLocListener$WatchDogTask;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mHasGps:Z
    invoke-static {v4}, Lcom/waze/NativeLocListener;->access$2(Lcom/waze/NativeLocListener;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x2710

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 599
    :cond_2
    new-instance v1, Lcom/waze/NativeLocListener$WatchDogTask$1;

    invoke-direct {v1, p0}, Lcom/waze/NativeLocListener$WatchDogTask$1;-><init>(Lcom/waze/NativeLocListener$WatchDogTask;)V

    .line 605
    .local v1, startEvent:Ljava/lang/Runnable;
    new-instance v0, Lcom/waze/NativeLocListener$WatchDogTask$2;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/waze/NativeLocListener$WatchDogTask$2;-><init>(Lcom/waze/NativeLocListener$WatchDogTask;JLjava/lang/Runnable;)V

    .line 614
    .local v0, restartEvent:Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/waze/NativeLocListener$WatchDogTask;->this$0:Lcom/waze/NativeLocListener;

    const/4 v5, 0x1

    #setter for: Lcom/waze/NativeLocListener;->mGpsFixSent:Z
    invoke-static {v4, v5}, Lcom/waze/NativeLocListener;->access$3(Lcom/waze/NativeLocListener;Z)V

    .line 615
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
