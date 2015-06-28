.class public final Lcom/waze/pioneer/PioneerManager;
.super Ljava/lang/Object;
.source "PioneerManager.java"

# interfaces
.implements Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;
.implements Ljp/pioneer/mbg/pioneerkit/IExtLocationListener;
.implements Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;
.implements Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2LocationListener;


# static fields
.field private static final ENABLED:Z = true

.field private static final LOCATION_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "WAZE_PIONEER"

.field private static mInstance:Lcom/waze/pioneer/PioneerManager;

.field private static mIsOldSdk:Z


# instance fields
.field lastFix:J

.field private mCertified:Z

.field private mDeviceInfo:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

.field private mNewDeviceInfo:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

.field private mStarted:Z

.field private mWaiting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/pioneer/PioneerManager;->mIsOldSdk:Z

    .line 485
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    .line 493
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/waze/pioneer/PioneerManager;->lastFix:J

    .line 477
    iput-boolean v2, p0, Lcom/waze/pioneer/PioneerManager;->mWaiting:Z

    .line 479
    iput-boolean v2, p0, Lcom/waze/pioneer/PioneerManager;->mStarted:Z

    .line 481
    iput-boolean v2, p0, Lcom/waze/pioneer/PioneerManager;->mCertified:Z

    .line 487
    iput-object v3, p0, Lcom/waze/pioneer/PioneerManager;->mDeviceInfo:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    .line 488
    iput-object v3, p0, Lcom/waze/pioneer/PioneerManager;->mNewDeviceInfo:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    .line 475
    return-void
.end method

.method private declared-synchronized _notify()V
    .locals 1

    .prologue
    .line 470
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/waze/pioneer/PioneerManager;->mWaiting:Z

    .line 471
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    monitor-exit p0

    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized _wait()V
    .locals 2

    .prologue
    .line 455
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/waze/pioneer/PioneerManager;->mWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 464
    monitor-exit p0

    return-void

    .line 457
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "WAZE_PIONEER"

    invoke-static {v1, v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 455
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synthetic access$0(Lcom/waze/pioneer/PioneerManager;Ljp/pioneer/mbg/pioneerkit/ExtLocation;)Lcom/waze/NativeLocListener$NativeLocation;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/waze/pioneer/PioneerManager;->getNativeLocation(Ljp/pioneer/mbg/pioneerkit/ExtLocation;)Lcom/waze/NativeLocListener$NativeLocation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/pioneer/PioneerManager;Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;)Lcom/waze/NativeLocListener$NativeLocation;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/waze/pioneer/PioneerManager;->getAAM2KitNativeLocation(Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;)Lcom/waze/NativeLocListener$NativeLocation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/pioneer/PioneerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/waze/pioneer/PioneerManager;->_notify()V

    return-void
.end method

.method public static create()Lcom/waze/pioneer/PioneerManager;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/waze/pioneer/PioneerManager;

    invoke-direct {v0}, Lcom/waze/pioneer/PioneerManager;-><init>()V

    sput-object v0, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    .line 54
    const-string v0, "WAZE_PIONEER"

    const-string v1, "Pioneer app mode enabled - will start when Waze will be fully initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Lcom/waze/pioneer/PioneerManager$1;

    invoke-static {}, Lcom/waze/AppService;->getInstance()Lcom/waze/AppService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/waze/pioneer/PioneerManager$1;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->registerOnAppStartedEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 63
    :cond_0
    sget-object v0, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    return-object v0
.end method

.method private getAAM2KitNativeLocation(Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;)Lcom/waze/NativeLocListener$NativeLocation;
    .locals 7
    .parameter "aLocation"

    .prologue
    const-wide/16 v5, 0x3e8

    const-wide v3, 0x412e848000000000L

    .line 291
    new-instance v0, Lcom/waze/NativeLocListener$NativeLocation;

    invoke-direct {v0}, Lcom/waze/NativeLocListener$NativeLocation;-><init>()V

    .line 296
    .local v0, lNativeLoc:Lcom/waze/NativeLocListener$NativeLocation;
    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->getLongitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mLongtitude:I

    .line 300
    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mLatitude:I

    .line 302
    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mAltitude:I

    .line 304
    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v5

    long-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mGpsTime:I

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v5

    long-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mGpsTime:I

    .line 310
    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->getSpeed()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mSpeed:I

    .line 313
    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->getBearing()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mSteering:I

    .line 315
    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;->getAccuracy()I

    move-result v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mAccuracy:I

    .line 317
    return-object v0
.end method

.method public static getInstance()Lcom/waze/pioneer/PioneerManager;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/waze/pioneer/PioneerManager;->create()Lcom/waze/pioneer/PioneerManager;

    .line 69
    sget-object v0, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    return-object v0
.end method

.method private getNativeLocation(Ljp/pioneer/mbg/pioneerkit/ExtLocation;)Lcom/waze/NativeLocListener$NativeLocation;
    .locals 7
    .parameter "aLocation"

    .prologue
    const-wide/16 v5, 0x3e8

    const-wide v3, 0x412e848000000000L

    .line 255
    new-instance v0, Lcom/waze/NativeLocListener$NativeLocation;

    invoke-direct {v0}, Lcom/waze/NativeLocListener$NativeLocation;-><init>()V

    .line 260
    .local v0, lNativeLoc:Lcom/waze/NativeLocListener$NativeLocation;
    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->getLongitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mLongtitude:I

    .line 264
    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mLatitude:I

    .line 266
    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mAltitude:I

    .line 268
    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v5

    long-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mGpsTime:I

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v5

    long-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mGpsTime:I

    .line 274
    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->getSpeed()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mSpeed:I

    .line 277
    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->getBearing()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mSteering:I

    .line 279
    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/ExtLocation;->getAccuracy()I

    move-result v1

    iput v1, v0, Lcom/waze/NativeLocListener$NativeLocation;->mAccuracy:I

    .line 281
    return-object v0
.end method

.method private initNativeLayer()V
    .locals 1

    .prologue
    .line 439
    new-instance v0, Lcom/waze/pioneer/PioneerManager$6;

    invoke-direct {v0, p0}, Lcom/waze/pioneer/PioneerManager$6;-><init>(Lcom/waze/pioneer/PioneerManager;)V

    .line 445
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 446
    invoke-direct {p0}, Lcom/waze/pioneer/PioneerManager;->_wait()V

    .line 447
    return-void
.end method

.method public static isActive()Z
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    iget-boolean v0, v0, Lcom/waze/pioneer/PioneerManager;->mStarted:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    iget-boolean v0, v0, Lcom/waze/pioneer/PioneerManager;->mCertified:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExtLocationActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    sget-boolean v3, Lcom/waze/pioneer/PioneerManager;->mIsOldSdk:Z

    if-eqz v3, :cond_1

    .line 129
    sget-object v3, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    iget-object v3, v3, Lcom/waze/pioneer/PioneerManager;->mDeviceInfo:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    if-eqz v3, :cond_0

    .line 130
    sget-object v3, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    iget-object v3, v3, Lcom/waze/pioneer/PioneerManager;->mDeviceInfo:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    invoke-virtual {v3}, Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;->getLocationDevice()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 137
    .local v0, locationValid:Z
    :goto_0
    sget-object v3, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    iget-boolean v3, v3, Lcom/waze/pioneer/PioneerManager;->mStarted:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    :goto_1
    return v1

    .end local v0           #locationValid:Z
    :cond_0
    move v0, v2

    .line 128
    goto :goto_0

    .line 134
    :cond_1
    sget-object v3, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    iget-object v3, v3, Lcom/waze/pioneer/PioneerManager;->mNewDeviceInfo:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    invoke-virtual {v3}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->getLocationDevice()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .restart local v0       #locationValid:Z
    :goto_2
    goto :goto_0

    .end local v0           #locationValid:Z
    :cond_2
    move v0, v2

    goto :goto_2

    .restart local v0       #locationValid:Z
    :cond_3
    move v1, v2

    .line 137
    goto :goto_1
.end method

.method private onPioneerConnected()V
    .locals 3

    .prologue
    .line 410
    const-string v1, "WAZE_PIONEER"

    const-string v2, "Pioneer connected - post event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v0, Lcom/waze/pioneer/PioneerManager$4;

    invoke-direct {v0, p0}, Lcom/waze/pioneer/PioneerManager$4;-><init>(Lcom/waze/pioneer/PioneerManager;)V

    .line 419
    .local v0, event:Ljava/lang/Runnable;
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 432
    :goto_0
    return-void

    .line 425
    :cond_0
    new-instance v1, Lcom/waze/pioneer/PioneerManager$5;

    invoke-static {}, Lcom/waze/AppService;->getInstance()Lcom/waze/AppService;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/waze/pioneer/PioneerManager$5;-><init>(Lcom/waze/pioneer/PioneerManager;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/waze/NativeManager;->registerOnAppStartedEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    goto :goto_0
.end method

.method public static start()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "Starting Pioneer manager"

    invoke-static {v0}, Lcom/waze/Logger;->ii(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/waze/pioneer/PioneerManager;->create()Lcom/waze/pioneer/PioneerManager;

    .line 81
    sget-object v0, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    invoke-direct {v0}, Lcom/waze/pioneer/PioneerManager;->initNativeLayer()V

    .line 85
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    invoke-static {v0, v1}, Ljp/pioneer/mbg/pioneerkit/PioneerKit;->pStartPioneerKit(Landroid/content/Context;Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;)Z

    .line 89
    return-void
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    iget-boolean v0, v0, Lcom/waze/pioneer/PioneerManager;->mStarted:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "Stopping Pioneer manager"

    invoke-static {v0}, Lcom/waze/Logger;->ii(Ljava/lang/String;)V

    .line 98
    sget-boolean v0, Lcom/waze/pioneer/PioneerManager;->mIsOldSdk:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    invoke-static {v0, v1}, Ljp/pioneer/mbg/pioneerkit/PioneerKit;->pStopPioneerKit(Landroid/content/Context;Ljp/pioneer/mbg/pioneerkit/IExtRequiredListener;)Z

    .line 106
    :goto_0
    sget-object v0, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/waze/pioneer/PioneerManager;->mStarted:Z

    .line 108
    :cond_0
    return-void

    .line 104
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2Kit;->pStopAAM2Kit(Landroid/content/Context;Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2RequiredListener;)Z

    goto :goto_0
.end method


# virtual methods
.method public onAAM2CertifiedResult(Z)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 322
    const-string v0, "WAZE_PIONEER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received certified AAM2 result event event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iput-boolean p1, p0, Lcom/waze/pioneer/PioneerManager;->mCertified:Z

    .line 324
    return-void
.end method

.method public onAAM2ReceiveDriveStopping(Z)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 328
    const-string v0, "WAZE_PIONEER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received drive AAM2 stopping event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method public onAAM2ReceiveLocationInfo(Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 391
    new-instance v0, Lcom/waze/pioneer/PioneerManager$3;

    invoke-direct {v0, p0, p1}, Lcom/waze/pioneer/PioneerManager$3;-><init>(Lcom/waze/pioneer/PioneerManager;Ljp/pioneer/ce/aam2/AAM2Kit/AAM2LocationInfo;)V

    .line 401
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method

.method public onAAM2ReceiveParkingSwitch(Z)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 334
    const-string v0, "WAZE_PIONEER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received parking AAM2 event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method public onAAM2RequireCertification()Ljp/pioneer/ce/aam2/AAM2Kit/AAM2CertifiedInfo;
    .locals 4

    .prologue
    .line 340
    const-string v1, "WAZE_PIONEER"

    const-string v2, "Received require AAM2 certification event."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2CertifiedInfo;

    const-string v1, "Waze"

    const-string v2, "com.waze"

    const-string v3, "bbf0f5f5ee2aad9ab239ac9a93085760"

    invoke-direct {v0, v1, v2, v3}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2CertifiedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .local v0, certInfo:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2CertifiedInfo;
    return-object v0
.end method

.method public onAAM2StartAdvancedAppMode(Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 347
    const-string v1, "WAZE_PIONEER"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received AAM2 start advanced app mode event. Pointers #: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->getPointerNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 348
    const-string v3, ". Location device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->getLocationDevice()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/pioneer/PioneerManager;->mStarted:Z

    .line 350
    iput-object p1, p0, Lcom/waze/pioneer/PioneerManager;->mNewDeviceInfo:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    .line 351
    sput-boolean v4, Lcom/waze/pioneer/PioneerManager;->mIsOldSdk:Z

    .line 353
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 354
    .local v0, mainActivity:Lcom/waze/MainActivity;
    invoke-virtual {v0}, Lcom/waze/MainActivity;->cancelSplash()V

    .line 356
    invoke-static {v4}, Lcom/waze/ifs/ui/ActivityBase;->setGlobalOrientation(I)V

    .line 359
    invoke-direct {p0}, Lcom/waze/pioneer/PioneerManager;->onPioneerConnected()V

    .line 362
    invoke-virtual {p1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->getLocationDevice()I

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    const-string v1, "WAZE_PIONEER"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Taking location from Pioneer. Current device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/waze/pioneer/PioneerManager;->mNewDeviceInfo:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    invoke-virtual {v3}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->getLocationDevice()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {p0}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2Kit;->pRegisterLocationListener(Ljp/pioneer/ce/aam2/AAM2Kit/IAAM2LocationListener;)Z

    .line 371
    :goto_0
    return-void

    .line 368
    :cond_0
    const-string v2, "WAZE_PIONEER"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "External location is not ready or disabled. Device: "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/waze/pioneer/PioneerManager;->mNewDeviceInfo:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/waze/pioneer/PioneerManager;->mNewDeviceInfo:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->getLocationDevice()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "Unavailable"

    goto :goto_1
.end method

.method public onAAM2StopAdvancedAppMode()V
    .locals 3

    .prologue
    .line 375
    const-string v1, "WAZE_PIONEER"

    const-string v2, "Received AAM2 stop advanced app mode event."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 378
    .local v0, mgr:Lcom/waze/NativeManager;
    invoke-static {}, Lcom/waze/NativeManager;->isShuttingDown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->setGpsSourceName(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Lcom/waze/NativeManager;->startLocation()V

    .line 382
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/waze/ifs/ui/ActivityBase;->setGlobalOrientation(I)V

    .line 385
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/pioneer/PioneerManager;->mStarted:Z

    .line 387
    return-void
.end method

.method public onCertifiedResult(Z)V
    .locals 3
    .parameter "result"

    .prologue
    .line 218
    const-string v0, "WAZE_PIONEER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received certified result event event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iput-boolean p1, p0, Lcom/waze/pioneer/PioneerManager;->mCertified:Z

    .line 220
    return-void
.end method

.method public onReceiveLocationInfo(Ljp/pioneer/mbg/pioneerkit/ExtLocation;)V
    .locals 1
    .parameter "loc"

    .prologue
    .line 233
    new-instance v0, Lcom/waze/pioneer/PioneerManager$2;

    invoke-direct {v0, p0, p1}, Lcom/waze/pioneer/PioneerManager$2;-><init>(Lcom/waze/pioneer/PioneerManager;Ljp/pioneer/mbg/pioneerkit/ExtLocation;)V

    .line 243
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method

.method public onReceiveParkingInfo(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 147
    const-string v0, "WAZE_PIONEER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received parking event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public onRequireCertification()Ljp/pioneer/mbg/pioneerkit/ExtCertifiedInfo;
    .locals 4

    .prologue
    .line 208
    const-string v1, "WAZE_PIONEER"

    const-string v2, "Received require certification event."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Ljp/pioneer/mbg/pioneerkit/ExtCertifiedInfo;

    const-string v1, "Waze"

    const-string v2, "com.waze"

    const-string v3, "bbf0f5f5ee2aad9ab239ac9a93085760"

    invoke-direct {v0, v1, v2, v3}, Ljp/pioneer/mbg/pioneerkit/ExtCertifiedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v0, certInfo:Ljp/pioneer/mbg/pioneerkit/ExtCertifiedInfo;
    return-object v0
.end method

.method public onStartAdvancedAppMode(Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    .line 155
    const-string v2, "WAZE_PIONEER"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received start advanced app mode event. Pointers #: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;->getPointerNum()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 156
    const-string v4, ". Location device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;->getLocationDevice()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-boolean v5, p0, Lcom/waze/pioneer/PioneerManager;->mStarted:Z

    .line 158
    iput-object p1, p0, Lcom/waze/pioneer/PioneerManager;->mDeviceInfo:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    .line 159
    sput-boolean v5, Lcom/waze/pioneer/PioneerManager;->mIsOldSdk:Z

    .line 161
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 162
    .local v0, mainActivity:Lcom/waze/MainActivity;
    invoke-virtual {v0}, Lcom/waze/MainActivity;->cancelSplash()V

    .line 164
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/waze/ifs/ui/ActivityBase;->setGlobalOrientation(I)V

    .line 167
    invoke-direct {p0}, Lcom/waze/pioneer/PioneerManager;->onPioneerConnected()V

    .line 170
    iget-object v2, p0, Lcom/waze/pioneer/PioneerManager;->mDeviceInfo:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    invoke-virtual {v2}, Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;->getLocationDevice()I

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const-string v2, "WAZE_PIONEER"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Taking location from Pioneer. Current device: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/waze/pioneer/PioneerManager;->mDeviceInfo:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    invoke-virtual {v4}, Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;->getLocationDevice()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 174
    .local v1, mgr:Lcom/waze/NativeManager;
    invoke-virtual {v1}, Lcom/waze/NativeManager;->stopLocation()V

    .line 175
    const-string v2, "PioneerV1"

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->setGpsSourceName(Ljava/lang/String;)V

    .line 176
    sget-object v2, Lcom/waze/pioneer/PioneerManager;->mInstance:Lcom/waze/pioneer/PioneerManager;

    invoke-static {v2}, Ljp/pioneer/mbg/pioneerkit/PioneerKit;->pRegisterLocationListener(Ljp/pioneer/mbg/pioneerkit/IExtLocationListener;)Z

    .line 182
    .end local v1           #mgr:Lcom/waze/NativeManager;
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string v3, "WAZE_PIONEER"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "External location is not ready or disabled. Device: "

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/waze/pioneer/PioneerManager;->mDeviceInfo:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/waze/pioneer/PioneerManager;->mDeviceInfo:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    invoke-virtual {v2}, Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;->getLocationDevice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "Unavailable"

    goto :goto_1
.end method

.method public onStopAdvancedAppMode()V
    .locals 3

    .prologue
    .line 189
    const-string v1, "WAZE_PIONEER"

    const-string v2, "Received stop advanced app mode event."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 192
    .local v0, mgr:Lcom/waze/NativeManager;
    invoke-static {}, Lcom/waze/NativeManager;->isShuttingDown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->setGpsSourceName(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Lcom/waze/NativeManager;->startLocation()V

    .line 196
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/waze/ifs/ui/ActivityBase;->setGlobalOrientation(I)V

    .line 199
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/pioneer/PioneerManager;->mStarted:Z

    .line 201
    return-void
.end method
