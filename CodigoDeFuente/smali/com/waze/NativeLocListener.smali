.class public final Lcom/waze/NativeLocListener;
.super Ljava/lang/Object;
.source "NativeLocListener.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/NativeLocListener$GpsStatusListener;,
        Lcom/waze/NativeLocListener$NativeLocation;,
        Lcom/waze/NativeLocListener$WatchDogTask;
    }
.end annotation


# static fields
.field public static bIsStartCompass:Z

.field private static mInstance:Lcom/waze/NativeLocListener;


# instance fields
.field private final GPS_FIX_WATCH_DOG_PERIOD:J

.field private final GPS_LOCATION_WATCH_DOG_PERIOD:J

.field private final GPS_MOCK_DETECT_PERIOD:J

.field final I:[F

.field private final LOGGER_TAG:Ljava/lang/String;

.field R:[F

.field private final SENSOR_MASK_ACCEL:I

.field private final SENSOR_MASK_CLEAR_CACHE:I

.field private final SENSOR_MASK_COMPASS:I

.field private final SENSOR_MASK_GYRO:I

.field private final SENSOR_MASK_RESET_GPS:I

.field private final STATUS_GPS_AVAILABLE:I

.field private final STATUS_NETWORK_AVAILABLE:I

.field private final STATUS_NOT_AVAILABLE:B

.field aValues:[F

.field private mAccelData:[F

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mClearCache:Z

.field private mCompass:Landroid/hardware/Sensor;

.field private mCompassData:[F

.field private mFixWatchDog:Lcom/waze/NativeLocListener$WatchDogTask;

.field private mGpsFixSent:Z

.field private mGpsStatusListener:Lcom/waze/NativeLocListener$GpsStatusListener;

.field private mGyro:Landroid/hardware/Sensor;

.field private mGyroData:[F

.field private mHasGps:Z

.field private mLastGpsFixTime:J

.field private mLastLocation:Landroid/location/Location;

.field private mLocListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/ifs/async/RunnableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMockGpsDetect:Ljava/util/TimerTask;

.field private mResetGps:Z

.field private mRotation:Landroid/hardware/Sensor;

.field private mSatelliteNumber:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStarted:Z

.field private mStatus:I

.field mValues:[F

.field m_vforientVals:[F

.field private mbLoggedIn:Z

.field private mbReportedMockLocation:Z

.field nCompass:I

.field orientationValues:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/NativeLocListener;->bIsStartCompass:Z

    .line 739
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/NativeLocListener;->mInstance:Lcom/waze/NativeLocListener;

    return-void
.end method

.method private constructor <init>(Landroid/location/LocationManager;Landroid/hardware/SensorManager;)V
    .locals 9
    .parameter "aManager"
    .parameter "aSensorManager"

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-array v1, v7, [F

    iput-object v1, p0, Lcom/waze/NativeLocListener;->aValues:[F

    .line 407
    new-array v1, v7, [F

    iput-object v1, p0, Lcom/waze/NativeLocListener;->mValues:[F

    .line 408
    new-array v1, v7, [F

    iput-object v1, p0, Lcom/waze/NativeLocListener;->m_vforientVals:[F

    .line 409
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/waze/NativeLocListener;->R:[F

    .line 410
    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/waze/NativeLocListener;->I:[F

    .line 411
    new-array v1, v7, [F

    iput-object v1, p0, Lcom/waze/NativeLocListener;->orientationValues:[F

    .line 413
    iput v3, p0, Lcom/waze/NativeLocListener;->nCompass:I

    .line 717
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/waze/NativeLocListener;->mLocListeners:Ljava/util/ArrayList;

    .line 718
    iput-object v6, p0, Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;

    .line 719
    iput-object v6, p0, Lcom/waze/NativeLocListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 720
    iput-object v6, p0, Lcom/waze/NativeLocListener;->mGpsStatusListener:Lcom/waze/NativeLocListener$GpsStatusListener;

    .line 721
    iput-object v6, p0, Lcom/waze/NativeLocListener;->mLastLocation:Landroid/location/Location;

    .line 722
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/waze/NativeLocListener;->mLastGpsFixTime:J

    .line 723
    iput-boolean v3, p0, Lcom/waze/NativeLocListener;->mGpsFixSent:Z

    .line 724
    iput-object v6, p0, Lcom/waze/NativeLocListener;->mFixWatchDog:Lcom/waze/NativeLocListener$WatchDogTask;

    .line 725
    iput-object v6, p0, Lcom/waze/NativeLocListener;->mMockGpsDetect:Ljava/util/TimerTask;

    .line 726
    iput-boolean v3, p0, Lcom/waze/NativeLocListener;->mStarted:Z

    .line 727
    iput-boolean v3, p0, Lcom/waze/NativeLocListener;->mbReportedMockLocation:Z

    .line 728
    iput-boolean v3, p0, Lcom/waze/NativeLocListener;->mbLoggedIn:Z

    .line 730
    iput-object v6, p0, Lcom/waze/NativeLocListener;->mAccelerometer:Landroid/hardware/Sensor;

    .line 731
    iput-object v6, p0, Lcom/waze/NativeLocListener;->mGyro:Landroid/hardware/Sensor;

    .line 732
    iput-object v6, p0, Lcom/waze/NativeLocListener;->mRotation:Landroid/hardware/Sensor;

    .line 733
    iput-object v6, p0, Lcom/waze/NativeLocListener;->mCompass:Landroid/hardware/Sensor;

    .line 735
    new-array v1, v7, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/waze/NativeLocListener;->mAccelData:[F

    .line 736
    new-array v1, v7, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/waze/NativeLocListener;->mGyroData:[F

    .line 737
    new-array v1, v7, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/waze/NativeLocListener;->mCompassData:[F

    .line 742
    iput-byte v3, p0, Lcom/waze/NativeLocListener;->STATUS_NOT_AVAILABLE:B

    .line 743
    iput v2, p0, Lcom/waze/NativeLocListener;->STATUS_NETWORK_AVAILABLE:I

    .line 744
    iput v8, p0, Lcom/waze/NativeLocListener;->STATUS_GPS_AVAILABLE:I

    .line 745
    const-string v1, "LOCATION_LISTENER"

    iput-object v1, p0, Lcom/waze/NativeLocListener;->LOGGER_TAG:Ljava/lang/String;

    .line 746
    const-wide/32 v4, 0xea60

    iput-wide v4, p0, Lcom/waze/NativeLocListener;->GPS_FIX_WATCH_DOG_PERIOD:J

    .line 747
    const-wide/16 v4, 0x2710

    iput-wide v4, p0, Lcom/waze/NativeLocListener;->GPS_LOCATION_WATCH_DOG_PERIOD:J

    .line 748
    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcom/waze/NativeLocListener;->GPS_MOCK_DETECT_PERIOD:J

    .line 749
    iput v7, p0, Lcom/waze/NativeLocListener;->mStatus:I

    .line 750
    iput-boolean v3, p0, Lcom/waze/NativeLocListener;->mHasGps:Z

    .line 751
    iput v3, p0, Lcom/waze/NativeLocListener;->mSatelliteNumber:I

    .line 755
    iput v2, p0, Lcom/waze/NativeLocListener;->SENSOR_MASK_GYRO:I

    .line 756
    iput v8, p0, Lcom/waze/NativeLocListener;->SENSOR_MASK_ACCEL:I

    .line 757
    const/4 v1, 0x4

    iput v1, p0, Lcom/waze/NativeLocListener;->SENSOR_MASK_COMPASS:I

    .line 758
    const/16 v1, 0x8

    iput v1, p0, Lcom/waze/NativeLocListener;->SENSOR_MASK_RESET_GPS:I

    .line 759
    const/16 v1, 0x10

    iput v1, p0, Lcom/waze/NativeLocListener;->SENSOR_MASK_CLEAR_CACHE:I

    .line 88
    iput-object p1, p0, Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;

    .line 89
    iput-object p2, p0, Lcom/waze/NativeLocListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 90
    invoke-direct {p0}, Lcom/waze/NativeLocListener;->GetLocationSensorMaskNTV()I

    move-result v0

    .line 91
    .local v0, mask:I
    iget-object v1, p0, Lcom/waze/NativeLocListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_2

    .line 92
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/waze/NativeLocListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/NativeLocListener;->mAccelerometer:Landroid/hardware/Sensor;

    .line 95
    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/waze/NativeLocListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/NativeLocListener;->mGyro:Landroid/hardware/Sensor;

    .line 98
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/waze/NativeLocListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/NativeLocListener;->mCompass:Landroid/hardware/Sensor;

    .line 104
    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/waze/NativeLocListener;->mResetGps:Z

    .line 105
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    :goto_1
    iput-boolean v2, p0, Lcom/waze/NativeLocListener;->mClearCache:Z

    .line 108
    return-void

    :cond_3
    move v1, v3

    .line 104
    goto :goto_0

    :cond_4
    move v2, v3

    .line 105
    goto :goto_1

    .line 735
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 736
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 737
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private native GetLocationSensorMaskNTV()I
.end method

.method public static GetNativeLocation(Landroid/location/Location;)Lcom/waze/NativeLocListener$NativeLocation;
    .locals 5
    .parameter "aLocation"

    .prologue
    const-wide v3, 0x412e848000000000L

    .line 487
    new-instance v0, Lcom/waze/NativeLocListener$NativeLocation;

    invoke-direct {v0}, Lcom/waze/NativeLocListener$NativeLocation;-><init>()V

    .line 489
    .local v0, lNativeLoc:Lcom/waze/NativeLocListener$NativeLocation;
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    .line 490
    mul-double/2addr v1, v3

    .line 489
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mLongtitude:I

    .line 492
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 493
    mul-double/2addr v1, v3

    .line 492
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mLatitude:I

    .line 495
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mAltitude:I

    .line 497
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mGpsTime:I

    .line 500
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mSpeed:I

    .line 503
    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mSteering:I

    .line 505
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mAccuracy:I

    .line 507
    return-object v0
.end method

.method private native LocListenerCallbackNTV(IIIIIIIIIFFFFFFFFF)V
.end method

.method private native SatteliteListenerCallbackNTV(I)V
.end method

.method private native SetCompassNTV(I)V
.end method

.method private SetLocationAfterAppServiceStart()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/waze/NativeLocListener$1;

    invoke-static {}, Lcom/waze/AppService;->getInstance()Lcom/waze/AppService;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/waze/NativeLocListener$1;-><init>(Lcom/waze/NativeLocListener;Ljava/util/concurrent/Executor;)V

    .line 155
    .local v0, setlocationEvent:Lcom/waze/ifs/async/RunnableExecutor;
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/waze/ifs/async/RunnableExecutor;->run()V

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-static {v0}, Lcom/waze/NativeManager;->registerOnAppStartedEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    goto :goto_0
.end method

.method private UpdateNativeLayer(ILandroid/location/Location;J[F[F[F)V
    .locals 21
    .parameter "aStatus"
    .parameter "aLoc"
    .parameter "sendTime"
    .parameter "accel"
    .parameter "gyro"
    .parameter "comapss"

    .prologue
    .line 514
    const/4 v9, 0x0

    .line 516
    .local v9, isCellData:I
    if-nez p2, :cond_0

    .line 553
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/waze/NativeLocListener;->GetNativeLocation(Landroid/location/Location;)Lcom/waze/NativeLocListener$NativeLocation;

    move-result-object v20

    .line 522
    .local v20, loc:Lcom/waze/NativeLocListener$NativeLocation;
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "network"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    const/4 v9, 0x1

    .line 525
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_1

    .line 526
    const/4 v1, -0x1

    move-object/from16 v0, v20

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mAccuracy:I

    .line 530
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 532
    const/4 v9, 0x0

    .line 533
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    .line 534
    const/4 v1, -0x1

    move-object/from16 v0, v20

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mAccuracy:I

    .line 537
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3

    .line 538
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/waze/NativeLocListener;->mbLoggedIn:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/waze/NativeLocListener;->mbReportedMockLocation:Z

    if-nez v1, :cond_3

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 540
    invoke-direct/range {p0 .. p0}, Lcom/waze/NativeLocListener;->setGpsFakeStatusNTV()V

    .line 541
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/waze/NativeLocListener;->mbReportedMockLocation:Z

    .line 547
    :cond_3
    move-object/from16 v0, v20

    iget v2, v0, Lcom/waze/NativeLocListener$NativeLocation;->mGpsTime:I

    move-object/from16 v0, v20

    iget v3, v0, Lcom/waze/NativeLocListener$NativeLocation;->mLatitude:I

    .line 548
    move-object/from16 v0, v20

    iget v4, v0, Lcom/waze/NativeLocListener$NativeLocation;->mLongtitude:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/waze/NativeLocListener$NativeLocation;->mAltitude:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/waze/NativeLocListener$NativeLocation;->mSpeed:I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/waze/NativeLocListener$NativeLocation;->mSteering:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/waze/NativeLocListener$NativeLocation;->mAccuracy:I

    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, p3

    long-to-int v10, v10

    .line 550
    const/4 v1, 0x0

    aget v11, p5, v1

    const/4 v1, 0x1

    aget v12, p5, v1

    const/4 v1, 0x2

    aget v13, p5, v1

    .line 551
    const/4 v1, 0x0

    aget v14, p6, v1

    const/4 v1, 0x1

    aget v15, p6, v1

    const/4 v1, 0x2

    aget v16, p6, v1

    .line 552
    const/4 v1, 0x0

    aget v17, p7, v1

    const/4 v1, 0x1

    aget v18, p7, v1

    const/4 v1, 0x2

    aget v19, p7, v1

    move-object/from16 v1, p0

    .line 547
    invoke-direct/range {v1 .. v19}, Lcom/waze/NativeLocListener;->LocListenerCallbackNTV(IIIIIIIIIFFFFFFFFF)V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/waze/NativeLocListener;)Z
    .locals 1
    .parameter

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/waze/NativeLocListener;->mGpsFixSent:Z

    return v0
.end method

.method static synthetic access$1(Lcom/waze/NativeLocListener;)J
    .locals 2
    .parameter

    .prologue
    .line 722
    iget-wide v0, p0, Lcom/waze/NativeLocListener;->mLastGpsFixTime:J

    return-wide v0
.end method

.method static synthetic access$10(Lcom/waze/NativeLocListener;)[F
    .locals 1
    .parameter

    .prologue
    .line 736
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mGyroData:[F

    return-object v0
.end method

.method static synthetic access$11(Lcom/waze/NativeLocListener;)[F
    .locals 1
    .parameter

    .prologue
    .line 737
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mCompassData:[F

    return-object v0
.end method

.method static synthetic access$12(Lcom/waze/NativeLocListener;ILandroid/location/Location;J[F[F[F)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 510
    invoke-direct/range {p0 .. p7}, Lcom/waze/NativeLocListener;->UpdateNativeLayer(ILandroid/location/Location;J[F[F[F)V

    return-void
.end method

.method static synthetic access$13(Lcom/waze/NativeLocListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/waze/NativeLocListener;->SetCompassNTV(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/NativeLocListener;)Z
    .locals 1
    .parameter

    .prologue
    .line 750
    iget-boolean v0, p0, Lcom/waze/NativeLocListener;->mHasGps:Z

    return v0
.end method

.method static synthetic access$3(Lcom/waze/NativeLocListener;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 723
    iput-boolean p1, p0, Lcom/waze/NativeLocListener;->mGpsFixSent:Z

    return-void
.end method

.method static synthetic access$4(Lcom/waze/NativeLocListener;)Landroid/location/LocationManager;
    .locals 1
    .parameter

    .prologue
    .line 718
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/NativeLocListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/waze/NativeLocListener;->SatteliteListenerCallbackNTV(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/NativeLocListener;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 722
    iput-wide p1, p0, Lcom/waze/NativeLocListener;->mLastGpsFixTime:J

    return-void
.end method

.method static synthetic access$7(Lcom/waze/NativeLocListener;Landroid/location/Location;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/NativeLocListener;->setLastLocation(Landroid/location/Location;J)V

    return-void
.end method

.method static synthetic access$8(Lcom/waze/NativeLocListener;)I
    .locals 1
    .parameter

    .prologue
    .line 749
    iget v0, p0, Lcom/waze/NativeLocListener;->mStatus:I

    return v0
.end method

.method static synthetic access$9(Lcom/waze/NativeLocListener;)[F
    .locals 1
    .parameter

    .prologue
    .line 735
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mAccelData:[F

    return-object v0
.end method

.method public static getInstance()Lcom/waze/NativeLocListener;
    .locals 4

    .prologue
    .line 71
    sget-object v2, Lcom/waze/NativeLocListener;->mInstance:Lcom/waze/NativeLocListener;

    if-nez v2, :cond_0

    .line 73
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 74
    .local v0, locationManager:Landroid/location/LocationManager;
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 75
    .local v1, sensorManager:Landroid/hardware/SensorManager;
    new-instance v2, Lcom/waze/NativeLocListener;

    invoke-direct {v2, v0, v1}, Lcom/waze/NativeLocListener;-><init>(Landroid/location/LocationManager;Landroid/hardware/SensorManager;)V

    sput-object v2, Lcom/waze/NativeLocListener;->mInstance:Lcom/waze/NativeLocListener;

    .line 76
    sget-object v2, Lcom/waze/NativeLocListener;->mInstance:Lcom/waze/NativeLocListener;

    invoke-direct {v2}, Lcom/waze/NativeLocListener;->SetLocationAfterAppServiceStart()V

    .line 78
    :cond_0
    sget-object v2, Lcom/waze/NativeLocListener;->mInstance:Lcom/waze/NativeLocListener;

    return-object v2
.end method

.method private setCompass(I)V
    .locals 3
    .parameter "nCompass"

    .prologue
    .line 622
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 623
    .local v0, mgr:Lcom/waze/NativeManager;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    invoke-virtual {v0}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 627
    invoke-direct {p0, p1}, Lcom/waze/NativeLocListener;->SetCompassNTV(I)V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    new-instance v1, Lcom/waze/NativeLocListener$4;

    invoke-direct {v1, p0, p1}, Lcom/waze/NativeLocListener$4;-><init>(Lcom/waze/NativeLocListener;I)V

    .line 636
    .local v1, msg:Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private native setGpsFakeStatusNTV()V
.end method

.method private declared-synchronized setLastLocation(Landroid/location/Location;J)V
    .locals 2
    .parameter "lastLoc"
    .parameter "fixTime"

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iput-wide p2, p0, Lcom/waze/NativeLocListener;->mLastGpsFixTime:J

    .line 469
    :cond_0
    iput-object p1, p0, Lcom/waze/NativeLocListener;->mLastLocation:Landroid/location/Location;

    .line 470
    invoke-direct {p0}, Lcom/waze/NativeLocListener;->updateListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startWD()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 558
    iget-object v1, p0, Lcom/waze/NativeLocListener;->mFixWatchDog:Lcom/waze/NativeLocListener$WatchDogTask;

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/waze/NativeLocListener;->mFixWatchDog:Lcom/waze/NativeLocListener$WatchDogTask;

    invoke-virtual {v1}, Lcom/waze/NativeLocListener$WatchDogTask;->cancel()Z

    .line 561
    :cond_0
    new-instance v1, Lcom/waze/NativeLocListener$WatchDogTask;

    invoke-direct {v1, p0, v7}, Lcom/waze/NativeLocListener$WatchDogTask;-><init>(Lcom/waze/NativeLocListener;Lcom/waze/NativeLocListener$WatchDogTask;)V

    iput-object v1, p0, Lcom/waze/NativeLocListener;->mFixWatchDog:Lcom/waze/NativeLocListener$WatchDogTask;

    .line 565
    :try_start_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->getTimer()Ljava/util/Timer;

    move-result-object v0

    .line 566
    .local v0, timer:Ljava/util/Timer;
    iget-object v1, p0, Lcom/waze/NativeLocListener;->mFixWatchDog:Lcom/waze/NativeLocListener$WatchDogTask;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v0           #timer:Ljava/util/Timer;
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v6

    .line 570
    .local v6, ex:Ljava/lang/IllegalStateException;
    iput-object v7, p0, Lcom/waze/NativeLocListener;->mFixWatchDog:Lcom/waze/NativeLocListener$WatchDogTask;

    .line 571
    const-string v1, "WAZE"

    const-string v2, "Cannot start watchdog. The timer was canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopWD()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 577
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mFixWatchDog:Lcom/waze/NativeLocListener$WatchDogTask;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mFixWatchDog:Lcom/waze/NativeLocListener$WatchDogTask;

    invoke-virtual {v0}, Lcom/waze/NativeLocListener$WatchDogTask;->cancel()Z

    .line 580
    iput-object v1, p0, Lcom/waze/NativeLocListener;->mFixWatchDog:Lcom/waze/NativeLocListener$WatchDogTask;

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mMockGpsDetect:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mMockGpsDetect:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 585
    iput-object v1, p0, Lcom/waze/NativeLocListener;->mMockGpsDetect:Ljava/util/TimerTask;

    .line 587
    :cond_1
    return-void
.end method

.method private updateListeners()V
    .locals 3

    .prologue
    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/waze/NativeLocListener;->mLocListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 694
    return-void

    .line 691
    :cond_0
    iget-object v2, p0, Lcom/waze/NativeLocListener;->mLocListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ifs/async/RunnableExecutor;

    .line 692
    .local v1, listener:Lcom/waze/ifs/async/RunnableExecutor;
    invoke-virtual {v1}, Lcom/waze/ifs/async/RunnableExecutor;->run()V

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public RegisterCompass()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mRotation:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/NativeLocListener;->mRotation:Landroid/hardware/Sensor;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/waze/NativeLocListener;->mRotation:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 249
    return-void
.end method

.method public RemoveProximityAlert(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "pending"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V

    .line 255
    return-void
.end method

.method public SetApproximityAlert(Landroid/app/PendingIntent;DDFJ)V
    .locals 9
    .parameter "receiver"
    .parameter "lon"
    .parameter "lat"
    .parameter "radius"
    .parameter "expirationTime"

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/main/navigate/GeoFencingReceiver;->IsEntered:Z

    .line 113
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;

    move-wide v1, p4

    move-wide v3, p2

    move v5, p6

    move-wide/from16 v6, p7

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Landroid/location/LocationManager;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V

    .line 114
    return-void
.end method

.method public UnregisterCompass()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mRotation:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/waze/NativeLocListener;->mRotation:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 229
    :cond_0
    return-void
.end method

.method public declared-synchronized getLastLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLastLocation:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public gpsProviderEnabled()Z
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 404
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 12
    .parameter "location"

    .prologue
    .line 286
    if-nez p1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v11

    .line 290
    .local v11, mgr:Lcom/waze/NativeManager;
    iget v1, p0, Lcom/waze/NativeLocListener;->mStatus:I

    .line 291
    .local v1, status:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 293
    .local v3, fixTime:J
    invoke-direct {p0, p1, v3, v4}, Lcom/waze/NativeLocListener;->setLastLocation(Landroid/location/Location;J)V

    .line 295
    sget-boolean v0, Lcom/waze/NativeLocListener;->bIsStartCompass:Z

    if-eqz v0, :cond_2

    .line 297
    invoke-virtual {p0}, Lcom/waze/NativeLocListener;->RegisterCompass()V

    .line 298
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/NativeLocListener;->bIsStartCompass:Z

    .line 301
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/NativeLocListener;->mHasGps:Z

    .line 306
    :cond_3
    if-eqz v11, :cond_0

    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v11}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    iget-object v5, p0, Lcom/waze/NativeLocListener;->mAccelData:[F

    iget-object v6, p0, Lcom/waze/NativeLocListener;->mGyroData:[F

    iget-object v7, p0, Lcom/waze/NativeLocListener;->mCompassData:[F

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/waze/NativeLocListener;->UpdateNativeLayer(ILandroid/location/Location;J[F[F[F)V

    goto :goto_0

    .line 314
    :cond_4
    new-instance v5, Lcom/waze/NativeLocListener$2;

    move-object v6, p0

    move v7, v1

    move-object v8, p1

    move-wide v9, v3

    invoke-direct/range {v5 .. v10}, Lcom/waze/NativeLocListener$2;-><init>(Lcom/waze/NativeLocListener;ILandroid/location/Location;J)V

    .line 319
    .local v5, msg:Ljava/lang/Runnable;
    invoke-virtual {v11, v5}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onLogin()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/NativeLocListener;->mbLoggedIn:Z

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/NativeLocListener;->mbReportedMockLocation:Z

    .line 278
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 339
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 352
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 417
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-lt v1, v4, :cond_0

    .line 418
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 420
    :pswitch_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v2, p0, Lcom/waze/NativeLocListener;->mAccelData:[F

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/waze/NativeLocListener;->aValues:[F

    goto :goto_0

    .line 424
    :pswitch_1
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v2, p0, Lcom/waze/NativeLocListener;->mGyroData:[F

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 427
    :pswitch_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v2, p0, Lcom/waze/NativeLocListener;->mCompassData:[F

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/waze/NativeLocListener;->mValues:[F

    goto :goto_0

    .line 431
    :pswitch_3
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/waze/NativeLocListener;->m_vforientVals:[F

    .line 433
    iget-object v1, p0, Lcom/waze/NativeLocListener;->m_vforientVals:[F

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 436
    .local v0, azimuth:I
    iget v1, p0, Lcom/waze/NativeLocListener;->nCompass:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 438
    iput v0, p0, Lcom/waze/NativeLocListener;->nCompass:I

    .line 439
    iget v1, p0, Lcom/waze/NativeLocListener;->nCompass:I

    invoke-direct {p0, v1}, Lcom/waze/NativeLocListener;->setCompass(I)V

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 10
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 361
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 363
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget v0, p0, Lcom/waze/NativeLocListener;->mStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/waze/NativeLocListener;->mStatus:I

    .line 366
    :cond_0
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget v0, p0, Lcom/waze/NativeLocListener;->mStatus:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/waze/NativeLocListener;->mStatus:I

    .line 378
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 379
    .local v2, lastLoc:Landroid/location/Location;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 380
    .local v3, sendTime:J
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v8

    .line 381
    .local v8, mgr:Lcom/waze/NativeManager;
    if-eqz v2, :cond_2

    .line 383
    if-eqz v8, :cond_2

    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {v8}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 387
    iget v1, p0, Lcom/waze/NativeLocListener;->mStatus:I

    iget-object v5, p0, Lcom/waze/NativeLocListener;->mAccelData:[F

    iget-object v6, p0, Lcom/waze/NativeLocListener;->mGyroData:[F

    iget-object v7, p0, Lcom/waze/NativeLocListener;->mCompassData:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/waze/NativeLocListener;->UpdateNativeLayer(ILandroid/location/Location;J[F[F[F)V

    .line 401
    :cond_2
    :goto_1
    return-void

    .line 371
    .end local v2           #lastLoc:Landroid/location/Location;
    .end local v3           #sendTime:J
    .end local v8           #mgr:Lcom/waze/NativeManager;
    :cond_3
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    iget v0, p0, Lcom/waze/NativeLocListener;->mStatus:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/waze/NativeLocListener;->mStatus:I

    .line 373
    :cond_4
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget v0, p0, Lcom/waze/NativeLocListener;->mStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/waze/NativeLocListener;->mStatus:I

    goto :goto_0

    .line 391
    .restart local v2       #lastLoc:Landroid/location/Location;
    .restart local v3       #sendTime:J
    .restart local v8       #mgr:Lcom/waze/NativeManager;
    :cond_5
    new-instance v9, Lcom/waze/NativeLocListener$3;

    invoke-direct {v9, p0, v2, v3, v4}, Lcom/waze/NativeLocListener$3;-><init>(Lcom/waze/NativeLocListener;Landroid/location/Location;J)V

    .line 396
    .local v9, msg:Ljava/lang/Runnable;
    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public declared-synchronized registerLocListener(Lcom/waze/ifs/async/RunnableExecutor;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 450
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :cond_0
    monitor-exit p0

    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/waze/NativeLocListener;->start()V

    .line 273
    return-void
.end method

.method public start()V
    .locals 10

    .prologue
    .line 166
    :try_start_0
    invoke-virtual {p0}, Lcom/waze/NativeLocListener;->stop()V

    .line 168
    const-string v0, "LOCATION_LISTENER"

    const-string v1, "Starting location listener"

    invoke-static {v0, v1}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 178
    iget-boolean v0, p0, Lcom/waze/NativeLocListener;->mResetGps:Z

    if-eqz v0, :cond_1

    .line 179
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v6, bundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "force_xtra_injection"

    invoke-virtual {v0, v1, v2, v6}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 181
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "force_time_injection"

    invoke-virtual {v0, v1, v2, v6}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 183
    .end local v6           #bundle:Landroid/os/Bundle;
    :cond_1
    iget-boolean v0, p0, Lcom/waze/NativeLocListener;->mClearCache:Z

    if-eqz v0, :cond_2

    .line 185
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 186
    .local v7, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    .line 187
    .local v9, netInfo:Landroid/net/NetworkInfo;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "delete_aiding_data"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 191
    .end local v7           #cm:Landroid/net/ConnectivityManager;
    .end local v9           #netInfo:Landroid/net/NetworkInfo;
    :cond_2
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 194
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/NativeLocListener;->mStarted:Z

    .line 195
    const/4 v0, 0x3

    iput v0, p0, Lcom/waze/NativeLocListener;->mStatus:I

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/NativeLocListener;->mHasGps:Z

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/waze/NativeLocListener;->mLastGpsFixTime:J

    .line 199
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    .line 200
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/waze/NativeLocListener;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 202
    :cond_4
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mGyro:Landroid/hardware/Sensor;

    if-eqz v0, :cond_5

    .line 203
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/waze/NativeLocListener;->mGyro:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mCompass:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    .line 206
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/waze/NativeLocListener;->mCompass:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 209
    :cond_6
    invoke-direct {p0}, Lcom/waze/NativeLocListener;->startWD()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v8

    .line 213
    .local v8, ex:Ljava/lang/Exception;
    const-string v0, "Error starting location listener"

    invoke-static {v0, v8}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/waze/NativeLocListener;->mStarted:Z

    if-eqz v0, :cond_1

    .line 261
    const-string v0, "LOCATION_LISTENER"

    const-string v1, "Stopping location listener"

    invoke-static {v0, v1}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 263
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/waze/NativeLocListener;->stopWD()V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/NativeLocListener;->mStarted:Z

    .line 269
    :cond_1
    return-void
.end method

.method public declared-synchronized unregisterLocListener(Lcom/waze/ifs/async/RunnableExecutor;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/waze/NativeLocListener;->mLocListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
