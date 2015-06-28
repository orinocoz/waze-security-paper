.class public final Lcom/waze/NativeSoundManager;
.super Ljava/lang/Object;
.source "NativeSoundManager.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/NativeSoundManager$WazeAudioPlayer;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Sound_Manager"

.field public static final ROUTING_STATE_SPEAKER:I = 0x1

.field public static final ROUTING_STATE_SYSTEM:I = 0x0

.field private static final SOUND_BUFFERING_ENABLED:Z = false

.field public static final VOLUME_MAX:I = 0x64

.field private static mInstance:Lcom/waze/NativeSoundManager;


# instance fields
.field final mAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAfGained:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBTDeviceName:Ljava/lang/String;

.field private mBufferedPlayer:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

.field private mCurrentMPVolume:I

.field private mCurrentPlayer:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

.field private mDefaultDeviceName:Ljava/lang/String;

.field private volatile mIsMuted:Z

.field private mPendingCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingPlayersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPlaying:Z

.field private mRouteToSpeaker:Z

.field private mRoutingState:I

.field private mSpeakerDeviceName:Ljava/lang/String;

.field private mSystemMode:I

.field private volatile mSystemSpeakerState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/NativeSoundManager;->mInstance:Lcom/waze/NativeSoundManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    new-instance v0, Lcom/waze/NativeSoundManager$1;

    invoke-direct {v0, p0}, Lcom/waze/NativeSoundManager$1;-><init>(Lcom/waze/NativeSoundManager;)V

    iput-object v0, p0, Lcom/waze/NativeSoundManager;->mAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 690
    iput-object v2, p0, Lcom/waze/NativeSoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 691
    iput-object v2, p0, Lcom/waze/NativeSoundManager;->mSpeakerDeviceName:Ljava/lang/String;

    .line 692
    iput-object v2, p0, Lcom/waze/NativeSoundManager;->mBTDeviceName:Ljava/lang/String;

    .line 693
    iput-object v2, p0, Lcom/waze/NativeSoundManager;->mDefaultDeviceName:Ljava/lang/String;

    .line 697
    iput-boolean v1, p0, Lcom/waze/NativeSoundManager;->mPlaying:Z

    .line 698
    iput-object v2, p0, Lcom/waze/NativeSoundManager;->mBufferedPlayer:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    .line 699
    iput-object v2, p0, Lcom/waze/NativeSoundManager;->mCurrentPlayer:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    .line 701
    const/16 v0, 0x64

    iput v0, p0, Lcom/waze/NativeSoundManager;->mCurrentMPVolume:I

    .line 702
    iput-boolean v1, p0, Lcom/waze/NativeSoundManager;->mRouteToSpeaker:Z

    .line 705
    iput v1, p0, Lcom/waze/NativeSoundManager;->mRoutingState:I

    .line 707
    iput v1, p0, Lcom/waze/NativeSoundManager;->mSystemMode:I

    .line 708
    iput-boolean v1, p0, Lcom/waze/NativeSoundManager;->mAfGained:Z

    .line 710
    iput-boolean v1, p0, Lcom/waze/NativeSoundManager;->mSystemSpeakerState:Z

    .line 711
    iput-boolean v1, p0, Lcom/waze/NativeSoundManager;->mIsMuted:Z

    .line 72
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->InitSoundManagerNTV()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/NativeSoundManager;->mPendingPlayersList:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/NativeSoundManager;->mPendingCallbackList:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method private BufferNext()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method private native InitSoundManagerNTV()V
.end method

.method private PlayNext()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 366
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->shouldMuteNTV()Z

    move-result v2

    iput-boolean v2, p0, Lcom/waze/NativeSoundManager;->mIsMuted:Z

    .line 368
    iget-boolean v2, p0, Lcom/waze/NativeSoundManager;->mPlaying:Z

    if-eqz v2, :cond_0

    .line 371
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->BufferNext()V

    .line 407
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v2, p0, Lcom/waze/NativeSoundManager;->mBufferedPlayer:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    if-nez v2, :cond_2

    .line 379
    iget-object v2, p0, Lcom/waze/NativeSoundManager;->mPendingPlayersList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 381
    iget-object v2, p0, Lcom/waze/NativeSoundManager;->mPendingPlayersList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 382
    .local v1, nextFile:Ljava/lang/String;
    iget-object v2, p0, Lcom/waze/NativeSoundManager;->mPendingCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 383
    .local v0, nextCallback:Ljava/lang/Long;
    new-instance v2, Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    invoke-direct {v2, p0, v1, v0}, Lcom/waze/NativeSoundManager$WazeAudioPlayer;-><init>(Lcom/waze/NativeSoundManager;Ljava/lang/String;Ljava/lang/Long;)V

    iput-object v2, p0, Lcom/waze/NativeSoundManager;->mCurrentPlayer:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    .line 386
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->requestAf()Z

    .line 387
    iget-object v2, p0, Lcom/waze/NativeSoundManager;->mCurrentPlayer:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    invoke-virtual {v2}, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->Play()V

    .line 405
    .end local v0           #nextCallback:Ljava/lang/Long;
    .end local v1           #nextFile:Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->BufferNext()V

    goto :goto_0

    .line 391
    :cond_1
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->abandonAf()V

    goto :goto_1

    .line 397
    :cond_2
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->requestAf()Z

    .line 399
    iget-object v2, p0, Lcom/waze/NativeSoundManager;->mBufferedPlayer:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    iput-object v2, p0, Lcom/waze/NativeSoundManager;->mCurrentPlayer:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    .line 400
    iget-object v2, p0, Lcom/waze/NativeSoundManager;->mCurrentPlayer:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    invoke-virtual {v2}, Lcom/waze/NativeSoundManager$WazeAudioPlayer;->Play()V

    .line 402
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/waze/NativeSoundManager;->mBufferedPlayer:Lcom/waze/NativeSoundManager$WazeAudioPlayer;

    goto :goto_1
.end method

.method private native SoundCallbackNTV(J)V
.end method

.method private abandonAf()V
    .locals 4

    .prologue
    .line 476
    iget-boolean v1, p0, Lcom/waze/NativeSoundManager;->mAfGained:Z

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/waze/NativeSoundManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/waze/NativeSoundManager;->mAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 479
    .local v0, result:I
    const-string v1, "Sound_Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Audio focus is abandoned with state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->setRoutingSystemState()V

    .line 482
    .end local v0           #result:I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/NativeSoundManager;->mAfGained:Z

    .line 483
    return-void
.end method

.method static synthetic access$0(Lcom/waze/NativeSoundManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 697
    iput-boolean p1, p0, Lcom/waze/NativeSoundManager;->mPlaying:Z

    return-void
.end method

.method static synthetic access$1(Lcom/waze/NativeSoundManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/waze/NativeSoundManager;->mRouteToSpeaker:Z

    return v0
.end method

.method static synthetic access$2(Lcom/waze/NativeSoundManager;)F
    .locals 1
    .parameter

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->getExpVolumeValue()F

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/waze/NativeSoundManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/waze/NativeSoundManager;->mIsMuted:Z

    return v0
.end method

.method static synthetic access$4(Lcom/waze/NativeSoundManager;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->PlayNext()V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/NativeSoundManager;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 674
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeSoundManager;->SoundCallbackNTV(J)V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/NativeSoundManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/waze/NativeSoundManager;->mSpeakerDeviceName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/waze/NativeSoundManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/waze/NativeSoundManager;->mBTDeviceName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/waze/NativeSoundManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/waze/NativeSoundManager;->mDefaultDeviceName:Ljava/lang/String;

    return-void
.end method

.method public static create()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/waze/NativeSoundManager;->getInstance()Lcom/waze/NativeSoundManager;

    .line 55
    sget-object v0, Lcom/waze/NativeSoundManager;->mInstance:Lcom/waze/NativeSoundManager;

    invoke-direct {v0}, Lcom/waze/NativeSoundManager;->requestConfig()V

    .line 56
    sget-object v0, Lcom/waze/NativeSoundManager;->mInstance:Lcom/waze/NativeSoundManager;

    invoke-direct {v0}, Lcom/waze/NativeSoundManager;->saveSystemState()V

    .line 57
    sget-object v1, Lcom/waze/NativeSoundManager;->mInstance:Lcom/waze/NativeSoundManager;

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, v1, Lcom/waze/NativeSoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 58
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 3

    .prologue
    .line 320
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 321
    .local v0, ctx:Landroid/content/Context;
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 322
    .local v1, mgr:Landroid/media/AudioManager;
    return-object v1
.end method

.method private getExpVolumeValue()F
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4024

    const-wide/high16 v10, 0x3ff0

    .line 206
    const-wide/high16 v0, 0x4024

    .line 207
    .local v0, basis:D
    iget v6, p0, Lcom/waze/NativeSoundManager;->mCurrentMPVolume:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059

    div-double v4, v6, v8

    .line 208
    .local v4, transformedValue:D
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v6, v10

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v8, v10

    div-double v2, v6, v8

    .line 210
    .local v2, expValue:D
    double-to-float v6, v2

    return v6
.end method

.method public static getInstance()Lcom/waze/NativeSoundManager;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/waze/NativeSoundManager;->mInstance:Lcom/waze/NativeSoundManager;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/waze/NativeSoundManager;

    invoke-direct {v0}, Lcom/waze/NativeSoundManager;-><init>()V

    sput-object v0, Lcom/waze/NativeSoundManager;->mInstance:Lcom/waze/NativeSoundManager;

    .line 64
    :cond_0
    sget-object v0, Lcom/waze/NativeSoundManager;->mInstance:Lcom/waze/NativeSoundManager;

    return-object v0
.end method

.method private isInCall()Z
    .locals 5

    .prologue
    .line 327
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 328
    .local v0, ctx:Landroid/content/Context;
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 330
    .local v1, mgr:Landroid/telephony/TelephonyManager;
    const-string v2, "Sound_Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Current call state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestAf()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 443
    iget-boolean v1, p0, Lcom/waze/NativeSoundManager;->mAfGained:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/waze/NativeSoundManager;->mIsMuted:Z

    if-nez v1, :cond_0

    .line 446
    iget-boolean v1, p0, Lcom/waze/NativeSoundManager;->mRouteToSpeaker:Z

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/waze/NativeSoundManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/waze/NativeSoundManager;->mAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 458
    .local v0, result:I
    :goto_0
    if-ne v0, v5, :cond_2

    .line 460
    const-string v1, "Sound_Manager"

    const-string v2, "Audio focus is granted"

    invoke-static {v1, v2}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iput-boolean v5, p0, Lcom/waze/NativeSoundManager;->mAfGained:Z

    .line 469
    :goto_1
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->setRouting()V

    .line 471
    .end local v0           #result:I
    :cond_0
    iget-boolean v1, p0, Lcom/waze/NativeSoundManager;->mAfGained:Z

    return v1

    .line 454
    :cond_1
    iget-object v1, p0, Lcom/waze/NativeSoundManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/waze/NativeSoundManager;->mAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .restart local v0       #result:I
    goto :goto_0

    .line 466
    :cond_2
    const-string v1, "Sound_Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problem gaining the audio focus. Result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/waze/Logger;->w_(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iput-boolean v4, p0, Lcom/waze/NativeSoundManager;->mAfGained:Z

    goto :goto_1
.end method

.method private requestConfig()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/waze/NativeSoundManager$2;

    invoke-static {}, Lcom/waze/AppService;->getInstance()Lcom/waze/AppService;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/waze/NativeSoundManager$2;-><init>(Lcom/waze/NativeSoundManager;Ljava/util/concurrent/Executor;)V

    .line 109
    .local v0, configEvent:Lcom/waze/ifs/async/RunnableExecutor;
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/waze/ifs/async/RunnableExecutor;->run()V

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {v0}, Lcom/waze/NativeManager;->registerOnAppStartedEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    goto :goto_0
.end method

.method private saveSystemState()V
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 176
    .local v0, mgr:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    iput v1, p0, Lcom/waze/NativeSoundManager;->mSystemMode:I

    .line 177
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/waze/NativeSoundManager;->mSystemSpeakerState:Z

    .line 178
    return-void
.end method

.method private setRouting()V
    .locals 1

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->setRoutingSystemState()V

    .line 354
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-boolean v0, p0, Lcom/waze/NativeSoundManager;->mRouteToSpeaker:Z

    if-eqz v0, :cond_1

    .line 348
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->setRoutingSpeakerState()V

    goto :goto_0

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->setRoutingSystemState()V

    goto :goto_0
.end method

.method private setRoutingSpeakerState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 195
    iget v1, p0, Lcom/waze/NativeSoundManager;->mRoutingState:I

    if-eq v1, v2, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 199
    .local v0, mgr:Landroid/media/AudioManager;
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 200
    iput v2, p0, Lcom/waze/NativeSoundManager;->mRoutingState:I

    .line 202
    .end local v0           #mgr:Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private setRoutingSystemState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    iget v1, p0, Lcom/waze/NativeSoundManager;->mRoutingState:I

    if-eqz v1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 185
    .local v0, mgr:Landroid/media/AudioManager;
    iget v1, p0, Lcom/waze/NativeSoundManager;->mSystemMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 187
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 189
    iput v2, p0, Lcom/waze/NativeSoundManager;->mRoutingState:I

    .line 191
    .end local v0           #mgr:Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private native shouldMuteNTV()Z
.end method


# virtual methods
.method public LoadSoundData([B)V
    .locals 0
    .parameter "aDataDir"

    .prologue
    .line 266
    return-void
.end method

.method public PlayBuffer([B)V
    .locals 8
    .parameter "aData"

    .prologue
    .line 293
    :try_start_0
    const-string v3, "sound"

    const/4 v4, 0x0

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "sound/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 294
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 295
    .local v2, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 296
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 298
    iget-object v3, p0, Lcom/waze/NativeSoundManager;->mPendingPlayersList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->PlayNext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 303
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "Error playing sound buffer"

    invoke-static {v3, v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public PlayFile([BJ)V
    .locals 3
    .parameter "aFileName"
    .parameter "callback"

    .prologue
    .line 275
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 276
    .local v0, fileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/waze/NativeSoundManager;->mPendingPlayersList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, p0, Lcom/waze/NativeSoundManager;->mPendingCallbackList:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->PlayNext()V

    .line 281
    return-void
.end method

.method public getBTDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/waze/NativeSoundManager;->mBTDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/waze/NativeSoundManager;->mDefaultDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeakerDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/waze/NativeSoundManager;->mSpeakerDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public routeSoundToBT(Z)V
    .locals 5
    .parameter "on"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 240
    .local v0, ctx:Landroid/content/Context;
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 242
    .local v1, mgr:Landroid/media/AudioManager;
    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 246
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setBluetoothA2dpOn(Z)V

    .line 247
    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 248
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setBluetoothA2dpOn(Z)V

    .line 253
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_0
.end method

.method public routeSoundToSpeaker(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/waze/NativeSoundManager;->mRouteToSpeaker:Z

    .line 228
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 136
    const-string v0, "Sound_Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to set sound device: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/waze/NativeSoundManager;->mSpeakerDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/NativeSoundManager;->routeSoundToSpeaker(Z)V

    .line 159
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/waze/NativeSoundManager;->mDefaultDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/NativeSoundManager;->routeSoundToSpeaker(Z)V

    goto :goto_0

    .line 157
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized sound device value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVolume(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 117
    const-string v0, "Sound_Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting media player volume to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iput p1, p0, Lcom/waze/NativeSoundManager;->mCurrentMPVolume:I

    .line 120
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "Sound_Manager"

    const-string v1, "Shutting down sound manager. Restoring startup state."

    invoke-static {v0, v1}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/waze/NativeSoundManager;->setRoutingSystemState()V

    .line 218
    return-void
.end method

.method public updateConfigItems(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/waze/ConfigItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/ConfigItem;

    invoke-virtual {v2}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    .local v0, route2speaker:Z
    invoke-virtual {p0, v0}, Lcom/waze/NativeSoundManager;->routeSoundToSpeaker(Z)V

    .line 85
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/ConfigItem;

    invoke-virtual {v2}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, volume:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/waze/NativeSoundManager;->setVolume(I)V

    .line 87
    return-void
.end method
