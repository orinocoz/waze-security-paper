.class Lcom/waze/NativeManager$176;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->InitTemperatureProfiler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final mSensorName:Ljava/lang/String;

.field final synthetic this$0:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Landroid/hardware/Sensor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$176;->this$0:Lcom/waze/NativeManager;

    .line 4695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4696
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/NativeManager$176;->mSensorName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 4713
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 4701
    iget-object v2, p0, Lcom/waze/NativeManager$176;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->mAppInitializedFlag:Z
    invoke-static {v2}, Lcom/waze/NativeManager;->access$98(Lcom/waze/NativeManager;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4710
    :cond_0
    :goto_0
    return-void

    .line 4704
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4705
    .local v0, curTime:J
    iget-object v2, p0, Lcom/waze/NativeManager$176;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->mLastTemperatureSampleTime:J
    invoke-static {v2}, Lcom/waze/NativeManager;->access$99(Lcom/waze/NativeManager;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 4706
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WAZE TEMPERATURE PROFILER. Current temperature: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4707
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Sensor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/NativeManager$176;->mSensorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4706
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 4708
    iget-object v2, p0, Lcom/waze/NativeManager$176;->this$0:Lcom/waze/NativeManager;

    #setter for: Lcom/waze/NativeManager;->mLastTemperatureSampleTime:J
    invoke-static {v2, v0, v1}, Lcom/waze/NativeManager;->access$100(Lcom/waze/NativeManager;J)V

    goto :goto_0
.end method
