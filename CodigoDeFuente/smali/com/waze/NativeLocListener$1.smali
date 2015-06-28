.class Lcom/waze/NativeLocListener$1;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "NativeLocListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeLocListener;->SetLocationAfterAppServiceStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeLocListener;


# direct methods
.method constructor <init>(Lcom/waze/NativeLocListener;Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;

    .line 119
    invoke-direct {p0, p2}, Lcom/waze/ifs/async/RunnableExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/NativeLocListener$1;)Lcom/waze/NativeLocListener;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;

    return-object v0
.end method


# virtual methods
.method public event()V
    .locals 10

    .prologue
    .line 123
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v9

    .line 125
    .local v9, nm:Lcom/waze/NativeManager;
    iget-object v0, p0, Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/waze/NativeLocListener;->access$4(Lcom/waze/NativeLocListener;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 127
    .local v2, lastKnownLocation:Landroid/location/Location;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v3, 0x1388

    add-long/2addr v0, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #setter for: Lcom/waze/NativeLocListener;->mLastGpsFixTime:J
    invoke-static {v0, v3, v4}, Lcom/waze/NativeLocListener;->access$6(Lcom/waze/NativeLocListener;J)V

    .line 134
    iget-object v0, p0, Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;

    iget-object v1, p0, Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mLastGpsFixTime:J
    invoke-static {v1}, Lcom/waze/NativeLocListener;->access$1(Lcom/waze/NativeLocListener;)J

    move-result-wide v3

    #calls: Lcom/waze/NativeLocListener;->setLastLocation(Landroid/location/Location;J)V
    invoke-static {v0, v2, v3, v4}, Lcom/waze/NativeLocListener;->access$7(Lcom/waze/NativeLocListener;Landroid/location/Location;J)V

    .line 136
    if-eqz v9, :cond_0

    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v9}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;

    iget-object v1, p0, Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mStatus:I
    invoke-static {v1}, Lcom/waze/NativeLocListener;->access$8(Lcom/waze/NativeLocListener;)I

    move-result v1

    iget-object v3, p0, Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mLastGpsFixTime:J
    invoke-static {v3}, Lcom/waze/NativeLocListener;->access$1(Lcom/waze/NativeLocListener;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mAccelData:[F
    invoke-static {v5}, Lcom/waze/NativeLocListener;->access$9(Lcom/waze/NativeLocListener;)[F

    move-result-object v5

    iget-object v6, p0, Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mGyroData:[F
    invoke-static {v6}, Lcom/waze/NativeLocListener;->access$10(Lcom/waze/NativeLocListener;)[F

    move-result-object v6

    iget-object v7, p0, Lcom/waze/NativeLocListener$1;->this$0:Lcom/waze/NativeLocListener;

    #getter for: Lcom/waze/NativeLocListener;->mCompassData:[F
    invoke-static {v7}, Lcom/waze/NativeLocListener;->access$11(Lcom/waze/NativeLocListener;)[F

    move-result-object v7

    #calls: Lcom/waze/NativeLocListener;->UpdateNativeLayer(ILandroid/location/Location;J[F[F[F)V
    invoke-static/range {v0 .. v7}, Lcom/waze/NativeLocListener;->access$12(Lcom/waze/NativeLocListener;ILandroid/location/Location;J[F[F[F)V

    goto :goto_0

    .line 144
    :cond_2
    new-instance v8, Lcom/waze/NativeLocListener$1$1;

    invoke-direct {v8, p0, v2}, Lcom/waze/NativeLocListener$1$1;-><init>(Lcom/waze/NativeLocListener$1;Landroid/location/Location;)V

    .line 149
    .local v8, msg:Ljava/lang/Runnable;
    invoke-virtual {v9, v8}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
