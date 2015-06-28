.class public Lcom/waze/sensor/VoiceActivator;
.super Ljava/lang/Object;
.source "VoiceActivator.java"


# static fields
.field private static DOUBLE_WAVE_ACTIVATION_PERIOD:J

.field public static final instance:Lcom/waze/sensor/VoiceActivator;

.field private static listener:Landroid/hardware/SensorEventListener;

.field private static mActivationStartTime:J

.field private static mIsTwice:Z


# instance fields
.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/waze/sensor/VoiceActivator;

    invoke-direct {v0}, Lcom/waze/sensor/VoiceActivator;-><init>()V

    sput-object v0, Lcom/waze/sensor/VoiceActivator;->instance:Lcom/waze/sensor/VoiceActivator;

    .line 16
    new-instance v0, Lcom/waze/sensor/VoiceActivator$1;

    invoke-direct {v0}, Lcom/waze/sensor/VoiceActivator$1;-><init>()V

    sput-object v0, Lcom/waze/sensor/VoiceActivator;->listener:Landroid/hardware/SensorEventListener;

    .line 67
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/waze/sensor/VoiceActivator;->mActivationStartTime:J

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/sensor/VoiceActivator;->mIsTwice:Z

    .line 69
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/waze/sensor/VoiceActivator;->DOUBLE_WAVE_ACTIVATION_PERIOD:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/waze/sensor/VoiceActivator;->isActivated()Z

    move-result v0

    return v0
.end method

.method public static activate(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "twice"

    .prologue
    .line 34
    sput-boolean p1, Lcom/waze/sensor/VoiceActivator;->mIsTwice:Z

    .line 35
    sget-object v1, Lcom/waze/sensor/VoiceActivator;->instance:Lcom/waze/sensor/VoiceActivator;

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, v1, Lcom/waze/sensor/VoiceActivator;->sensorManager:Landroid/hardware/SensorManager;

    .line 36
    sget-object v0, Lcom/waze/sensor/VoiceActivator;->instance:Lcom/waze/sensor/VoiceActivator;

    iget-object v0, v0, Lcom/waze/sensor/VoiceActivator;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/waze/sensor/VoiceActivator;->listener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/waze/sensor/VoiceActivator;->instance:Lcom/waze/sensor/VoiceActivator;

    iget-object v2, v2, Lcom/waze/sensor/VoiceActivator;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 37
    return-void
.end method

.method public static deactivate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 39
    sget-object v1, Lcom/waze/sensor/VoiceActivator;->instance:Lcom/waze/sensor/VoiceActivator;

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, v1, Lcom/waze/sensor/VoiceActivator;->sensorManager:Landroid/hardware/SensorManager;

    .line 40
    sget-object v0, Lcom/waze/sensor/VoiceActivator;->instance:Lcom/waze/sensor/VoiceActivator;

    iget-object v0, v0, Lcom/waze/sensor/VoiceActivator;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/waze/sensor/VoiceActivator;->listener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 41
    return-void
.end method

.method private static isActivated()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, res:Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 49
    .local v3, timestamp_ms:J
    sget-wide v5, Lcom/waze/sensor/VoiceActivator;->mActivationStartTime:J

    sub-long v0, v3, v5

    .line 51
    .local v0, delta:J
    const-string v5, "VoiceActivator"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Activation delta: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-boolean v5, Lcom/waze/sensor/VoiceActivator;->mIsTwice:Z

    if-eqz v5, :cond_1

    sget-wide v5, Lcom/waze/sensor/VoiceActivator;->mActivationStartTime:J

    cmp-long v5, v5, v8

    if-eqz v5, :cond_0

    sget-wide v5, Lcom/waze/sensor/VoiceActivator;->DOUBLE_WAVE_ACTIVATION_PERIOD:J

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    .line 55
    :cond_0
    sput-wide v3, Lcom/waze/sensor/VoiceActivator;->mActivationStartTime:J

    .line 63
    :goto_0
    return v2

    .line 59
    :cond_1
    sput-wide v8, Lcom/waze/sensor/VoiceActivator;->mActivationStartTime:J

    .line 60
    const/4 v2, 0x1

    goto :goto_0
.end method
