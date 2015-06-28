.class public final Lcom/waze/NativeManager;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/NativeManager$AddressStrings;,
        Lcom/waze/NativeManager$AdsActiveContext;,
        Lcom/waze/NativeManager$CheckSDCardCallback;,
        Lcom/waze/NativeManager$CompatabilityWrapper;,
        Lcom/waze/NativeManager$DisplayNameListener;,
        Lcom/waze/NativeManager$GasSettingsListener;,
        Lcom/waze/NativeManager$IOnUserNameResult;,
        Lcom/waze/NativeManager$IRefreshFriendsDrivingData;,
        Lcom/waze/NativeManager$IResultCode;,
        Lcom/waze/NativeManager$NativeThread;,
        Lcom/waze/NativeManager$OnUrlHandleResult;,
        Lcom/waze/NativeManager$PeopleAppData;,
        Lcom/waze/NativeManager$ResPrepareThread;,
        Lcom/waze/NativeManager$UIEvent;,
        Lcom/waze/NativeManager$UIMsgDispatcher;,
        Lcom/waze/NativeManager$UrlResultRequest;,
        Lcom/waze/NativeManager$VenueCategory;,
        Lcom/waze/NativeManager$VenueFieldPoints;,
        Lcom/waze/NativeManager$VenueFieldValidators;,
        Lcom/waze/NativeManager$VenueServices;
    }
.end annotation


# static fields
.field private static final ANALYTICS_DEBUG:Z = false

.field private static final CAMERA_PREVIEW_TIMEOUT:J = 0xea60L

.field private static final CPU_PROFILER_ENABLED:Z = false

.field private static final GPS_DISABLED_WARNING_TIMEOUT:J = 0xbb8L

.field private static volatile IsSyncValid:Z = false

.field private static final MEMORY_PROFILER_ENABLED:Z = false

.field private static final MEMORY_PROFILER_PERIOD:J = 0x1388L

.field public static final NATIVE_MANAGER_NO:I = 0x4

.field public static final NATIVE_MANAGER_YES:I = 0x3

.field private static final NATIVE_THREAD_PRIORITY:I = -0x8

.field private static final PREFS_DB:Ljava/lang/String; = "WAZE MAIN PREFS"

.field private static final PREFS_KEY_UNIQUE_ID:Ljava/lang/String; = "Unique id"

.field public static final REFERRER_URL_PARAM_PREFIX:Ljava/lang/String; = "ref="

.field private static final SEKRIT:[C = null

.field private static final STORAGE_SPACE_LOW_BOUND:J = 0x4c4b40L

.field private static final TEMPERATURE_PROFILER_ENABLED:Z = false

.field private static final TEMPERATURE_PROFILER_PERIOD:J = 0x1d4c0L

.field public static UH_LOCATION_PICKER_STATE:I = 0x0

.field public static UH_SEARCH_VENUES:I = 0x0

.field public static UH_VENUE_ADD_IMAGE_RESULT:I = 0x0

.field public static UH_VENUE_STATUS:I = 0x0

.field public static final WAZE_URL_PATTERN:Ljava/lang/String; = "waze://"

.field private static final WAZE_WIDGET_ENABLED:Z

.field static bIsCheck:Z

.field public static bToCreateAcc:Z

.field public static bToUploadContacts:Z

.field private static volatile mAppShutDownFlag:Z

.field private static volatile mAppStarted:Z

.field private static mAppStartedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/ifs/async/RunnableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mCanvasConditions:Z

.field private static mInstance:Lcom/waze/NativeManager;

.field public static mInviteId:Ljava/lang/String;

.field private static mNativeCanvas:Lcom/waze/NativeCanvas;

.field private static mNativeThread:Lcom/waze/NativeManager$NativeThread;

.field private static volatile mOglDataAvailable:Z

.field private static final startSW:Lcom/waze/utils/Stopwatch;


# instance fields
.field private ApiKey:Ljava/lang/String;

.field private bIsShutDown:Z

.field public bToForceLoginWithSocial:Z

.field private handlers:Lcom/waze/ifs/async/UpdateHandlers;

.field private isAllowTripDialog:Z

.field private isGasUpdateable:Z

.field private keyguardManager:Landroid/app/KeyguardManager;

.field public mAdsData:Lcom/waze/AdsTracking$AdsData;

.field private mAppCanvasBufReady:Z

.field private mAppInitializedFlag:Z

.field private mAppLooperReady:Z

.field private mAppMediaVolume:I

.field private mAppStartPrepared:Z

.field private mCalendarAI:Lcom/waze/navigate/AddressItem;

.field private mFeatures:I

.field private mIsMenuEnabled:Z

.field private mLastTemperatureSampleTime:J

.field private mLocationListner:Lcom/waze/NativeLocListener;

.field private mNavBarManager:Lcom/waze/NavBarManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOnUserNameResultArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/NativeManager$IOnUserNameResult;",
            ">;"
        }
    .end annotation
.end field

.field private mPriorityEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressBarCommon:Lcom/waze/ifs/ui/ProgressBarDialog;

.field private mResManager:Lcom/waze/ResManager;

.field private mResPrepareThread:Lcom/waze/NativeManager$ResPrepareThread;

.field private mSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/navigate/AddressItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedAI:Lcom/waze/navigate/AddressItem;

.field private mSpeechttManager:Lcom/waze/SpeechttManagerBase;

.field private final mStartAppEvent:Ljava/lang/Runnable;

.field private mSysValScreenTimeout:I

.field private mSysValVolume:I

.field private mTemperatureEventListener:Landroid/hardware/SensorEventListener;

.field private mTimer:Ljava/util/Timer;

.field private mTimerManager:Lcom/waze/NativeTimerManager;

.field protected mTrafficStats:Lcom/waze/SessionTrafficStats;

.field private mTtsManager:Lcom/waze/TtsManager;

.field private mUIKeyEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mUIMsgDispatcher:Lcom/waze/NativeManager$UIMsgDispatcher;

.field private mUITouchEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mUrlHandlerWaiter:Lcom/waze/ifs/async/Waiter;

.field private m_NetworkInfo:Landroid/net/NetworkInfo;

.field protected shouldDisplayGasSettings:Z

.field private shutDownEvent:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 165
    new-instance v0, Ljava/lang/String;

    const-string v1, "WazeAndroid"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 165
    sput-object v0, Lcom/waze/NativeManager;->SEKRIT:[C

    .line 208
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Handler:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    sput v0, Lcom/waze/NativeManager;->UH_SEARCH_VENUES:I

    .line 209
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Handler:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    sput v0, Lcom/waze/NativeManager;->UH_VENUE_STATUS:I

    .line 210
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Handler:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    sput v0, Lcom/waze/NativeManager;->UH_VENUE_ADD_IMAGE_RESULT:I

    .line 211
    sget-object v0, Lcom/waze/utils/TicketRoller$Type;->Handler:Lcom/waze/utils/TicketRoller$Type;

    invoke-static {v0}, Lcom/waze/utils/TicketRoller;->get(Lcom/waze/utils/TicketRoller$Type;)I

    move-result v0

    sput v0, Lcom/waze/NativeManager;->UH_LOCATION_PICKER_STATE:I

    .line 987
    sget-object v0, Lcom/waze/WazeApplication;->startSW:Lcom/waze/utils/Stopwatch;

    sput-object v0, Lcom/waze/NativeManager;->startSW:Lcom/waze/utils/Stopwatch;

    .line 2976
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/NativeManager;->bIsCheck:Z

    .line 5272
    sput-object v3, Lcom/waze/NativeManager;->mNativeCanvas:Lcom/waze/NativeCanvas;

    .line 5305
    sput-boolean v2, Lcom/waze/NativeManager;->mAppShutDownFlag:Z

    .line 5312
    sput-boolean v2, Lcom/waze/NativeManager;->mAppStarted:Z

    .line 5315
    sput-boolean v2, Lcom/waze/NativeManager;->IsSyncValid:Z

    .line 5317
    sput-boolean v2, Lcom/waze/NativeManager;->mCanvasConditions:Z

    .line 5319
    sput-boolean v2, Lcom/waze/NativeManager;->mOglDataAvailable:Z

    .line 5341
    sput-object v3, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    .line 5343
    sput-boolean v2, Lcom/waze/NativeManager;->bToCreateAcc:Z

    .line 5345
    sput-object v3, Lcom/waze/NativeManager;->mInviteId:Ljava/lang/String;

    .line 5349
    sput-boolean v2, Lcom/waze/NativeManager;->bToUploadContacts:Z

    .line 5359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/waze/NativeManager;->mAppStartedEvents:Ljava/util/ArrayList;

    .line 6264
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object v2, p0, Lcom/waze/NativeManager;->m_NetworkInfo:Landroid/net/NetworkInfo;

    .line 169
    iput-boolean v3, p0, Lcom/waze/NativeManager;->bIsShutDown:Z

    .line 170
    iput-object v2, p0, Lcom/waze/NativeManager;->ApiKey:Ljava/lang/String;

    .line 171
    iput v5, p0, Lcom/waze/NativeManager;->mFeatures:I

    .line 172
    iput-object v2, p0, Lcom/waze/NativeManager;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    .line 173
    iput-object v2, p0, Lcom/waze/NativeManager;->mSharedAI:Lcom/waze/navigate/AddressItem;

    .line 174
    iput-object v2, p0, Lcom/waze/NativeManager;->mSearchResults:Ljava/util/ArrayList;

    .line 176
    iput-object v2, p0, Lcom/waze/NativeManager;->mAdsData:Lcom/waze/AdsTracking$AdsData;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/waze/NativeManager;->mOnUserNameResultArray:Ljava/util/ArrayList;

    .line 3616
    new-instance v0, Lcom/waze/NativeManager$1;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$1;-><init>(Lcom/waze/NativeManager;)V

    iput-object v0, p0, Lcom/waze/NativeManager;->mStartAppEvent:Ljava/lang/Runnable;

    .line 4044
    new-instance v0, Lcom/waze/NativeManager$2;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$2;-><init>(Lcom/waze/NativeManager;)V

    iput-object v0, p0, Lcom/waze/NativeManager;->shutDownEvent:Ljava/lang/Runnable;

    .line 5299
    iput-object v2, p0, Lcom/waze/NativeManager;->mNavBarManager:Lcom/waze/NavBarManager;

    .line 5303
    iput-object v2, p0, Lcom/waze/NativeManager;->mProgressBarCommon:Lcom/waze/ifs/ui/ProgressBarDialog;

    .line 5308
    iput-boolean v3, p0, Lcom/waze/NativeManager;->mAppInitializedFlag:Z

    .line 5309
    iput-boolean v3, p0, Lcom/waze/NativeManager;->isGasUpdateable:Z

    .line 5310
    iput-boolean v3, p0, Lcom/waze/NativeManager;->shouldDisplayGasSettings:Z

    .line 5321
    iput-boolean v3, p0, Lcom/waze/NativeManager;->mAppStartPrepared:Z

    .line 5323
    iput-boolean v3, p0, Lcom/waze/NativeManager;->mAppLooperReady:Z

    .line 5324
    iput-boolean v4, p0, Lcom/waze/NativeManager;->mAppCanvasBufReady:Z

    .line 5327
    iput-boolean v4, p0, Lcom/waze/NativeManager;->mIsMenuEnabled:Z

    .line 5339
    iput-object v2, p0, Lcom/waze/NativeManager;->mResPrepareThread:Lcom/waze/NativeManager$ResPrepareThread;

    .line 5347
    iput-boolean v3, p0, Lcom/waze/NativeManager;->bToForceLoginWithSocial:Z

    .line 5351
    iput v5, p0, Lcom/waze/NativeManager;->mAppMediaVolume:I

    .line 5356
    iput-object v2, p0, Lcom/waze/NativeManager;->mTemperatureEventListener:Landroid/hardware/SensorEventListener;

    .line 5361
    new-instance v0, Lcom/waze/ifs/async/Waiter;

    invoke-direct {v0}, Lcom/waze/ifs/async/Waiter;-><init>()V

    iput-object v0, p0, Lcom/waze/NativeManager;->mUrlHandlerWaiter:Lcom/waze/ifs/async/Waiter;

    .line 6266
    iput-boolean v4, p0, Lcom/waze/NativeManager;->isAllowTripDialog:Z

    .line 4601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/NativeManager;->mUITouchEventQueue:Ljava/util/ArrayList;

    .line 4602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/NativeManager;->mUIKeyEventQueue:Ljava/util/ArrayList;

    .line 4604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/NativeManager;->mPriorityEventQueue:Ljava/util/ArrayList;

    .line 4605
    return-void
.end method

.method private native AccessToCalendarAllowedNTV()Z
.end method

.method private native AddContactToDBNTV(Ljava/lang/String;JI)V
.end method

.method private native AddPopupNTV([I[I)V
.end method

.method private native AddToMeetingNTV([II[Ljava/lang/Object;Z)V
.end method

.method private native AppShutDownNTV()V
.end method

.method private native AppStartNTV(Ljava/lang/String;)V
.end method

.method private native AuthContactsNTV()V
.end method

.method private native AuthPhoneNumberNTV(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native AuthPinNTV(Ljava/lang/String;)V
.end method

.method private native AutoCompleteAdsClickedNTV(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native AutoCompleteAdsShownNTV(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native BackLightMonitorResetNTV()V
.end method

.method private native BeepClosedNTV(I)V
.end method

.method private native CalendarFeatureEnabledNTV()Z
.end method

.method private native CallbackNTV(IJJ)V
.end method

.method public static CheckSDCardAvailable()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 3758
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3760
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3761
    :cond_0
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    .line 3762
    .local v0, msgBox:Lcom/waze/MsgBox;
    invoke-virtual {v0, v1}, Lcom/waze/MsgBox;->setBlocking(Z)V

    .line 3764
    const-string v1, "Error"

    .line 3765
    const-string v2, "Waze can\'t access your SD card. Make sure it isn\'t mounted."

    .line 3766
    const-string v3, "Ok"

    new-instance v5, Lcom/waze/NativeManager$CheckSDCardCallback;

    invoke-direct {v5, v4}, Lcom/waze/NativeManager$CheckSDCardCallback;-><init>(Lcom/waze/NativeManager$CheckSDCardCallback;)V

    move-object v6, v4

    .line 3763
    invoke-virtual/range {v0 .. v6}, Lcom/waze/MsgBox;->Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    move v1, v11

    .line 3786
    .end local v0           #msgBox:Lcom/waze/MsgBox;
    :cond_1
    :goto_0
    return v1

    .line 3771
    :cond_2
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3772
    .local v8, fs:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .line 3773
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    .line 3772
    mul-long v9, v2, v5

    .line 3774
    .local v9, memSize:J
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Available space at "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    const-wide/32 v2, 0x4c4b40

    cmp-long v2, v9, v2

    if-gez v2, :cond_1

    .line 3776
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    .line 3777
    .restart local v0       #msgBox:Lcom/waze/MsgBox;
    invoke-virtual {v0, v1}, Lcom/waze/MsgBox;->setBlocking(Z)V

    .line 3779
    const-string v1, "Insufficient Memory"

    .line 3780
    const-string v2, "Waze needs at least 5Mb of free space on your sdcard.\nPlease free some space to continue."

    .line 3781
    const-string v3, "Ok"

    new-instance v5, Lcom/waze/NativeManager$CheckSDCardCallback;

    invoke-direct {v5, v4}, Lcom/waze/NativeManager$CheckSDCardCallback;-><init>(Lcom/waze/NativeManager$CheckSDCardCallback;)V

    move-object v6, v4

    .line 3778
    invoke-virtual/range {v0 .. v6}, Lcom/waze/MsgBox;->Show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    move v1, v11

    .line 3783
    goto :goto_0
.end method

.method private native ClearClosureObjectNTV()V
.end method

.method private native CloseAllPopupsNTV(I)V
.end method

.method private CloseTemperatureProfiler()V
    .locals 3

    .prologue
    .line 4728
    iget-object v1, p0, Lcom/waze/NativeManager;->mTemperatureEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    .line 4729
    invoke-virtual {p0}, Lcom/waze/NativeManager;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 4730
    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Lcom/waze/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4729
    check-cast v0, Landroid/hardware/SensorManager;

    .line 4731
    .local v0, mgr:Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/waze/NativeManager;->mTemperatureEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4733
    .end local v0           #mgr:Landroid/hardware/SensorManager;
    :cond_0
    return-void
.end method

.method private native ClosedProperlyNTV(ILjava/lang/String;)V
.end method

.method private native ConnectivityChangedNTV(ZILjava/lang/String;)V
.end method

.method private native ContactUploadNTV()V
.end method

.method private native CreateMeetingBulkNTV(Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;[IIIZ[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method private native CreateMeetingNTV(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native DeleteAccountNTV()V
.end method

.method private native DeleteContactsFromDataBaseNTV()V
.end method

.method private native DisconnectContactsNTV()V
.end method

.method private native EditBoxCallbackNTV(ILjava/lang/String;J)V
.end method

.method private native EditBoxCheckTypingLockNTV()Z
.end method

.method private native GetAPIKeyNTV()Ljava/lang/String;
.end method

.method private native GetAutoCompleteFeaturesNTV()I
.end method

.method private native GetContactVersionFromDBNTV(J)I
.end method

.method private native GetContactsLastAccessTimeNTV()Ljava/lang/String;
.end method

.method private native GetInviteRequestNTV(Ljava/lang/String;)V
.end method

.method private native GetIsDriveOnLeftSideNTV()Z
.end method

.method private native GetIsPushEnableNTV()Z
.end method

.method private native GetMapEditorURlNTV()Ljava/lang/String;
.end method

.method private native GetNavLinkNTV(II)Ljava/lang/String;
.end method

.method private native GetNorthUpNTV()Z
.end method

.method private native GetRegionNTV()Ljava/lang/String;
.end method

.method private native GetTitleNTV(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native GetWazeAutoCompleteAdsURLNTV()Ljava/lang/String;
.end method

.method private native GetWazeAutoCompleteURLNTV(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private InitMemoryProfiler()V
    .locals 7

    .prologue
    .line 4655
    new-instance v6, Lcom/waze/NativeManager$174;

    invoke-direct {v6, p0}, Lcom/waze/NativeManager$174;-><init>(Lcom/waze/NativeManager;)V

    .line 4673
    .local v6, memoryLog:Ljava/lang/Runnable;
    new-instance v1, Lcom/waze/NativeManager$175;

    invoke-direct {v1, p0, v6}, Lcom/waze/NativeManager$175;-><init>(Lcom/waze/NativeManager;Ljava/lang/Runnable;)V

    .line 4679
    .local v1, task:Ljava/util/TimerTask;
    sget-object v0, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->getTimer()Ljava/util/Timer;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 4680
    const-wide/16 v4, 0x1388

    .line 4679
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 4681
    return-void
.end method

.method private native InitNativeManagerNTV(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private InitTemperatureProfiler()V
    .locals 5

    .prologue
    .line 4690
    invoke-virtual {p0}, Lcom/waze/NativeManager;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    .line 4691
    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Lcom/waze/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4690
    check-cast v0, Landroid/hardware/SensorManager;

    .line 4692
    .local v0, mgr:Landroid/hardware/SensorManager;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 4693
    .local v1, sensor:Landroid/hardware/Sensor;
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/waze/NativeManager;->mLastTemperatureSampleTime:J

    .line 4694
    if-eqz v1, :cond_0

    .line 4695
    new-instance v2, Lcom/waze/NativeManager$176;

    invoke-direct {v2, p0, v1}, Lcom/waze/NativeManager$176;-><init>(Lcom/waze/NativeManager;Landroid/hardware/Sensor;)V

    iput-object v2, p0, Lcom/waze/NativeManager;->mTemperatureEventListener:Landroid/hardware/SensorEventListener;

    .line 4716
    iget-object v2, p0, Lcom/waze/NativeManager;->mTemperatureEventListener:Landroid/hardware/SensorEventListener;

    .line 4717
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/waze/NativeManager;->mUIMsgDispatcher:Lcom/waze/NativeManager$UIMsgDispatcher;

    .line 4716
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 4719
    :cond_0
    return-void
.end method

.method private native InviteToMeetingNTV([Ljava/lang/Object;[III)V
.end method

.method public static IsAppStarted()Z
    .locals 1

    .prologue
    .line 1107
    sget-boolean v0, Lcom/waze/NativeManager;->mAppStarted:Z

    return v0
.end method

.method private native IsContactExistInDBNTV(J)Z
.end method

.method private native IsPickUpLaterNTV()Z
.end method

.method public static IsSyncValid()Z
    .locals 1

    .prologue
    .line 1111
    sget-boolean v0, Lcom/waze/NativeManager;->IsSyncValid:Z

    return v0
.end method

.method private native IsUpgradeNTV()Z
.end method

.method public static LoadNativeLib()V
    .locals 4

    .prologue
    .line 4462
    :try_start_0
    const-string v1, "waze"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4463
    const-string v1, "WAZE"

    const-string v2, "Library is loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 4470
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 4464
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 4465
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: Could not load library  - exiting! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4466
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4465
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4467
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 4468
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private native LogOutNTV()V
.end method

.method private native NativeMsgDispatcherNTV(II)V
.end method

.method public static Notify(J)V
    .locals 3
    .parameter "aDelay"

    .prologue
    .line 4124
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    .line 4126
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4133
    :cond_0
    :goto_0
    sget-object v1, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    if-eqz v1, :cond_1

    .line 4134
    sget-object v2, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    monitor-enter v2

    .line 4135
    :try_start_1
    sget-object v1, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4134
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4138
    :cond_1
    return-void

    .line 4127
    :catch_0
    move-exception v0

    .line 4128
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "Error waiting for the manager notification. "

    invoke-static {v1, v0}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4134
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private native OpenAutoCompletePlaceNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native OpenNavigateTipNTV()V
.end method

.method private native OpenPopUpByIndexNTV(II)V
.end method

.method private native OpenRoutingSocketNTV()V
.end method

.method private native OpenSearchSocketNTV()V
.end method

.method public static Post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "aMsg"

    .prologue
    .line 3102
    sget-object v0, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    if-eqz v0, :cond_0

    .line 3103
    sget-object v0, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    invoke-virtual {v0, p0}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 3105
    :cond_0
    return-void
.end method

.method public static Post(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "aMsg"
    .parameter "aDelayMillis"

    .prologue
    .line 3112
    sget-object v0, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    if-eqz v0, :cond_0

    .line 3113
    sget-object v0, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;J)V

    .line 3115
    :cond_0
    return-void
.end method

.method private native RealtimeLoginNTV()V
.end method

.method private native RealtimeLogoutNTV()V
.end method

.method private native RemoveContactFromDBNTV(J)V
.end method

.method private native SendGoogleNowTokenNTV(Ljava/lang/String;)V
.end method

.method private native SendPickUpRequestNTV()V
.end method

.method private native SendShareMyRideNTV()V
.end method

.method private native SetAllowSendMailNTV(Z)V
.end method

.method private native SetContactsAccessNTV(Z)V
.end method

.method private native SetContactsLastAccessTimeNTV(Ljava/lang/String;)V
.end method

.method private native SetLimitCenterNTV(IIIZ)V
.end method

.method private native SetNeverShowGasPopAgainNTV(Z)V
.end method

.method private native SetNorthUpNTV(I)V
.end method

.method private native SetPhoneIsFirstTimeNTV(Z)V
.end method

.method private native SetPickUpLaterNTV(Z)V
.end method

.method private native SetPushNotificationNTV(Ljava/lang/String;Z)V
.end method

.method private native SetSocialIsFirstTimeNTV(Z)V
.end method

.method private native SetUpgradeRunNTV(B)V
.end method

.method private native SetVoiceActionStrNTV([Ljava/lang/Object;)V
.end method

.method private native SetparkedNTV(II)V
.end method

.method private native ShowGpsDisabledWarningNTV(I)V
.end method

.method private native SignUplogAnalyticsStrNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public static Start()Lcom/waze/NativeManager;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 994
    sget-object v0, Lcom/waze/NativeManager;->startSW:Lcom/waze/utils/Stopwatch;

    const-string v1, "NativeManager Start"

    invoke-virtual {v0, v1, v3}, Lcom/waze/utils/Stopwatch;->startDelta(Ljava/lang/String;Z)J

    .line 996
    sget-object v0, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    if-eqz v0, :cond_0

    .line 997
    sget-object v0, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    .line 1021
    :goto_0
    return-object v0

    .line 1000
    :cond_0
    new-instance v0, Lcom/waze/NativeManager;

    invoke-direct {v0}, Lcom/waze/NativeManager;-><init>()V

    sput-object v0, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    .line 1003
    new-instance v0, Lcom/waze/NativeManager$NativeThread;

    sget-object v1, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Native Thread"

    invoke-direct {v0, v1, v2}, Lcom/waze/NativeManager$NativeThread;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    sput-object v0, Lcom/waze/NativeManager;->mNativeThread:Lcom/waze/NativeManager$NativeThread;

    .line 1005
    sget-object v0, Lcom/waze/NativeManager;->mNativeThread:Lcom/waze/NativeManager$NativeThread;

    invoke-virtual {v0}, Lcom/waze/NativeManager$NativeThread;->start()V

    .line 1007
    sget-object v0, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    invoke-direct {v0}, Lcom/waze/NativeManager;->waitCreate()V

    .line 1009
    sget-object v0, Lcom/waze/NativeManager;->startSW:Lcom/waze/utils/Stopwatch;

    const-string v1, "NativeManager Start After wait"

    invoke-virtual {v0, v1, v3}, Lcom/waze/utils/Stopwatch;->startDelta(Ljava/lang/String;Z)J

    .line 1010
    const-string v0, "WAZE"

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Before changing native thread priority, current priority is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1012
    sget-object v2, Lcom/waze/NativeManager;->mNativeThread:Lcom/waze/NativeManager$NativeThread;

    invoke-virtual {v2}, Lcom/waze/NativeManager$NativeThread;->getThreadId()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1011
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1010
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    sget-object v0, Lcom/waze/NativeManager;->mNativeThread:Lcom/waze/NativeManager$NativeThread;

    invoke-virtual {v0}, Lcom/waze/NativeManager$NativeThread;->getThreadId()I

    move-result v0

    .line 1014
    const/4 v1, -0x8

    .line 1013
    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1019
    sget-object v0, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    new-instance v1, Lcom/waze/ifs/async/UpdateHandlers;

    invoke-direct {v1}, Lcom/waze/ifs/async/UpdateHandlers;-><init>()V

    iput-object v1, v0, Lcom/waze/NativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;

    .line 1021
    sget-object v0, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    goto :goto_0
.end method

.method private native StartClosureObjectNTV(ZIZ)V
.end method

.method private native StopFollowNTV()V
.end method

.method private native SuggestUserNameInitNTV()V
.end method

.method private native SuggestUserNameTerminateNTV(Ljava/lang/String;)V
.end method

.method private native SuggsetUserNameRequestNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native TakePictureCallbackNTV(I)V
.end method

.method private native UnsetLimitCenterNTV(Z)V
.end method

.method private native UpdateSharePermissionsNTV(Z)V
.end method

.method private native UploadProfileImageNTV(Ljava/lang/String;)V
.end method

.method private native UrlHandlerNTV(Ljava/lang/String;)Z
.end method

.method public static Wait()V
    .locals 3

    .prologue
    .line 4144
    sget-object v1, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    if-eqz v1, :cond_0

    .line 4146
    :try_start_0
    sget-object v2, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4147
    :try_start_1
    sget-object v1, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 4146
    monitor-exit v2

    .line 4153
    .local v0, ex:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 4146
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4149
    :catch_0
    move-exception v0

    .line 4150
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "Error waiting"

    invoke-static {v1, v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private WarnGpsDisabled()V
    .locals 3

    .prologue
    .line 4579
    new-instance v0, Lcom/waze/NativeManager$173;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$173;-><init>(Lcom/waze/NativeManager;)V

    .line 4597
    .local v0, r:Ljava/lang/Runnable;
    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;J)V

    .line 4598
    return-void
.end method

.method static synthetic access$0()Lcom/waze/utils/Stopwatch;
    .locals 1

    .prologue
    .line 987
    sget-object v0, Lcom/waze/NativeManager;->startSW:Lcom/waze/utils/Stopwatch;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3594
    invoke-direct {p0}, Lcom/waze/NativeManager;->waitOglData()V

    return-void
.end method

.method static synthetic access$10(Lcom/waze/NativeManager;)Lcom/waze/ifs/async/Waiter;
    .locals 1
    .parameter

    .prologue
    .line 5361
    iget-object v0, p0, Lcom/waze/NativeManager;->mUrlHandlerWaiter:Lcom/waze/ifs/async/Waiter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/waze/NativeManager;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5357
    iput-wide p1, p0, Lcom/waze/NativeManager;->mLastTemperatureSampleTime:J

    return-void
.end method

.method static synthetic access$101(Lcom/waze/NativeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 5108
    invoke-direct {p0}, Lcom/waze/NativeManager;->asrCancelNTV()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5088
    invoke-direct {p0}, Lcom/waze/NativeManager;->StopFollowNTV()V

    return-void
.end method

.method static synthetic access$103(Lcom/waze/NativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5090
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->BeepClosedNTV(I)V

    return-void
.end method

.method static synthetic access$104(Lcom/waze/NativeManager;J[Ljava/lang/Object;[F)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/NativeManager;->asrListenCallbackNTV(J[Ljava/lang/Object;[F)V

    return-void
.end method

.method static synthetic access$105(Lcom/waze/NativeManager;Ljava/lang/String;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5113
    invoke-direct/range {p0 .. p5}, Lcom/waze/NativeManager;->editTextDialogCallbackNTV(Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$106(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5116
    invoke-direct {p0}, Lcom/waze/NativeManager;->DeleteAccountNTV()V

    return-void
.end method

.method static synthetic access$107(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5118
    invoke-direct {p0}, Lcom/waze/NativeManager;->LogOutNTV()V

    return-void
.end method

.method static synthetic access$108(Lcom/waze/NativeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 5127
    invoke-direct {p0}, Lcom/waze/NativeManager;->shouldDisplayGasSettingsNTV()Z

    move-result v0

    return v0
.end method

.method static synthetic access$109(Lcom/waze/NativeManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 5125
    invoke-direct {p0}, Lcom/waze/NativeManager;->getDisplayNameNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/waze/NativeManager;Lcom/waze/NativeManager$UIMsgDispatcher;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5285
    iput-object p1, p0, Lcom/waze/NativeManager;->mUIMsgDispatcher:Lcom/waze/NativeManager$UIMsgDispatcher;

    return-void
.end method

.method static synthetic access$110(Lcom/waze/NativeManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4810
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->GetTitleNTV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$111(Lcom/waze/NativeManager;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4833
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/NativeManager;->logAnalyticsNTV(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$112(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4837
    invoke-direct {p0}, Lcom/waze/NativeManager;->logAnalyticsFlushNTV()V

    return-void
.end method

.method static synthetic access$113(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4834
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/NativeManager;->logAnalyticsIntNTV(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$114(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4835
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/NativeManager;->logAnalyticsStrNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$115(Lcom/waze/NativeManager;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/waze/NativeManager;->m_NetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$116(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4836
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/NativeManager;->SignUplogAnalyticsStrNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$117(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5129
    invoke-direct {p0}, Lcom/waze/NativeManager;->onAppForegroundNTV()V

    return-void
.end method

.method static synthetic access$118(Lcom/waze/NativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4788
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->SetAllowSendMailNTV(Z)V

    return-void
.end method

.method static synthetic access$119(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5131
    invoke-direct {p0}, Lcom/waze/NativeManager;->onAppBackgroundNTV()V

    return-void
.end method

.method static synthetic access$12(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1024
    invoke-direct {p0}, Lcom/waze/NativeManager;->notifyCreate()V

    return-void
.end method

.method static synthetic access$120(Lcom/waze/NativeManager;)Lcom/waze/LayoutManager;
    .locals 1
    .parameter

    .prologue
    .line 6314
    invoke-direct {p0}, Lcom/waze/NativeManager;->getLayoutManager()Lcom/waze/LayoutManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13()Lcom/waze/NativeManager;
    .locals 1

    .prologue
    .line 5341
    sget-object v0, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$14(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3671
    invoke-direct {p0}, Lcom/waze/NativeManager;->prepareAppStart()V

    return-void
.end method

.method static synthetic access$15(Lcom/waze/NativeManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 3616
    iget-object v0, p0, Lcom/waze/NativeManager;->mStartAppEvent:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$16(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4610
    invoke-direct {p0}, Lcom/waze/NativeManager;->appLayerShutDown()V

    return-void
.end method

.method static synthetic access$17()Z
    .locals 1

    .prologue
    .line 3707
    invoke-static {}, Lcom/waze/NativeManager;->startApp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$18(Lcom/waze/NativeManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4854
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeManager;->NativeMsgDispatcherNTV(II)V

    return-void
.end method

.method static synthetic access$19(Lcom/waze/NativeManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 5288
    iget-object v0, p0, Lcom/waze/NativeManager;->mUITouchEventQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2()Lcom/waze/NativeCanvas;
    .locals 1

    .prologue
    .line 5272
    sget-object v0, Lcom/waze/NativeManager;->mNativeCanvas:Lcom/waze/NativeCanvas;

    return-object v0
.end method

.method static synthetic access$20(Lcom/waze/NativeManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 5290
    iget-object v0, p0, Lcom/waze/NativeManager;->mUIKeyEventQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$21(Lcom/waze/NativeManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 5293
    iget-object v0, p0, Lcom/waze/NativeManager;->mPriorityEventQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$22(Lcom/waze/NativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4904
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->GetInviteRequestNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23(Lcom/waze/NativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4902
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->SetContactsLastAccessTimeNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24(Lcom/waze/NativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4906
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->SetContactsAccessNTV(Z)V

    return-void
.end method

.method static synthetic access$25(Lcom/waze/NativeManager;Ljava/lang/String;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5038
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/NativeManager;->AddContactToDBNTV(Ljava/lang/String;JI)V

    return-void
.end method

.method static synthetic access$26(Lcom/waze/NativeManager;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5040
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeManager;->RemoveContactFromDBNTV(J)V

    return-void
.end method

.method static synthetic access$27(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5034
    invoke-direct {p0}, Lcom/waze/NativeManager;->SendPickUpRequestNTV()V

    return-void
.end method

.method static synthetic access$28(Lcom/waze/NativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5036
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->UpdateSharePermissionsNTV(Z)V

    return-void
.end method

.method static synthetic access$29(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5048
    invoke-direct {p0}, Lcom/waze/NativeManager;->DisconnectContactsNTV()V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/NativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4859
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->AppStartNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$30(Lcom/waze/NativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5050
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->UploadProfileImageNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$31(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5052
    invoke-direct {p0}, Lcom/waze/NativeManager;->ContactUploadNTV()V

    return-void
.end method

.method static synthetic access$32(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5054
    invoke-direct/range {p0 .. p5}, Lcom/waze/NativeManager;->AuthPhoneNumberNTV(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$33(Lcom/waze/NativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5056
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->AuthPinNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$34(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5058
    invoke-direct {p0}, Lcom/waze/NativeManager;->AuthContactsNTV()V

    return-void
.end method

.method static synthetic access$35(Lcom/waze/NativeManager;Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/waze/NativeManager;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    return-void
.end method

.method static synthetic access$36(Lcom/waze/NativeManager;)Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/waze/NativeManager;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    return-object v0
.end method

.method static synthetic access$37(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5060
    invoke-direct/range {p0 .. p10}, Lcom/waze/NativeManager;->OpenAutoCompletePlaceNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$38(Lcom/waze/NativeManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5062
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeManager;->OpenPopUpByIndexNTV(II)V

    return-void
.end method

.method static synthetic access$39(Lcom/waze/NativeManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4894
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeManager;->SetparkedNTV(II)V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4578
    invoke-direct {p0}, Lcom/waze/NativeManager;->WarnGpsDisabled()V

    return-void
.end method

.method static synthetic access$40(Lcom/waze/NativeManager;[I[I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5064
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeManager;->AddPopupNTV([I[I)V

    return-void
.end method

.method static synthetic access$41(Lcom/waze/NativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5066
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->CloseAllPopupsNTV(I)V

    return-void
.end method

.method static synthetic access$42(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5070
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/NativeManager;->AutoCompleteAdsShownNTV(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$43(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5072
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/NativeManager;->AutoCompleteAdsClickedNTV(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$44(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5074
    invoke-direct {p0}, Lcom/waze/NativeManager;->RealtimeLogoutNTV()V

    return-void
.end method

.method static synthetic access$45(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5076
    invoke-direct {p0}, Lcom/waze/NativeManager;->RealtimeLoginNTV()V

    return-void
.end method

.method static synthetic access$46(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4802
    invoke-direct {p0}, Lcom/waze/NativeManager;->SuggestUserNameInitNTV()V

    return-void
.end method

.method static synthetic access$47(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4771
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/NativeManager;->SuggsetUserNameRequestNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$48(Lcom/waze/NativeManager;[Ljava/lang/Object;[III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4778
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/NativeManager;->InviteToMeetingNTV([Ljava/lang/Object;[III)V

    return-void
.end method

.method static synthetic access$49(Lcom/waze/NativeManager;[II[Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4781
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/NativeManager;->AddToMeetingNTV([II[Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4509
    invoke-direct {p0}, Lcom/waze/NativeManager;->postOnAppStartedEvents()V

    return-void
.end method

.method static synthetic access$50(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4773
    invoke-direct/range {p0 .. p8}, Lcom/waze/NativeManager;->CreateMeetingNTV(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$51(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;[IIIZ[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4775
    invoke-direct/range {p0 .. p16}, Lcom/waze/NativeManager;->CreateMeetingBulkNTV(Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;[IIIZ[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$52(Lcom/waze/NativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4804
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->SuggestUserNameTerminateNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$53(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4800
    invoke-direct {p0}, Lcom/waze/NativeManager;->OpenSearchSocketNTV()V

    return-void
.end method

.method static synthetic access$54(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4806
    invoke-direct {p0}, Lcom/waze/NativeManager;->OpenRoutingSocketNTV()V

    return-void
.end method

.method static synthetic access$55(Lcom/waze/NativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5032
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->SetNeverShowGasPopAgainNTV(Z)V

    return-void
.end method

.method static synthetic access$56(Lcom/waze/NativeManager;IJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4968
    invoke-direct/range {p0 .. p5}, Lcom/waze/NativeManager;->CallbackNTV(IJJ)V

    return-void
.end method

.method static synthetic access$57(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5078
    invoke-direct {p0}, Lcom/waze/NativeManager;->SendShareMyRideNTV()V

    return-void
.end method

.method static synthetic access$58(Lcom/waze/NativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5080
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->SendGoogleNowTokenNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$59(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5082
    invoke-direct {p0}, Lcom/waze/NativeManager;->OpenNavigateTipNTV()V

    return-void
.end method

.method static synthetic access$6(Z)V
    .locals 0
    .parameter

    .prologue
    .line 5312
    sput-boolean p0, Lcom/waze/NativeManager;->mAppStarted:Z

    return-void
.end method

.method static synthetic access$60(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4920
    invoke-direct/range {p0 .. p9}, Lcom/waze/NativeManager;->sendAlertRequestNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic access$61(Lcom/waze/NativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4938
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->savePoiPositionNTV(Z)V

    return-void
.end method

.method static synthetic access$62(Lcom/waze/NativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4812
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->SetSocialIsFirstTimeNTV(Z)V

    return-void
.end method

.method static synthetic access$63(Lcom/waze/NativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4824
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->SetPhoneIsFirstTimeNTV(Z)V

    return-void
.end method

.method static synthetic access$64(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4940
    invoke-direct {p0}, Lcom/waze/NativeManager;->restorePoiFocusNTV()V

    return-void
.end method

.method static synthetic access$65(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4960
    invoke-direct {p0}, Lcom/waze/NativeManager;->ClearClosureObjectNTV()V

    return-void
.end method

.method static synthetic access$66(Lcom/waze/NativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4826
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->SetPickUpLaterNTV(Z)V

    return-void
.end method

.method static synthetic access$67(Lcom/waze/NativeManager;ZIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4962
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/NativeManager;->StartClosureObjectNTV(ZIZ)V

    return-void
.end method

.method static synthetic access$68(Lcom/waze/NativeManager;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4964
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->SetVoiceActionStrNTV([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$69(Lcom/waze/NativeManager;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4918
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeManager;->SetPushNotificationNTV(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$7(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 6327
    invoke-direct {p0}, Lcom/waze/NativeManager;->runTests()V

    return-void
.end method

.method static synthetic access$70(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4769
    invoke-direct {p0}, Lcom/waze/NativeManager;->DeleteContactsFromDataBaseNTV()V

    return-void
.end method

.method static synthetic access$71(Lcom/waze/NativeManager;ZILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4886
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/NativeManager;->ConnectivityChangedNTV(ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$72(Lcom/waze/NativeManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/waze/NativeManager;->mOnUserNameResultArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$73(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2555
    invoke-direct {p0}, Lcom/waze/NativeManager;->closeProgressPopup()V

    return-void
.end method

.method static synthetic access$74(Lcom/waze/NativeManager;Lcom/waze/ifs/ui/ProgressBarDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5303
    iput-object p1, p0, Lcom/waze/NativeManager;->mProgressBarCommon:Lcom/waze/ifs/ui/ProgressBarDialog;

    return-void
.end method

.method static synthetic access$75(Lcom/waze/NativeManager;)Lcom/waze/ifs/ui/ProgressBarDialog;
    .locals 1
    .parameter

    .prologue
    .line 5303
    iget-object v0, p0, Lcom/waze/NativeManager;->mProgressBarCommon:Lcom/waze/ifs/ui/ProgressBarDialog;

    return-object v0
.end method

.method static synthetic access$76(Lcom/waze/NativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4790
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->SetNorthUpNTV(I)V

    return-void
.end method

.method static synthetic access$77(Lcom/waze/NativeManager;IIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4794
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/NativeManager;->SetLimitCenterNTV(IIIZ)V

    return-void
.end method

.method static synthetic access$78(Lcom/waze/NativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4796
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->UnsetLimitCenterNTV(Z)V

    return-void
.end method

.method static synthetic access$79(Lcom/waze/NativeManager;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5168
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/NativeManager;->venueCreateNTV(Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4861
    invoke-direct {p0}, Lcom/waze/NativeManager;->AppShutDownNTV()V

    return-void
.end method

.method static synthetic access$80(Lcom/waze/NativeManager;Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5174
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/NativeManager;->venueUpdateNTV(Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$81(Lcom/waze/NativeManager;Lcom/waze/reports/VenueData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5177
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->venueSaveNavNTV(Lcom/waze/reports/VenueData;)V

    return-void
.end method

.method static synthetic access$82(Lcom/waze/NativeManager;Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5179
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/NativeManager;->venueGetNTV(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$83(Lcom/waze/NativeManager;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5181
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/NativeManager;->venueFlagNTV(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$84(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5183
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/NativeManager;->venueFlagImageNTV(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$85(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5185
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeManager;->venueLikeImageNTV(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$86(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5189
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeManager;->venueUnlikeImageNTV(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$87(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5191
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeManager;->venueDeleteImageNTV(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$88(Lcom/waze/NativeManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5193
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeManager;->venueSearchNTV(II)V

    return-void
.end method

.method static synthetic access$89(Lcom/waze/NativeManager;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5264
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/NativeManager;->callCallbackIntNTV(JI)V

    return-void
.end method

.method static synthetic access$9(Lcom/waze/NativeManager;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4766
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->UrlHandlerNTV(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$90(Lcom/waze/NativeManager;ILjava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4877
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/NativeManager;->EditBoxCallbackNTV(ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$91(Lcom/waze/NativeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 4883
    invoke-direct {p0}, Lcom/waze/NativeManager;->EditBoxCheckTypingLockNTV()Z

    move-result v0

    return v0
.end method

.method static synthetic access$92(Lcom/waze/NativeManager;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 5301
    iget-object v0, p0, Lcom/waze/NativeManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$93(Lcom/waze/NativeManager;Landroid/app/NotificationManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5301
    iput-object p1, p0, Lcom/waze/NativeManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic access$94(Z)V
    .locals 0
    .parameter

    .prologue
    .line 5305
    sput-boolean p0, Lcom/waze/NativeManager;->mAppShutDownFlag:Z

    return-void
.end method

.method static synthetic access$95(Lcom/waze/NativeManager;)Lcom/waze/NativeTimerManager;
    .locals 1
    .parameter

    .prologue
    .line 5278
    iget-object v0, p0, Lcom/waze/NativeManager;->mTimerManager:Lcom/waze/NativeTimerManager;

    return-object v0
.end method

.method static synthetic access$96(Lcom/waze/NativeManager;)Lcom/waze/NativeLocListener;
    .locals 1
    .parameter

    .prologue
    .line 5297
    iget-object v0, p0, Lcom/waze/NativeManager;->mLocationListner:Lcom/waze/NativeLocListener;

    return-object v0
.end method

.method static synthetic access$97(Lcom/waze/NativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4863
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->ShowGpsDisabledWarningNTV(I)V

    return-void
.end method

.method static synthetic access$98(Lcom/waze/NativeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 5308
    iget-boolean v0, p0, Lcom/waze/NativeManager;->mAppInitializedFlag:Z

    return v0
.end method

.method static synthetic access$99(Lcom/waze/NativeManager;)J
    .locals 2
    .parameter

    .prologue
    .line 5357
    iget-wide v0, p0, Lcom/waze/NativeManager;->mLastTemperatureSampleTime:J

    return-wide v0
.end method

.method private analyticsDebug(Ljava/lang/String;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 6254
    return-void
.end method

.method private appLayerShutDown()V
    .locals 1

    .prologue
    .line 4611
    invoke-static {}, Lcom/waze/NativeSoundManager;->getInstance()Lcom/waze/NativeSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeSoundManager;->shutdown()V

    .line 4612
    invoke-static {}, Lcom/waze/ifs/ui/ShutdownManager;->start()V

    .line 4615
    iget-object v0, p0, Lcom/waze/NativeManager;->mLocationListner:Lcom/waze/NativeLocListener;

    if-eqz v0, :cond_0

    .line 4616
    iget-object v0, p0, Lcom/waze/NativeManager;->mLocationListner:Lcom/waze/NativeLocListener;

    invoke-virtual {v0}, Lcom/waze/NativeLocListener;->stop()V

    .line 4622
    :cond_0
    invoke-static {}, Lcom/waze/phone/AddressBook;->CancelSync()V

    .line 4625
    invoke-virtual {p0}, Lcom/waze/NativeManager;->RestoreSystemSettings()V

    .line 4628
    invoke-static {}, Lcom/waze/ifs/ui/ActivityBase;->finishAll()V

    .line 4631
    invoke-static {}, Lcom/waze/AppService;->ShutDown()V

    .line 4632
    return-void
.end method

.method private native asrCancelNTV()Z
.end method

.method private native asrListenCallbackNTV(J[Ljava/lang/Object;[F)V
.end method

.method private native callCallbackIntNTV(JI)V
.end method

.method private closeProgressPopup()V
    .locals 1

    .prologue
    .line 2556
    iget-object v0, p0, Lcom/waze/NativeManager;->mProgressBarCommon:Lcom/waze/ifs/ui/ProgressBarDialog;

    if-eqz v0, :cond_0

    .line 2557
    iget-object v0, p0, Lcom/waze/NativeManager;->mProgressBarCommon:Lcom/waze/ifs/ui/ProgressBarDialog;

    invoke-virtual {v0}, Lcom/waze/ifs/ui/ProgressBarDialog;->dismiss()V

    .line 2558
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/NativeManager;->mProgressBarCommon:Lcom/waze/ifs/ui/ProgressBarDialog;

    .line 2559
    return-void
.end method

.method private createCanvas()V
    .locals 4

    .prologue
    .line 3611
    invoke-direct {p0}, Lcom/waze/NativeManager;->waitCanvasConditions()V

    .line 3612
    invoke-static {}, Lcom/waze/AppService;->getMainView()Lcom/waze/MapViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/MapViewWrapper;->getMapView()Lcom/waze/MapView;

    move-result-object v0

    .line 3613
    .local v0, mainView:Lcom/waze/MapView;
    sget-object v1, Lcom/waze/NativeManager;->mNativeCanvas:Lcom/waze/NativeCanvas;

    invoke-virtual {v0}, Lcom/waze/MapView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/waze/MapView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/waze/NativeCanvas;->CreateCanvas(Lcom/waze/MapView;II)V

    .line 3614
    return-void
.end method

.method public static decryptPasswordStatic(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "encPassword"
    .parameter "mContext"

    .prologue
    .line 1592
    if-eqz p0, :cond_0

    .line 1593
    :try_start_0
    invoke-static {p0}, Lcom/waze/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 1595
    .local v0, bytes:[B
    :goto_0
    const-string v6, "PBEWithMD5AndDES"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 1596
    .local v3, keyFactory:Ljavax/crypto/SecretKeyFactory;
    new-instance v6, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v7, Lcom/waze/NativeManager;->SEKRIT:[C

    invoke-direct {v6, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v3, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 1597
    .local v2, key:Ljavax/crypto/SecretKey;
    const-string v6, "PBEWithMD5AndDES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 1598
    .local v4, pbeCipher:Ljavax/crypto/Cipher;
    invoke-static {p1}, Lcom/waze/NativeManager;->getUniqueId(Landroid/content/Context;)[B

    move-result-object v5

    .line 1599
    .local v5, privateId:[B
    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/PBEParameterSpec;

    .line 1600
    const/16 v8, 0x14

    invoke-direct {v7, v5, v8}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 1599
    invoke-virtual {v4, v6, v2, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1601
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    return-object v6

    .line 1593
    .end local v0           #bytes:[B
    .end local v2           #key:Ljavax/crypto/SecretKey;
    .end local v3           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v4           #pbeCipher:Ljavax/crypto/Cipher;
    .end local v5           #privateId:[B
    :cond_0
    const/4 v6, 0x0

    new-array v0, v6, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1602
    :catch_0
    move-exception v1

    .line 1603
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private native editTextDialogCallbackNTV(Ljava/lang/String;JJ)V
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4497
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 4498
    .local v0, sName:Ljava/lang/String;
    const-string v1, "|"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4499
    return-object v0
.end method

.method private native getDisplayNameNTV()Ljava/lang/String;
.end method

.method private native getEditPlaceLocationRadiusNTV()I
.end method

.method private getInstallationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4748
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/AppUUID;->getInstallationUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/waze/NativeManager;
    .locals 1

    .prologue
    .line 1085
    sget-object v0, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    return-object v0
.end method

.method private getLayoutManager()Lcom/waze/LayoutManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6316
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 6317
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 6324
    :cond_0
    :goto_0
    return-object v0

    .line 6320
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 6321
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-nez v0, :cond_0

    move-object v0, v2

    .line 6322
    goto :goto_0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4483
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4484
    .local v0, sdkBuildVersion:I
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 4485
    invoke-static {}, Lcom/waze/NativeManager$CompatabilityWrapper;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    .line 4487
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "not available"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4491
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 4492
    .local v0, sName:Ljava/lang/String;
    const-string v1, "|"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4493
    return-object v0
.end method

.method static getNativeCanvas()Lcom/waze/NativeCanvas;
    .locals 1

    .prologue
    .line 3174
    sget-object v0, Lcom/waze/NativeManager;->mNativeCanvas:Lcom/waze/NativeCanvas;

    return-object v0
.end method

.method public static getRelease()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4503
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private static getUniqueId(Landroid/content/Context;)[B
    .locals 14
    .parameter "mContext"

    .prologue
    .line 1627
    .line 1628
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1629
    const-string v12, "android_id"

    .line 1627
    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1633
    .local v3, idStr:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1634
    :try_start_0
    const-string v11, "utf-8"

    invoke-virtual {v3, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1665
    :goto_0
    return-object v2

    .line 1637
    :cond_0
    const-string v11, "WAZE MAIN PREFS"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1639
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v11, "Unique id"

    invoke-interface {v6, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1640
    const-string v11, "Unique id"

    const-wide/16 v12, 0x0

    invoke-interface {v6, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1641
    .local v4, longId:J
    invoke-static {v4, v5}, Lcom/waze/Utils;->long2bytes(J)[B

    move-result-object v2

    .line 1642
    .local v2, id:[B
    goto :goto_0

    .line 1647
    .end local v2           #id:[B
    .end local v4           #longId:J
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1648
    .local v9, seedLong:J
    invoke-static {v9, v10}, Lcom/waze/Utils;->long2bytes(J)[B

    move-result-object v8

    .line 1651
    .local v8, seedArray:[B
    const/16 v11, 0x8

    new-array v2, v11, [B

    .line 1652
    .restart local v2       #id:[B
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7, v8}, Ljava/security/SecureRandom;-><init>([B)V

    .line 1653
    .local v7, sRand:Ljava/security/SecureRandom;
    invoke-virtual {v7, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1655
    invoke-static {v2}, Lcom/waze/Utils;->bytes2Long([B)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1657
    .restart local v4       #longId:J
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1658
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "Unique id"

    invoke-interface {v1, v11, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1659
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1661
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #id:[B
    .end local v4           #longId:J
    .end local v6           #prefs:Landroid/content/SharedPreferences;
    .end local v7           #sRand:Ljava/security/SecureRandom;
    .end local v8           #seedArray:[B
    .end local v9           #seedLong:J
    :catch_0
    move-exception v0

    .line 1662
    .local v0, e:Ljava/lang/Exception;
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
.end method

.method private native getVenueGetTimeoutNTV()I
.end method

.method private static handlePushToken(ZZ)V
    .locals 2
    .parameter "isSet"
    .parameter "updateNow"

    .prologue
    .line 1125
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1127
    new-instance v0, Lcom/waze/NativeManager$60;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$60;-><init>(ZZ)V

    .line 1138
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1139
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1143
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 1141
    .restart local v0       #r:Ljava/lang/Runnable;
    :cond_1
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private isConnectedThroughWifi()Z
    .locals 4

    .prologue
    .line 4738
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 4739
    .local v1, context:Landroid/content/Context;
    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4740
    .local v0, connManager:Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 4741
    .local v2, wifiInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    return v3
.end method

.method private native isDebugNTV()Z
.end method

.method private native isGasPopUpFeatureEnabledNTV()Z
.end method

.method private native isGasPopUpShownNTV()Z
.end method

.method private native isGasUpdateableNTV()Z
.end method

.method public static isShuttingDown()Z
    .locals 1

    .prologue
    .line 1195
    sget-boolean v0, Lcom/waze/NativeManager;->mAppShutDownFlag:Z

    return v0
.end method

.method private native langGetIntNTV(I)Ljava/lang/String;
.end method

.method private native langGetNTV(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native langRtlNTV()Z
.end method

.method private native logAnalyticsFlushNTV()V
.end method

.method private native logAnalyticsIntNTV(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native logAnalyticsNTV(Ljava/lang/String;ZZ)V
.end method

.method private native logAnalyticsStrNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private declared-synchronized notifyCanvasConditions()V
    .locals 1

    .prologue
    .line 1045
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/waze/NativeManager;->mCanvasConditions:Z

    .line 1046
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    monitor-exit p0

    return-void

    .line 1045
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyCreate()V
    .locals 1

    .prologue
    .line 1025
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/waze/NativeManager;->mAppLooperReady:Z

    .line 1026
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    monitor-exit p0

    return-void

    .line 1025
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyOglData()V
    .locals 1

    .prologue
    .line 1050
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/waze/NativeManager;->mOglDataAvailable:Z

    .line 1051
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    monitor-exit p0

    return-void

    .line 1050
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyShutdown()V
    .locals 1

    .prologue
    .line 1066
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/waze/NativeManager;->mAppStarted:Z

    .line 1067
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    monitor-exit p0

    return-void

    .line 1066
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyStart()V
    .locals 1

    .prologue
    .line 1040
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/waze/NativeManager;->mAppStarted:Z

    .line 1041
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    monitor-exit p0

    return-void

    .line 1040
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native onAppBackgroundNTV()V
.end method

.method private native onAppForegroundNTV()V
.end method

.method public static onMainResume()Z
    .locals 1

    .prologue
    .line 3572
    invoke-static {}, Lcom/waze/NativeManager;->startApp()Z

    move-result v0

    return v0
.end method

.method public static onServiceCreated()Z
    .locals 1

    .prologue
    .line 3568
    invoke-static {}, Lcom/waze/NativeManager;->startApp()Z

    move-result v0

    return v0
.end method

.method public static onSurfaceReady()Z
    .locals 1

    .prologue
    .line 3576
    invoke-static {}, Lcom/waze/NativeManager;->startApp()Z

    move-result v0

    return v0
.end method

.method private postOnAppStartedEvents()V
    .locals 3

    .prologue
    .line 4510
    :goto_0
    sget-object v1, Lcom/waze/NativeManager;->mAppStartedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 4514
    return-void

    .line 4511
    :cond_0
    sget-object v1, Lcom/waze/NativeManager;->mAppStartedEvents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 4512
    .local v0, event:Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private prepareAppStart()V
    .locals 1

    .prologue
    .line 3673
    invoke-static {}, Lcom/waze/ResManager;->Prepare()V

    .line 3674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/NativeManager;->mAppStartPrepared:Z

    .line 3676
    new-instance v0, Lcom/waze/NativeManager$160;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$160;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 3682
    return-void
.end method

.method private printSW(Ljava/lang/String;)V
    .locals 2
    .parameter "logString"

    .prologue
    .line 3668
    sget-object v0, Lcom/waze/NativeManager;->startSW:Lcom/waze/utils/Stopwatch;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/waze/utils/Stopwatch;->startDelta(Ljava/lang/String;Z)J

    .line 3669
    return-void
.end method

.method public static registerOnAppStartedEvent(Lcom/waze/ifs/async/RunnableExecutor;)V
    .locals 2
    .parameter "aEvent"

    .prologue
    .line 4477
    sget-object v1, Lcom/waze/NativeManager;->mAppStartedEvents:Ljava/util/ArrayList;

    monitor-enter v1

    .line 4478
    :try_start_0
    sget-object v0, Lcom/waze/NativeManager;->mAppStartedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4477
    monitor-exit v1

    .line 4480
    return-void

    .line 4477
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native restorePoiFocusNTV()V
.end method

.method private runTests()V
    .locals 12

    .prologue
    .line 6328
    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 6329
    const/4 v3, 0x3

    const/4 v4, 0x4

    .line 6330
    const/4 v5, 0x5

    const/4 v6, 0x6

    .line 6331
    const/4 v7, 0x7

    const/16 v8, 0x8

    .line 6332
    const/16 v9, 0x9

    const/16 v10, 0xa

    .line 6333
    const/16 v11, 0xb

    move-object v0, p0

    .line 6328
    invoke-direct/range {v0 .. v11}, Lcom/waze/NativeManager;->test_venueFlagRequestType(IIIIIIIIIII)V

    .line 6335
    invoke-static {}, Lcom/waze/ConfigManager;->test_counterConfigEnum()V

    .line 6337
    invoke-static {}, Lcom/waze/ifs/ui/OmniSelectionFragment;->testCalcRank()V

    .line 6339
    invoke-static {}, Lcom/waze/utils/TicketRoller;->testThis()V

    .line 6340
    return-void
.end method

.method private native savePoiPositionNTV(Z)V
.end method

.method private native sendAlertRequestNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
.end method

.method private native setFriendsListBannerDismissedNTV()V
.end method

.method public static setPushToken(Z)V
    .locals 1
    .parameter "updateNow"

    .prologue
    .line 1120
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/waze/NativeManager;->handlePushToken(ZZ)V

    .line 1121
    return-void
.end method

.method private native shouldDisplayGasSettingsNTV()Z
.end method

.method private static startApp()Z
    .locals 4

    .prologue
    .line 3708
    const/4 v2, 0x0

    .line 3709
    .local v2, res:Z
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/waze/NativeManager;->isShuttingDown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3710
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 3711
    .local v0, mainActivity:Lcom/waze/MainActivity;
    invoke-static {}, Lcom/waze/AppService;->getMainView()Lcom/waze/MapViewWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/MapViewWrapper;->getMapView()Lcom/waze/MapView;

    move-result-object v1

    .line 3713
    .local v1, mainView:Lcom/waze/MapView;
    sget-object v3, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/waze/AppService;->IsInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3714
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->IsRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3715
    invoke-virtual {v1}, Lcom/waze/MapView;->IsReady()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    invoke-virtual {v3}, Lcom/waze/NativeManager;->isAppStartPrepared()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3717
    sget-object v3, Lcom/waze/NativeManager;->mInstance:Lcom/waze/NativeManager;

    invoke-direct {v3}, Lcom/waze/NativeManager;->notifyCanvasConditions()V

    .line 3720
    const/4 v2, 0x1

    .line 3723
    .end local v0           #mainActivity:Lcom/waze/MainActivity;
    .end local v1           #mainView:Lcom/waze/MapView;
    :cond_0
    return v2
.end method

.method private native test_venueFlagRequestType(IIIIIIIIIII)V
.end method

.method public static unsetPushToken(Z)V
    .locals 1
    .parameter "updateNow"

    .prologue
    .line 1116
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/waze/NativeManager;->handlePushToken(ZZ)V

    .line 1117
    return-void
.end method

.method private native venueCreateNTV(Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native venueDeleteImageNTV(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native venueFlagImageNTV(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native venueFlagNTV(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native venueGetNTV(Ljava/lang/String;IZ)V
.end method

.method private native venueLikeImageNTV(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native venueSaveNavNTV(Lcom/waze/reports/VenueData;)V
.end method

.method private native venueSearchNTV(II)V
.end method

.method private native venueUnlikeImageNTV(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native venueUpdateNTV(Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private declared-synchronized waitCanvasConditions()V
    .locals 2

    .prologue
    .line 3583
    monitor-enter p0

    :goto_0
    :try_start_0
    sget-boolean v1, Lcom/waze/NativeManager;->mCanvasConditions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 3592
    :goto_1
    monitor-exit p0

    return-void

    .line 3585
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3588
    :catch_0
    move-exception v0

    .line 3590
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "WAZE"

    invoke-static {v1, v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3583
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized waitCreate()V
    .locals 2

    .prologue
    .line 1030
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/waze/NativeManager;->mAppLooperReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1037
    monitor-exit p0

    return-void

    .line 1032
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "WAZE"

    invoke-static {v1, v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1030
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized waitOglData()V
    .locals 2

    .prologue
    .line 3598
    monitor-enter p0

    :goto_0
    :try_start_0
    sget-boolean v1, Lcom/waze/NativeManager;->mOglDataAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 3607
    :goto_1
    monitor-exit p0

    return-void

    .line 3600
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3603
    :catch_0
    move-exception v0

    .line 3605
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "WAZE"

    invoke-static {v1, v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3598
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private waitResPrepare()V
    .locals 3

    .prologue
    .line 4449
    :try_start_0
    iget-object v1, p0, Lcom/waze/NativeManager;->mResPrepareThread:Lcom/waze/NativeManager$ResPrepareThread;

    invoke-virtual {v1}, Lcom/waze/NativeManager$ResPrepareThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4454
    :goto_0
    return-void

    .line 4450
    :catch_0
    move-exception v0

    .line 4451
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "WAZE"

    const-string v2, "Error joining the resources thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized waitShutdown()V
    .locals 2

    .prologue
    .line 1071
    monitor-enter p0

    :goto_0
    :try_start_0
    sget-boolean v1, Lcom/waze/NativeManager;->mAppStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1078
    monitor-exit p0

    return-void

    .line 1073
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "WAZE"

    invoke-static {v1, v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1071
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized waitStart()V
    .locals 2

    .prologue
    .line 1056
    monitor-enter p0

    :goto_0
    :try_start_0
    sget-boolean v1, Lcom/waze/NativeManager;->mAppStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1063
    monitor-exit p0

    return-void

    .line 1058
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "WAZE"

    invoke-static {v1, v0}, Lcom/waze/Logger;->ee(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1056
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native wasFriendsListBannerDismissedNTV()Z
.end method


# virtual methods
.method public AccountDetailsShown()Z
    .locals 2

    .prologue
    .line 2291
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 2292
    .local v0, mainActivity:Lcom/waze/MainActivity;
    if-nez v0, :cond_0

    .line 2293
    const/4 v1, 0x0

    .line 2294
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/waze/MainActivity;->IsAccountDetailsShown()Z

    move-result v1

    goto :goto_0
.end method

.method public AccountPasswordRecovery()V
    .locals 1

    .prologue
    .line 1479
    new-instance v0, Lcom/waze/NativeManager$73;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$73;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1500
    return-void
.end method

.method public AddContactToDB(Ljava/lang/String;JI)V
    .locals 6
    .parameter "Hash"
    .parameter "ID"
    .parameter "nVersion"

    .prologue
    .line 381
    new-instance v0, Lcom/waze/NativeManager$9;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$9;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;JI)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 387
    return-void
.end method

.method public AddGeofencing(DDIILcom/waze/messages/QuestionData;)V
    .locals 9
    .parameter "lat"
    .parameter "lon"
    .parameter "radius"
    .parameter "expirationTime"
    .parameter "question"

    .prologue
    .line 2869
    new-instance v0, Lcom/waze/NativeManager$142;

    move-object v1, p0

    move-object/from16 v2, p7

    move-wide v3, p3

    move-wide v5, p1

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/waze/NativeManager$142;-><init>(Lcom/waze/NativeManager;Lcom/waze/messages/QuestionData;DDII)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2890
    return-void
.end method

.method public AddToMeeting([II[Ljava/lang/Object;Z)V
    .locals 6
    .parameter "waze_ids"
    .parameter "nCount"
    .parameter "wazes_phones"
    .parameter "bToSave"

    .prologue
    .line 630
    new-instance v0, Lcom/waze/NativeManager$32;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$32;-><init>(Lcom/waze/NativeManager;[II[Ljava/lang/Object;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 636
    return-void
.end method

.method public native AlertPopUpClosedNTV()V
.end method

.method public native AlerterClosedNTV()V
.end method

.method public native AlerterNotThereNTV()V
.end method

.method public native AlerterThumbsUpNTV()V
.end method

.method public AllowSendmails(Z)V
    .locals 1
    .parameter "bToAllow"

    .prologue
    .line 6236
    new-instance v0, Lcom/waze/NativeManager$232;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$232;-><init>(Lcom/waze/NativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 6241
    return-void
.end method

.method public AsrActionResponse(Ljava/lang/String;)V
    .locals 1
    .parameter "Action"

    .prologue
    .line 1434
    new-instance v0, Lcom/waze/NativeManager$70;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$70;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1444
    return-void
.end method

.method public AuthContacts()V
    .locals 1

    .prologue
    .line 483
    new-instance v0, Lcom/waze/NativeManager$18;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$18;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 489
    return-void
.end method

.method public AuthPhoneNumber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "sPhone"
    .parameter "Hash"
    .parameter "nType"
    .parameter "Region"

    .prologue
    .line 465
    new-instance v0, Lcom/waze/NativeManager$16;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$16;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 471
    return-void
.end method

.method public AuthPin(Ljava/lang/String;)V
    .locals 1
    .parameter "sPin"

    .prologue
    .line 474
    new-instance v0, Lcom/waze/NativeManager$17;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$17;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 480
    return-void
.end method

.method public AuthenticateCompleted(I)V
    .locals 1
    .parameter "Res"

    .prologue
    .line 1457
    new-instance v0, Lcom/waze/NativeManager$72;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$72;-><init>(Lcom/waze/NativeManager;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1475
    return-void
.end method

.method public AutoCompleteAdsClicked(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "Venue"
    .parameter "Text"
    .parameter "position"

    .prologue
    .line 565
    new-instance v0, Lcom/waze/NativeManager$26;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$26;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 571
    return-void
.end method

.method public AutoCompleteAdsShown(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "Venue"
    .parameter "Text"
    .parameter "position"

    .prologue
    .line 556
    new-instance v0, Lcom/waze/NativeManager$25;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$25;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 562
    return-void
.end method

.method public AutoCompletePlaceClicked(Ljava/lang/String;Ljava/lang/String;Lcom/waze/navigate/AddressItem;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "venueID"
    .parameter "Ref"
    .parameter "calendarAI"
    .parameter "venue_context"
    .parameter "bToDrive"
    .parameter "Query"
    .parameter "bHistoryStat"
    .parameter "feature"
    .parameter "response"
    .parameter "typedQuery"

    .prologue
    .line 493
    new-instance v0, Lcom/waze/NativeManager$19;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/waze/NativeManager$19;-><init>(Lcom/waze/NativeManager;Lcom/waze/navigate/AddressItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 508
    return-void
.end method

.method public native AutocompleteIsMatchNTV(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public BeepClosed(I)V
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 5410
    new-instance v0, Lcom/waze/NativeManager$180;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$180;-><init>(Lcom/waze/NativeManager;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 5416
    return-void
.end method

.method public native CalendaDenyAccessNTV()V
.end method

.method public native CalendaRequestAccessNTV()V
.end method

.method public CalendarFeatureEnabled()Z
    .locals 1

    .prologue
    .line 2713
    invoke-direct {p0}, Lcom/waze/NativeManager;->CalendarFeatureEnabledNTV()Z

    move-result v0

    return v0
.end method

.method public ClearClosureObject()V
    .locals 1

    .prologue
    .line 930
    new-instance v0, Lcom/waze/NativeManager$56;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$56;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 936
    return-void
.end method

.method public ClearNotifications()V
    .locals 1

    .prologue
    .line 3686
    new-instance v0, Lcom/waze/NativeManager$161;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$161;-><init>(Lcom/waze/NativeManager;)V

    .line 3704
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 3705
    return-void
.end method

.method public CloseAlertPopup()V
    .locals 3

    .prologue
    .line 1863
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 1864
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    .line 1877
    :cond_0
    :goto_0
    return-void

    .line 1867
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 1868
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 1871
    new-instance v2, Lcom/waze/NativeManager$89;

    invoke-direct {v2, p0, v0}, Lcom/waze/NativeManager$89;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;)V

    invoke-static {v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public CloseAllPopups(I)V
    .locals 1
    .parameter "by_user"

    .prologue
    .line 538
    new-instance v0, Lcom/waze/NativeManager$23;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$23;-><init>(Lcom/waze/NativeManager;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 544
    return-void
.end method

.method public CloseFriendsOnlinePopup()V
    .locals 3

    .prologue
    .line 2473
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 2474
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    .line 2486
    :cond_0
    :goto_0
    return-void

    .line 2477
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 2478
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 2481
    new-instance v2, Lcom/waze/NativeManager$114;

    invoke-direct {v2, p0, v0}, Lcom/waze/NativeManager$114;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;)V

    invoke-static {v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public CloseNavigationResult()V
    .locals 1

    .prologue
    .line 1158
    new-instance v0, Lcom/waze/NativeManager$62;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$62;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1168
    return-void
.end method

.method public ClosePoi()V
    .locals 3

    .prologue
    .line 2960
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 2961
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    .line 2973
    :cond_0
    :goto_0
    return-void

    .line 2964
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 2965
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 2968
    new-instance v2, Lcom/waze/NativeManager$146;

    invoke-direct {v2, p0, v0}, Lcom/waze/NativeManager$146;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;)V

    invoke-static {v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public CloseProgressPopup()V
    .locals 1

    .prologue
    .line 2548
    new-instance v0, Lcom/waze/NativeManager$119;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$119;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2553
    return-void
.end method

.method public CloseUserPopup()V
    .locals 3

    .prologue
    .line 1790
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 1791
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    .line 1804
    :cond_0
    :goto_0
    return-void

    .line 1795
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 1796
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 1799
    new-instance v2, Lcom/waze/NativeManager$85;

    invoke-direct {v2, p0, v0}, Lcom/waze/NativeManager$85;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;)V

    invoke-static {v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public Config_Set_Closed_Properly(ILjava/lang/String;)V
    .locals 0
    .parameter "IsClosedProperly"
    .parameter "stacktrace"

    .prologue
    .line 1299
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeManager;->ClosedProperlyNTV(ILjava/lang/String;)V

    .line 1300
    return-void
.end method

.method ConnectivityChanged(ZILjava/lang/String;)V
    .locals 2
    .parameter "aConnected"
    .parameter "aConnType"
    .parameter "aConnTypeStr"

    .prologue
    .line 1315
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1316
    invoke-virtual {p0}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1317
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/NativeManager;->ConnectivityChangedNTV(ZILjava/lang/String;)V

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1319
    :cond_1
    new-instance v0, Lcom/waze/NativeManager$65;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$65;-><init>(Lcom/waze/NativeManager;ZILjava/lang/String;)V

    .line 1325
    .local v0, event:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public ContactUpload()V
    .locals 1

    .prologue
    .line 455
    new-instance v0, Lcom/waze/NativeManager$15;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$15;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 461
    return-void
.end method

.method public CopyFileToSdcard(Ljava/lang/String;)V
    .locals 1
    .parameter "inputFile"

    .prologue
    .line 5891
    new-instance v0, Lcom/waze/NativeManager$213;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$213;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5931
    return-void
.end method

.method public CopySdcardToInternal(Ljava/lang/String;)V
    .locals 1
    .parameter "inputFile"

    .prologue
    .line 5934
    new-instance v0, Lcom/waze/NativeManager$214;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$214;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5973
    return-void
.end method

.method public CreateMeeting(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "name"
    .parameter "type"
    .parameter "lon"
    .parameter "lat"
    .parameter "Street"
    .parameter "City"
    .parameter "Country"
    .parameter "venueId"

    .prologue
    .line 641
    new-instance v0, Lcom/waze/NativeManager$33;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/waze/NativeManager$33;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 647
    return-void
.end method

.method public CreateMeetingBulk(Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;[IIIZ[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 18
    .parameter "name"
    .parameter "type"
    .parameter "lon"
    .parameter "lat"
    .parameter "waze_ids"
    .parameter "phones"
    .parameter "hashes"
    .parameter "nCount"
    .parameter "nPhonescount"
    .parameter "bIsShareWithMap"
    .parameter "wazes_phones"
    .parameter "Street"
    .parameter "City"
    .parameter "Country"
    .parameter "bToSave"
    .parameter "venueId"

    .prologue
    .line 654
    new-instance v0, Lcom/waze/NativeManager$34;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v0 .. v17}, Lcom/waze/NativeManager$34;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;[IIIZ[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 661
    return-void
.end method

.method public DeleteAccount()V
    .locals 1

    .prologue
    .line 5453
    new-instance v0, Lcom/waze/NativeManager$184;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$184;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 5459
    return-void
.end method

.method public DeleteContactsFromDataBase()V
    .locals 1

    .prologue
    .line 1233
    new-instance v0, Lcom/waze/NativeManager$63;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$63;-><init>(Lcom/waze/NativeManager;)V

    .line 1238
    .local v0, r:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 1239
    return-void
.end method

.method public DisconnectContacts()V
    .locals 1

    .prologue
    .line 436
    new-instance v0, Lcom/waze/NativeManager$13;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$13;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 442
    return-void
.end method

.method public native DownloadAlertVoiceNTV(I)V
.end method

.method public EditBoxCheckTypingLock(Lcom/waze/EditBox;)V
    .locals 2
    .parameter "aEditBox"

    .prologue
    .line 3311
    new-instance v1, Lcom/waze/NativeManager$156;

    invoke-direct {v1, p0, p1}, Lcom/waze/NativeManager$156;-><init>(Lcom/waze/NativeManager;Lcom/waze/EditBox;)V

    .line 3317
    .local v1, clearTextEditBoxEvent:Ljava/lang/Runnable;
    new-instance v0, Lcom/waze/NativeManager$157;

    invoke-direct {v0, p0, v1}, Lcom/waze/NativeManager$157;-><init>(Lcom/waze/NativeManager;Ljava/lang/Runnable;)V

    .line 3330
    .local v0, checkTypingLockEvent:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 3331
    return-void
.end method

.method public EditBoxCheckTypingLockCb(I)V
    .locals 0
    .parameter "aRes"

    .prologue
    .line 3355
    return-void
.end method

.method public native EditorTrackToggleNewRoadsNTV()V
.end method

.method public Flush()V
    .locals 0

    .prologue
    .line 3397
    return-void
.end method

.method public FriendsBarVisible(Z)V
    .locals 1
    .parameter "bIsVisible"

    .prologue
    .line 763
    new-instance v0, Lcom/waze/NativeManager$44;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$44;-><init>(Lcom/waze/NativeManager;Z)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 778
    return-void
.end method

.method public native FriendsOnlinePopUpClosedNTV()V
.end method

.method public native GetAllowSendMailNTV()Z
.end method

.method public GetContactVersionFromDB(J)I
    .locals 1
    .parameter "ID"

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeManager;->GetContactVersionFromDBNTV(J)I

    move-result v0

    return v0
.end method

.method public GetDefaultRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/waze/NativeManager;->GetRegionNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetEditorUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/waze/NativeManager;->GetMapEditorURlNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetInviteData()V
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/waze/NativeManager;->mInviteId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 274
    :cond_0
    new-instance v0, Lcom/waze/NativeManager$3;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$3;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public GetIsAggaragteFinished()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/waze/NativeManager;->GetContactsLastAccessTimeNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native GetIsShowHowToEditNTV()Z
.end method

.method public GetRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1587
    invoke-static {}, Lcom/waze/phone/AddressBook;->GetCountryZipCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetScreenHeight()I
    .locals 1

    .prologue
    .line 3535
    invoke-static {}, Lcom/waze/AppService;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public GetScreenWidth()I
    .locals 1

    .prologue
    .line 3527
    invoke-static {}, Lcom/waze/AppService;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public native GetShareDrivePermissionNTV()Z
.end method

.method public native GetShowAddFriendsNTV()Z
.end method

.method public native GetShowScreenIconsNTV()Z
.end method

.method public native GetSocialIsFirstTimeNTV()Z
.end method

.method public GetTitle(Ljava/lang/String;Lcom/waze/navigate/SearchActivity;)V
    .locals 1
    .parameter "Category"
    .parameter "listener"

    .prologue
    .line 5550
    new-instance v0, Lcom/waze/NativeManager$188;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$188;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Lcom/waze/navigate/SearchActivity;)V

    .line 5563
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 5564
    return-void
.end method

.method public GetUIMessage(Lcom/waze/NativeManager$UIEvent;)Landroid/os/Message;
    .locals 2
    .parameter "aEvent"

    .prologue
    .line 3519
    iget-object v0, p0, Lcom/waze/NativeManager;->mUIMsgDispatcher:Lcom/waze/NativeManager$UIMsgDispatcher;

    invoke-static {p1}, Lcom/waze/NativeManager$UIEvent;->ToInt(Lcom/waze/NativeManager$UIEvent;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public GetWazeAutocompleteAdsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2723
    invoke-direct {p0}, Lcom/waze/NativeManager;->GetWazeAutoCompleteAdsURLNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetWazeAutocompleteUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "Query"

    .prologue
    .line 2718
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->GetWazeAutoCompleteURLNTV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public HandlePickUpRequest(Ljava/lang/String;Z)V
    .locals 1
    .parameter "aUrl"
    .parameter "IsShareMyRide"

    .prologue
    .line 1408
    new-instance v0, Lcom/waze/NativeManager$69;

    invoke-direct {v0, p0, p2, p1}, Lcom/waze/NativeManager$69;-><init>(Lcom/waze/NativeManager;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1431
    return-void
.end method

.method public native HasClosureDataNTV()Z
.end method

.method public HideAlerterPopup()V
    .locals 3

    .prologue
    .line 2457
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 2458
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    .line 2470
    :cond_0
    :goto_0
    return-void

    .line 2461
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 2462
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 2465
    new-instance v2, Lcom/waze/NativeManager$113;

    invoke-direct {v2, p0, v0}, Lcom/waze/NativeManager$113;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;)V

    invoke-static {v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public HideEditBox()V
    .locals 3

    .prologue
    .line 3289
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    .line 3290
    .local v2, mainActivity:Lcom/waze/MainActivity;
    if-nez v2, :cond_1

    .line 3303
    :cond_0
    :goto_0
    return-void

    .line 3293
    :cond_1
    invoke-virtual {v2}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v1

    .line 3294
    .local v1, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v1, :cond_0

    .line 3297
    new-instance v0, Lcom/waze/NativeManager$155;

    invoke-direct {v0, p0, v1}, Lcom/waze/NativeManager$155;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;)V

    .line 3302
    .local v0, hideEditBox:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public HideSoftKeyboard()V
    .locals 2

    .prologue
    .line 3363
    new-instance v0, Lcom/waze/NativeManager$159;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$159;-><init>(Lcom/waze/NativeManager;)V

    .line 3368
    .local v0, hideKeyboard:Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/waze/NativeManager;->getMainView()Lcom/waze/MapViewWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/waze/MapViewWrapper;->post(Ljava/lang/Runnable;)Z

    .line 3369
    return-void
.end method

.method public HideWebView()V
    .locals 2

    .prologue
    .line 4249
    invoke-virtual {p0}, Lcom/waze/NativeManager;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 4250
    .local v0, activity:Lcom/waze/MainActivity;
    new-instance v1, Lcom/waze/NativeManager$168;

    invoke-direct {v1, p0, v0}, Lcom/waze/NativeManager$168;-><init>(Lcom/waze/NativeManager;Lcom/waze/MainActivity;)V

    .line 4256
    .local v1, hideWebView:Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Lcom/waze/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4257
    return-void
.end method

.method public InitNativeManager()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const-wide v10, 0x412e848000000000L

    .line 4326
    invoke-static {}, Lcom/waze/NativeManager;->LoadNativeLib()V

    .line 4329
    new-instance v0, Ljava/util/Timer;

    const-string v2, "Waze Timer"

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/waze/NativeManager;->mTimer:Ljava/util/Timer;

    .line 4331
    invoke-static {}, Lcom/waze/ResManager;->create()Lcom/waze/ResManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/NativeManager;->mResManager:Lcom/waze/ResManager;

    .line 4333
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4335
    .local v1, sdkBuildVersion:I
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4336
    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4338
    .local v5, romInfo:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/waze/NativeManager;->getRelease()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-SDK"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4341
    .local v6, OsVer:Ljava/lang/String;
    invoke-static {}, Lcom/waze/NativeManager;->getDevice()Ljava/lang/String;

    move-result-object v2

    .line 4342
    invoke-static {}, Lcom/waze/NativeManager;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/waze/NativeManager;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/waze/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    .line 4341
    invoke-direct/range {v0 .. v8}, Lcom/waze/NativeManager;->InitNativeManagerNTV(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4345
    sget-byte v0, Lcom/waze/ResManager;->mUpgradeRun:B

    invoke-direct {p0, v0}, Lcom/waze/NativeManager;->SetUpgradeRunNTV(B)V

    .line 4348
    invoke-static {}, Lcom/waze/NativeCanvas;->create()Lcom/waze/NativeCanvas;

    move-result-object v0

    sput-object v0, Lcom/waze/NativeManager;->mNativeCanvas:Lcom/waze/NativeCanvas;

    .line 4351
    new-instance v0, Lcom/waze/NativeTimerManager;

    invoke-direct {v0, p0}, Lcom/waze/NativeTimerManager;-><init>(Lcom/waze/NativeManager;)V

    iput-object v0, p0, Lcom/waze/NativeManager;->mTimerManager:Lcom/waze/NativeTimerManager;

    .line 4354
    invoke-virtual {p0}, Lcom/waze/NativeManager;->startLocation()V

    .line 4356
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4359
    new-instance v0, Lcom/waze/NavBarManager;

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    .line 4360
    invoke-virtual {v2}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/waze/NavBarManager;-><init>(Lcom/waze/LayoutManager;)V

    .line 4359
    iput-object v0, p0, Lcom/waze/NativeManager;->mNavBarManager:Lcom/waze/NavBarManager;

    .line 4364
    :cond_0
    invoke-static {}, Lcom/waze/SoundRecorder;->Create()V

    .line 4366
    invoke-static {}, Lcom/waze/rtalerts/RTAlertsNativeManager;->create()Lcom/waze/rtalerts/RTAlertsNativeManager;

    .line 4368
    invoke-static {}, Lcom/waze/install/InstallNativeManager;->staticInit()V

    .line 4373
    new-instance v0, Lcom/waze/SpeechttManagerBase;

    invoke-direct {v0}, Lcom/waze/SpeechttManagerBase;-><init>()V

    iput-object v0, p0, Lcom/waze/NativeManager;->mSpeechttManager:Lcom/waze/SpeechttManagerBase;

    .line 4374
    iget-object v0, p0, Lcom/waze/NativeManager;->mSpeechttManager:Lcom/waze/SpeechttManagerBase;

    invoke-virtual {v0}, Lcom/waze/SpeechttManagerBase;->InitNativeLayer()V

    .line 4376
    new-instance v0, Lcom/waze/TtsManager;

    invoke-direct {v0}, Lcom/waze/TtsManager;-><init>()V

    iput-object v0, p0, Lcom/waze/NativeManager;->mTtsManager:Lcom/waze/TtsManager;

    .line 4377
    iget-object v0, p0, Lcom/waze/NativeManager;->mTtsManager:Lcom/waze/TtsManager;

    invoke-virtual {v0}, Lcom/waze/TtsManager;->InitNativeLayer()V

    .line 4379
    sput-boolean v12, Lcom/waze/NativeManager;->IsSyncValid:Z

    .line 4381
    sget-boolean v0, Lcom/waze/NativeManager;->bToCreateAcc:Z

    if-eqz v0, :cond_2

    .line 4383
    invoke-static {}, Lcom/waze/phone/AddressBook;->CreateAccount()V

    .line 4396
    :goto_0
    invoke-static {}, Lcom/waze/CPUProfiler;->getPerformance()V

    .line 4399
    invoke-static {}, Lcom/waze/MsgBox;->InitNativeLayer()V

    .line 4402
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    .line 4405
    invoke-static {}, Lcom/waze/view/bottom/BottomNotification;->initNative()V

    .line 4408
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    .line 4409
    new-instance v0, Lcom/waze/settings/SettingsNativeManager;

    invoke-direct {v0}, Lcom/waze/settings/SettingsNativeManager;-><init>()V

    .line 4410
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    .line 4411
    invoke-static {}, Lcom/waze/MoodManager;->getInstance()Lcom/waze/MoodManager;

    .line 4412
    invoke-static {}, Lcom/waze/NativeSoundManager;->create()V

    .line 4413
    invoke-static {}, Lcom/waze/share/ShareNativeManager;->create()Lcom/waze/share/ShareNativeManager;

    .line 4414
    invoke-static {}, Lcom/waze/messages/MessagesNativeManager;->create()Lcom/waze/messages/MessagesNativeManager;

    .line 4415
    invoke-static {}, Lcom/waze/inbox/InboxNativeManager;->create()Lcom/waze/inbox/InboxNativeManager;

    .line 4417
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 4418
    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 4417
    iput-object v0, p0, Lcom/waze/NativeManager;->keyguardManager:Landroid/app/KeyguardManager;

    .line 4420
    iput-boolean v12, p0, Lcom/waze/NativeManager;->mAppInitializedFlag:Z

    .line 4424
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/messages/QuestionData;->ReadParking(Landroid/content/Context;)Lcom/waze/location/Position;

    move-result-object v9

    .line 4426
    .local v9, pos:Lcom/waze/location/Position;
    if-eqz v9, :cond_1

    iget-wide v2, v9, Lcom/waze/location/Position;->longitude:D

    const-wide/high16 v7, -0x4010

    cmpl-double v0, v2, v7

    if-eqz v0, :cond_1

    .line 4429
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iget-wide v2, v9, Lcom/waze/location/Position;->longitude:D

    mul-double/2addr v2, v10

    double-to-int v2, v2

    iget-wide v3, v9, Lcom/waze/location/Position;->latitude:D

    mul-double/2addr v3, v10

    double-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/waze/NativeManager;->Set_Parking(II)V

    .line 4433
    :cond_1
    new-instance v0, Lcom/waze/NativeManager$169;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$169;-><init>(Lcom/waze/NativeManager;)V

    invoke-virtual {p0, v0}, Lcom/waze/NativeManager;->shouldDisplayGasSettings(Lcom/waze/NativeManager$GasSettingsListener;)V

    .line 4441
    return-void

    .line 4388
    .end local v9           #pos:Lcom/waze/location/Position;
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/waze/phone/AddressBook;->RequestSync(Z)V

    goto :goto_0
.end method

.method public InviteRequestData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "phone"
    .parameter "fullName"
    .parameter "Image"

    .prologue
    .line 1396
    new-instance v0, Lcom/waze/NativeManager$68;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/waze/NativeManager$68;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1405
    return-void
.end method

.method public InviteToMeeting([Ljava/lang/Object;[III)V
    .locals 6
    .parameter "phones"
    .parameter "hashes"
    .parameter "nPhonescount"
    .parameter "nType"

    .prologue
    .line 619
    new-instance v0, Lcom/waze/NativeManager$31;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$31;-><init>(Lcom/waze/NativeManager;[Ljava/lang/Object;[III)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method

.method public native IsAccessToContactsEnableNTV()Z
.end method

.method public IsAlerterShown()Z
    .locals 2

    .prologue
    .line 2308
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 2309
    .local v0, mainActivity:Lcom/waze/MainActivity;
    if-nez v0, :cond_0

    .line 2310
    const/4 v1, 0x0

    .line 2311
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/LayoutManager;->IsAlerterShown()Z

    move-result v1

    goto :goto_0
.end method

.method public IsContactExistInDB(J)Z
    .locals 1
    .parameter "ID"

    .prologue
    .line 392
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeManager;->IsContactExistInDBNTV(J)Z

    move-result v0

    return v0
.end method

.method public IsGasPopUpFeatureEnabled()Z
    .locals 1

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/waze/NativeManager;->isGasPopUpFeatureEnabledNTV()Z

    move-result v0

    return v0
.end method

.method public IsMenuEnabled()Z
    .locals 1

    .prologue
    .line 1100
    iget-boolean v0, p0, Lcom/waze/NativeManager;->mIsMenuEnabled:Z

    return v0
.end method

.method public IsNativeThread()Z
    .locals 4

    .prologue
    .line 1179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/waze/NativeManager;->mNativeThread:Lcom/waze/NativeManager$NativeThread;

    invoke-virtual {v2}, Lcom/waze/NativeManager$NativeThread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsPickUpLater()Z
    .locals 1

    .prologue
    .line 953
    invoke-direct {p0}, Lcom/waze/NativeManager;->IsPickUpLaterNTV()Z

    move-result v0

    return v0
.end method

.method public native IsPublishFbPermissionsNTV()Z
.end method

.method public native IsPublishStreamFbPermissionsNTV()Z
.end method

.method public IsShutdownActive()Z
    .locals 1

    .prologue
    .line 1758
    iget-boolean v0, p0, Lcom/waze/NativeManager;->bIsShutDown:Z

    return v0
.end method

.method public native IsTTsEnableNTV()Z
.end method

.method public LangInitialized()V
    .locals 3

    .prologue
    .line 3026
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 3027
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    .line 3039
    :cond_0
    :goto_0
    return-void

    .line 3030
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 3031
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 3034
    new-instance v2, Lcom/waze/NativeManager$149;

    invoke-direct {v2, p0, v0}, Lcom/waze/NativeManager$149;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;)V

    invoke-static {v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public LoadUrl([B)V
    .locals 5
    .parameter "aUrl"

    .prologue
    .line 4226
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 4227
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/waze/NativeManager;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 4228
    .local v0, activity:Lcom/waze/MainActivity;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "URL to load: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/waze/Logger;->d(Ljava/lang/String;)V

    .line 4230
    new-instance v1, Lcom/waze/NativeManager$167;

    invoke-direct {v1, p0, v0, v2}, Lcom/waze/NativeManager$167;-><init>(Lcom/waze/NativeManager;Lcom/waze/MainActivity;Ljava/lang/String;)V

    .line 4241
    .local v1, loadUrl:Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Lcom/waze/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4242
    return-void
.end method

.method public LogOutAccount()V
    .locals 1

    .prologue
    .line 5462
    new-instance v0, Lcom/waze/NativeManager$185;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$185;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 5468
    return-void
.end method

.method public MarketPage()V
    .locals 4

    .prologue
    .line 4174
    const-string v2, "Calling market page for Waze"

    invoke-static {v2}, Lcom/waze/Logger;->d(Ljava/lang/String;)V

    .line 4176
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 4177
    const-string v3, "market://details?id=com.waze"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 4176
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4178
    .local v0, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4179
    new-instance v1, Lcom/waze/NativeManager$164;

    invoke-direct {v1, p0, v0}, Lcom/waze/NativeManager$164;-><init>(Lcom/waze/NativeManager;Landroid/content/Intent;)V

    .line 4184
    .local v1, r:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 4185
    return-void
.end method

.method public MaximizeApplication()V
    .locals 2

    .prologue
    .line 4109
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/waze/AppService;->ShowMainActivityWindow(J)V

    .line 4110
    return-void
.end method

.method public MinimizeApplication(I)V
    .locals 2
    .parameter "aDelay"

    .prologue
    .line 4102
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/waze/AppService;->ShowHomeWindow(J)V

    .line 4103
    return-void
.end method

.method public NativeManagerCallback(IJJ)V
    .locals 7
    .parameter "aRes"
    .parameter "aCb"
    .parameter "context"

    .prologue
    .line 701
    new-instance v0, Lcom/waze/NativeManager$39;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/waze/NativeManager$39;-><init>(Lcom/waze/NativeManager;IJJ)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 707
    return-void
.end method

.method public OpenAboutPopup(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2606
    new-instance v0, Lcom/waze/NativeManager$122;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$122;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2611
    return-void
.end method

.method public OpenAccountAndLogin()V
    .locals 1

    .prologue
    .line 5856
    new-instance v0, Lcom/waze/NativeManager$211;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$211;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5873
    return-void
.end method

.method public OpenAddFriends()V
    .locals 1

    .prologue
    .line 6002
    new-instance v0, Lcom/waze/NativeManager$217;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$217;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 6009
    return-void
.end method

.method public OpenAddPlace()V
    .locals 1

    .prologue
    .line 5695
    new-instance v0, Lcom/waze/NativeManager$198;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$198;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5709
    return-void
.end method

.method public OpenAlertPopup(Lcom/waze/rtalerts/RTAlertsAlertData;IILjava/lang/String;I)V
    .locals 7
    .parameter "alertData"
    .parameter "x"
    .parameter "y"
    .parameter "sUserImageUrl"
    .parameter "nTimeout"

    .prologue
    .line 1808
    new-instance v0, Lcom/waze/NativeManager$86;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/waze/NativeManager$86;-><init>(Lcom/waze/NativeManager;Lcom/waze/rtalerts/RTAlertsAlertData;IILjava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1823
    return-void
.end method

.method public OpenAlertTicker(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "Index"
    .parameter "nType"
    .parameter "sUserImageUrl"
    .parameter "mMood"

    .prologue
    .line 1916
    new-instance v0, Lcom/waze/NativeManager$91;

    move-object v1, p0

    move v2, p2

    move-object v3, p4

    move-object v4, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$91;-><init>(Lcom/waze/NativeManager;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1931
    return-void
.end method

.method public OpenClosureFromQuestion()V
    .locals 4

    .prologue
    .line 5876
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v2

    .line 5877
    .local v2, isRandomUser:Z
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->FoursquareEnabledNTV()Z

    move-result v1

    .line 5878
    .local v1, isFoursquareEnabled:Z
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/NativeManager;->isClosureEnabledNTV()Z

    move-result v0

    .line 5879
    .local v0, isClosureEnabled:Z
    new-instance v3, Lcom/waze/NativeManager$212;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/waze/NativeManager$212;-><init>(Lcom/waze/NativeManager;ZZZ)V

    invoke-static {v3}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5888
    return-void
.end method

.method public OpenExternalBrowser(Ljava/lang/String;)V
    .locals 0
    .parameter "aUrl"

    .prologue
    .line 1367
    invoke-static {p1}, Lcom/waze/AppService;->OpenBrowser(Ljava/lang/String;)V

    .line 1368
    return-void
.end method

.method public OpenFriendsDriving(Ljava/lang/String;)V
    .locals 1
    .parameter "sMeeting"

    .prologue
    .line 5991
    new-instance v0, Lcom/waze/NativeManager$216;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$216;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5999
    return-void
.end method

.method public OpenFriendsList(I)V
    .locals 1
    .parameter "Type"

    .prologue
    .line 2858
    new-instance v0, Lcom/waze/NativeManager$141;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$141;-><init>(Lcom/waze/NativeManager;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2866
    return-void
.end method

.method public OpenInbox()V
    .locals 1

    .prologue
    .line 5674
    new-instance v0, Lcom/waze/NativeManager$196;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$196;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5681
    return-void
.end method

.method public OpenInternalBrowser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "aTitle"
    .parameter "aUrl"

    .prologue
    .line 1529
    new-instance v0, Lcom/waze/NativeManager$76;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$76;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1545
    return-void
.end method

.method public OpenInviteSignUp(Ljava/lang/String;)V
    .locals 1
    .parameter "Token"

    .prologue
    .line 5976
    new-instance v0, Lcom/waze/NativeManager$215;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$215;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5988
    return-void
.end method

.method public OpenMainActivityProgressIconPopup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "ImageName"

    .prologue
    .line 2521
    new-instance v0, Lcom/waze/NativeManager$117;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$117;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2532
    return-void
.end method

.method public OpenMainActivityProgressPopup(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2535
    new-instance v0, Lcom/waze/NativeManager$118;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$118;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2545
    return-void
.end method

.method public OpenMainMenu()V
    .locals 1

    .prologue
    .line 5725
    new-instance v0, Lcom/waze/NativeManager$200;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$200;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5736
    return-void
.end method

.method public OpenNavResultPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/waze/user/FriendUserData;ZZ)V
    .locals 34
    .parameter "note"
    .parameter "goodMorning"
    .parameter "id"
    .parameter "distance"
    .parameter "distanceUnit"
    .parameter "iRouteLenght"
    .parameter "via"
    .parameter "iTimeOut"
    .parameter "show_disclaimer"
    .parameter "isWaypoint"
    .parameter "waypointDistance"
    .parameter "waypointDistanceUnit"
    .parameter "waypointLength"
    .parameter "waypointTitle"
    .parameter "finalTitle"
    .parameter "waypointDelay"
    .parameter "is_trip_srv_rsp"
    .parameter "nId"
    .parameter "shownAgain"
    .parameter "UserPictureUrl"
    .parameter "Friend1PictureUrl"
    .parameter "Friend2PictureUrl"
    .parameter "OnlineFriends"
    .parameter "FriendsDrivingCount"
    .parameter "viaToll"
    .parameter "jConfigImage"
    .parameter "freeText"
    .parameter "NotifyFriends"
    .parameter "bIsOffline"
    .parameter "bIsCalculating"

    .prologue
    .line 2573
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v33

    .line 2574
    .local v33, mainActivity:Lcom/waze/MainActivity;
    if-nez v33, :cond_1

    .line 2593
    :cond_0
    :goto_0
    return-void

    .line 2577
    :cond_1
    invoke-virtual/range {v33 .. v33}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    .line 2578
    .local v2, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v2, :cond_0

    .line 2581
    new-instance v0, Lcom/waze/NativeManager$120;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    move/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move-object/from16 v24, p22

    move/from16 v25, p23

    move/from16 v26, p24

    move-object/from16 v27, p25

    move-object/from16 v28, p26

    move-object/from16 v29, p27

    move-object/from16 v30, p28

    move/from16 v31, p29

    move/from16 v32, p30

    invoke-direct/range {v0 .. v32}, Lcom/waze/NativeManager$120;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/waze/user/FriendUserData;ZZ)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public OpenNavigateActivity()V
    .locals 1

    .prologue
    .line 5684
    new-instance v0, Lcom/waze/NativeManager$197;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$197;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5691
    return-void
.end method

.method public OpenNavigateTip()V
    .locals 1

    .prologue
    .line 753
    new-instance v0, Lcom/waze/NativeManager$43;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$43;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 759
    return-void
.end method

.method public OpenPoi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZIILjava/lang/String;Ljava/lang/String;)V
    .locals 21
    .parameter "iID"
    .parameter "popupUrl"
    .parameter "inforUrl"
    .parameter "promotionUrl"
    .parameter "Address"
    .parameter "x"
    .parameter "y"
    .parameter "lat"
    .parameter "lon"
    .parameter "seconds"
    .parameter "isNavigable"
    .parameter "Height"
    .parameter "ServerID"
    .parameter "VenueId"
    .parameter "VenueContext"

    .prologue
    .line 2635
    invoke-static {}, Lcom/waze/AppService;->isNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2636
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v19

    .line 2637
    .local v19, mainActivity:Lcom/waze/MainActivity;
    if-nez v19, :cond_1

    .line 2670
    .end local v19           #mainActivity:Lcom/waze/MainActivity;
    :cond_0
    :goto_0
    return-void

    .line 2640
    .restart local v19       #mainActivity:Lcom/waze/MainActivity;
    :cond_1
    invoke-virtual/range {v19 .. v19}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v3

    .line 2641
    .local v3, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v3, :cond_0

    .line 2644
    new-instance v1, Lcom/waze/NativeManager$124;

    move-object/from16 v2, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p5

    move/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    invoke-direct/range {v1 .. v18}, Lcom/waze/NativeManager$124;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2654
    .end local v3           #layoutMgr:Lcom/waze/LayoutManager;
    .end local v19           #mainActivity:Lcom/waze/MainActivity;
    :cond_2
    const-string v1, "WAZE"

    .line 2655
    const-string v2, "NAtiveManager:: OpenPoi, no network connection"

    .line 2654
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    new-instance v20, Lcom/waze/NativeManager$125;

    invoke-direct/range {v20 .. v21}, Lcom/waze/NativeManager$125;-><init>(Lcom/waze/NativeManager;)V

    .line 2664
    .local v20, onclick:Landroid/content/DialogInterface$OnClickListener;
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_NO_NETWORK_CONNECTION:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 2665
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 2666
    const/4 v4, 0x0

    .line 2663
    move-object/from16 v0, v20

    invoke-static {v1, v2, v4, v0}, Lcom/waze/MsgBox;->openMessageBoxWithCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public OpenPopUpByIndex(II)V
    .locals 1
    .parameter "nType"
    .parameter "nIndex"

    .prologue
    .line 511
    new-instance v0, Lcom/waze/NativeManager$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$20;-><init>(Lcom/waze/NativeManager;II)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 517
    return-void
.end method

.method public OpenProgressIconPopup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "ImageName"

    .prologue
    .line 2507
    new-instance v0, Lcom/waze/NativeManager$116;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$116;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2518
    return-void
.end method

.method public OpenProgressPopup(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 2489
    new-instance v0, Lcom/waze/NativeManager$115;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$115;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2499
    return-void
.end method

.method public OpenQuickMenuSettings()V
    .locals 1

    .prologue
    .line 5713
    new-instance v0, Lcom/waze/NativeManager$199;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$199;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5723
    return-void
.end method

.method public OpenReportMenu()V
    .locals 7

    .prologue
    .line 3072
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v6

    .line 3073
    .local v6, mainActivity:Lcom/waze/MainActivity;
    if-nez v6, :cond_1

    .line 3088
    :cond_0
    :goto_0
    return-void

    .line 3076
    :cond_1
    invoke-virtual {v6}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    .line 3077
    .local v2, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v2, :cond_0

    .line 3080
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v3

    .line 3081
    .local v3, isRandomUser:Z
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->FoursquareEnabledNTV()Z

    move-result v4

    .line 3082
    .local v4, isFoursquareEnabled:Z
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->isClosureEnabledNTV()Z

    move-result v5

    .line 3083
    .local v5, isClosureEnabled:Z
    new-instance v0, Lcom/waze/NativeManager$151;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$151;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;ZZZ)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public OpenRoutingIntent()V
    .locals 1

    .prologue
    .line 682
    new-instance v0, Lcom/waze/NativeManager$37;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$37;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 688
    return-void
.end method

.method public OpenSearchIntent()V
    .locals 1

    .prologue
    .line 673
    new-instance v0, Lcom/waze/NativeManager$36;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$36;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 679
    return-void
.end method

.method public OpenSettingsLangActivity()V
    .locals 1

    .prologue
    .line 6032
    new-instance v0, Lcom/waze/NativeManager$220;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$220;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 6039
    return-void
.end method

.method public OpenSettingsNotificationActivity()V
    .locals 1

    .prologue
    .line 6022
    new-instance v0, Lcom/waze/NativeManager$219;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$219;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 6029
    return-void
.end method

.method public OpenSettingsSoundActivity()V
    .locals 1

    .prologue
    .line 6012
    new-instance v0, Lcom/waze/NativeManager$218;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$218;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 6019
    return-void
.end method

.method public OpenSharePopup(Lcom/waze/user/UserData;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "data"
    .parameter "nType"
    .parameter "sMeeting"
    .parameter "LocationText"

    .prologue
    .line 1565
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v7

    .line 1566
    .local v7, mainActivity:Lcom/waze/MainActivity;
    if-nez v7, :cond_1

    .line 1579
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    invoke-virtual {v7}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    .line 1571
    .local v2, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v2, :cond_0

    .line 1574
    new-instance v0, Lcom/waze/NativeManager$78;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/waze/NativeManager$78;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;Lcom/waze/user/UserData;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public OpenSwipePopup(I)V
    .locals 1
    .parameter "nTimer"

    .prologue
    .line 1826
    new-instance v0, Lcom/waze/NativeManager$87;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$87;-><init>(Lcom/waze/NativeManager;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1842
    return-void
.end method

.method public OpenSystemMessageWebPopUp(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 2614
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 2615
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    .line 2627
    :cond_0
    :goto_0
    return-void

    .line 2618
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 2619
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 2622
    new-instance v2, Lcom/waze/NativeManager$123;

    invoke-direct {v2, p0, v0, p1}, Lcom/waze/NativeManager$123;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public OpenTickersPopups([I[I)V
    .locals 1
    .parameter "nType"
    .parameter "nIndex"

    .prologue
    .line 529
    new-instance v0, Lcom/waze/NativeManager$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$22;-><init>(Lcom/waze/NativeManager;[I[I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 535
    return-void
.end method

.method public OpenUserPopup(Lcom/waze/user/UserData;II)V
    .locals 7
    .parameter "data"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1548
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v6

    .line 1549
    .local v6, mainActivity:Lcom/waze/MainActivity;
    if-nez v6, :cond_1

    .line 1562
    :cond_0
    :goto_0
    return-void

    .line 1553
    :cond_1
    invoke-virtual {v6}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    .line 1554
    .local v2, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v2, :cond_0

    .line 1557
    new-instance v0, Lcom/waze/NativeManager$77;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$77;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;Lcom/waze/user/UserData;II)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public native PickUpFeatureEnabledNTV()Z
.end method

.method public PopupAction(III)V
    .locals 1
    .parameter "type"
    .parameter "index"
    .parameter "val"

    .prologue
    .line 547
    new-instance v0, Lcom/waze/NativeManager$24;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$24;-><init>(Lcom/waze/NativeManager;III)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 553
    return-void
.end method

.method public native PopupShownNTV(III)V
.end method

.method public PostNativeMessage(II)V
    .locals 3
    .parameter "aMsgId"
    .parameter "aMsgParam"

    .prologue
    .line 3424
    iget-object v1, p0, Lcom/waze/NativeManager;->mUIMsgDispatcher:Lcom/waze/NativeManager$UIMsgDispatcher;

    .line 3425
    sget-object v2, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_NATIVE:Lcom/waze/NativeManager$UIEvent;

    invoke-static {v2}, Lcom/waze/NativeManager$UIEvent;->ToInt(Lcom/waze/NativeManager$UIEvent;)I

    move-result v2

    .line 3424
    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 3426
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3427
    return-void
.end method

.method public PostNativeMessage(ILcom/waze/IMessageParam;)V
    .locals 4
    .parameter "aMsgId"
    .parameter "aObjParam"

    .prologue
    .line 3440
    iget-object v1, p0, Lcom/waze/NativeManager;->mUIMsgDispatcher:Lcom/waze/NativeManager$UIMsgDispatcher;

    .line 3441
    sget-object v2, Lcom/waze/NativeManager$UIEvent;->UI_EVENT_NATIVE:Lcom/waze/NativeManager$UIEvent;

    invoke-static {v2}, Lcom/waze/NativeManager$UIEvent;->ToInt(Lcom/waze/NativeManager$UIEvent;)I

    move-result v2

    const/4 v3, 0x0

    .line 3440
    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 3442
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3443
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3444
    return-void
.end method

.method public PostPriorityNativeMessage(ILcom/waze/IMessageParam;)V
    .locals 4
    .parameter "aMsgId"
    .parameter "aObjParam"

    .prologue
    .line 3457
    iget-object v1, p0, Lcom/waze/NativeManager;->mUIMsgDispatcher:Lcom/waze/NativeManager$UIMsgDispatcher;

    .line 3458
    sget-object v2, Lcom/waze/NativeManager$UIEvent;->UI_PRIORITY_EVENT_NATIVE:Lcom/waze/NativeManager$UIEvent;

    invoke-static {v2}, Lcom/waze/NativeManager$UIEvent;->ToInt(Lcom/waze/NativeManager$UIEvent;)I

    move-result v2

    const/4 v3, 0x0

    .line 3457
    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 3459
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3461
    iget-object v2, p0, Lcom/waze/NativeManager;->mPriorityEventQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3462
    :try_start_0
    iget-object v1, p0, Lcom/waze/NativeManager;->mPriorityEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3461
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3465
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3466
    return-void

    .line 3461
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public PostRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "aMsg"

    .prologue
    .line 3122
    sget-boolean v0, Lcom/waze/NativeManager;->mAppShutDownFlag:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/waze/NativeManager;->mNativeThread:Lcom/waze/NativeManager$NativeThread;

    invoke-virtual {v0}, Lcom/waze/NativeManager$NativeThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3123
    iget-object v0, p0, Lcom/waze/NativeManager;->mUIMsgDispatcher:Lcom/waze/NativeManager$UIMsgDispatcher;

    invoke-virtual {v0, p1}, Lcom/waze/NativeManager$UIMsgDispatcher;->post(Ljava/lang/Runnable;)Z

    .line 3124
    :cond_0
    return-void
.end method

.method public PostRunnable(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "aMsg"
    .parameter "aDelayMillis"

    .prologue
    .line 3131
    sget-object v0, Lcom/waze/NativeManager;->mNativeThread:Lcom/waze/NativeManager$NativeThread;

    invoke-virtual {v0}, Lcom/waze/NativeManager$NativeThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3132
    iget-object v0, p0, Lcom/waze/NativeManager;->mUIMsgDispatcher:Lcom/waze/NativeManager$UIMsgDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/waze/NativeManager$UIMsgDispatcher;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3133
    :cond_0
    return-void
.end method

.method public PostRunnableAtFront(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "aMsg"

    .prologue
    .line 3140
    iget-object v0, p0, Lcom/waze/NativeManager;->mUIMsgDispatcher:Lcom/waze/NativeManager$UIMsgDispatcher;

    invoke-virtual {v0, p1}, Lcom/waze/NativeManager$UIMsgDispatcher;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 3141
    return-void
.end method

.method public PostUIMessage(Lcom/waze/NativeManager$UIEvent;)V
    .locals 2
    .parameter "aEvent"

    .prologue
    .line 3481
    iget-object v0, p0, Lcom/waze/NativeManager;->mUIMsgDispatcher:Lcom/waze/NativeManager$UIMsgDispatcher;

    invoke-static {p1}, Lcom/waze/NativeManager$UIEvent;->ToInt(Lcom/waze/NativeManager$UIEvent;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3482
    return-void
.end method

.method public PostUIMessage(Lcom/waze/NativeManager$UIEvent;I)V
    .locals 3
    .parameter "aEvent"
    .parameter "aParam"

    .prologue
    .line 3498
    iget-object v1, p0, Lcom/waze/NativeManager;->mUIMsgDispatcher:Lcom/waze/NativeManager$UIMsgDispatcher;

    invoke-static {p1}, Lcom/waze/NativeManager$UIEvent;->ToInt(Lcom/waze/NativeManager$UIEvent;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3499
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 3500
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3501
    return-void
.end method

.method public PreparePoi(ILjava/lang/String;)V
    .locals 3
    .parameter "iID"
    .parameter "promotionUrl"

    .prologue
    .line 2925
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 2926
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    .line 2938
    :cond_0
    :goto_0
    return-void

    .line 2929
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 2930
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 2933
    new-instance v2, Lcom/waze/NativeManager$145;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/waze/NativeManager$145;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;ILjava/lang/String;)V

    invoke-static {v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public native RandomUserMsgNTV()Z
.end method

.method public RealtimeLogin()V
    .locals 2

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/waze/NativeManager;->RealtimeLoginNTV()V

    .line 597
    :goto_0
    return-void

    .line 590
    :cond_0
    new-instance v0, Lcom/waze/NativeManager$28;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$28;-><init>(Lcom/waze/NativeManager;)V

    .line 595
    .local v0, event:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public RealtimeLogout()V
    .locals 2

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/waze/NativeManager;->RealtimeLogoutNTV()V

    .line 584
    :goto_0
    return-void

    .line 577
    :cond_0
    new-instance v0, Lcom/waze/NativeManager$27;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$27;-><init>(Lcom/waze/NativeManager;)V

    .line 582
    .local v0, event:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public native RealtimeReportTrafficNTV(I)V
.end method

.method public RefreshFriendsBar(II)V
    .locals 1
    .parameter "nFriendsOnline"
    .parameter "nPendingFriends"

    .prologue
    .line 810
    new-instance v0, Lcom/waze/NativeManager$47;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$47;-><init>(Lcom/waze/NativeManager;II)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 825
    return-void
.end method

.method public RefreshFriendsDriving()V
    .locals 1

    .prologue
    .line 1503
    new-instance v0, Lcom/waze/NativeManager$74;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$74;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1512
    return-void
.end method

.method public RegisterActivity()V
    .locals 1

    .prologue
    .line 2232
    new-instance v0, Lcom/waze/NativeManager$107;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$107;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2241
    return-void
.end method

.method public RemoveContactFromDB(J)V
    .locals 1
    .parameter "ID"

    .prologue
    .line 407
    new-instance v0, Lcom/waze/NativeManager$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$10;-><init>(Lcom/waze/NativeManager;J)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method

.method public native ReportAbusNTV(II)V
.end method

.method public native ReportAllowImagesNTV()Z
.end method

.method public native ReportAllowVoiceRecordingsNTV()Z
.end method

.method public ResizeWebView(IIII)V
    .locals 2
    .parameter "aMinX"
    .parameter "aMinY"
    .parameter "aMaxX"
    .parameter "aMaxY"

    .prologue
    .line 4210
    new-instance v0, Lcom/waze/LayoutManager$WazeRect;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/waze/LayoutManager$WazeRect;-><init>(IIII)V

    .line 4211
    .local v0, rect:Lcom/waze/LayoutManager$WazeRect;
    new-instance v1, Lcom/waze/NativeManager$166;

    invoke-direct {v1, p0, v0}, Lcom/waze/NativeManager$166;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager$WazeRect;)V

    .line 4218
    .local v1, showWebView:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 4219
    return-void
.end method

.method public declared-synchronized RestoreAppSettings()V
    .locals 0

    .prologue
    .line 4284
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized RestoreSystemSettings()V
    .locals 0

    .prologue
    .line 4266
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public RoadClosureEnableNextButton(I)V
    .locals 3
    .parameter "Index"

    .prologue
    .line 3042
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 3043
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    .line 3055
    :cond_0
    :goto_0
    return-void

    .line 3046
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 3047
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 3050
    new-instance v2, Lcom/waze/NativeManager$150;

    invoke-direct {v2, p0, v0, p1}, Lcom/waze/NativeManager$150;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;I)V

    invoke-static {v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public SHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "input"

    .prologue
    const/4 v5, 0x0

    .line 2256
    const/4 v1, 0x0

    .line 2258
    .local v1, digest:Ljava/security/MessageDigest;
    :try_start_0
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2262
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 2264
    const/4 v0, 0x0

    .line 2266
    .local v0, byteData:[B
    :try_start_1
    const-string v6, "UTF-8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 2270
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2272
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v0

    if-lt v3, v5, :cond_0

    .line 2275
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v0           #byteData:[B
    .end local v3           #i:I
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :goto_1
    return-object v5

    .line 2259
    :catch_0
    move-exception v2

    .line 2260
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_1

    .line 2267
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v0       #byteData:[B
    :catch_1
    move-exception v2

    .line 2268
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_1

    .line 2273
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v3       #i:I
    .restart local v4       #sb:Ljava/lang/StringBuffer;
    :cond_0
    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit16 v5, v5, 0x100

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2272
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized SaveAppSettings()V
    .locals 0

    .prologue
    .line 4277
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public SaveImageToCache(Ljava/lang/String;)V
    .locals 1
    .parameter "ImagePath"

    .prologue
    .line 782
    new-instance v0, Lcom/waze/NativeManager$45;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$45;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 787
    return-void
.end method

.method public SaveKeyData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "Key"
    .parameter "Data"

    .prologue
    .line 2894
    new-instance v0, Lcom/waze/NativeManager$143;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$143;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2903
    return-void
.end method

.method public declared-synchronized SaveSystemSettings()V
    .locals 0

    .prologue
    .line 4306
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public SearchBarVisible(Z)V
    .locals 1
    .parameter "bIsVisible"

    .prologue
    .line 791
    new-instance v0, Lcom/waze/NativeManager$46;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$46;-><init>(Lcom/waze/NativeManager;Z)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 806
    return-void
.end method

.method public SendBeepBeep(IIIILcom/waze/NativeManager$IResultCode;)V
    .locals 7
    .parameter "lon"
    .parameter "lat"
    .parameter "steering"
    .parameter "Id"
    .parameter "iRes"

    .prologue
    .line 711
    new-instance v0, Lcom/waze/NativeManager$40;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/waze/NativeManager$40;-><init>(Lcom/waze/NativeManager;IIIILcom/waze/NativeManager$IResultCode;)V

    .line 726
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 727
    return-void
.end method

.method public SendGoogleNowToken(Ljava/lang/String;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 744
    new-instance v0, Lcom/waze/NativeManager$42;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$42;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 750
    return-void
.end method

.method public SendNetInfo()V
    .locals 1

    .prologue
    .line 6176
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeLocListener;->onLogin()V

    .line 6178
    iget-object v0, p0, Lcom/waze/NativeManager;->m_NetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    .line 6208
    :goto_0
    return-void

    .line 6183
    :cond_0
    new-instance v0, Lcom/waze/NativeManager$229;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$229;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public SendPickUpRequest()V
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lcom/waze/NativeManager$11;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$11;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 422
    return-void
.end method

.method public native SendPingNTV()V
.end method

.method public native SendPrvPingNTV()V
.end method

.method public SendShareMyRide()V
    .locals 1

    .prologue
    .line 735
    new-instance v0, Lcom/waze/NativeManager$41;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$41;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 741
    return-void
.end method

.method public SetAlertPopupTimer(I)V
    .locals 0
    .parameter "timeOut"

    .prologue
    .line 1893
    return-void
.end method

.method public SetAlerterPopupCloseTime(I)V
    .locals 3
    .parameter "timer"

    .prologue
    .line 2441
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 2442
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    .line 2454
    :cond_0
    :goto_0
    return-void

    .line 2445
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 2446
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 2449
    new-instance v2, Lcom/waze/NativeManager$112;

    invoke-direct {v2, p0, v0, p1}, Lcom/waze/NativeManager$112;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;I)V

    invoke-static {v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public SetBackLightOn(I)V
    .locals 3
    .parameter "aAlwaysOn"

    .prologue
    .line 4059
    const-string v0, "BackLight"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Always on value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/Logger;->d_(Ljava/lang/String;Ljava/lang/String;)V

    .line 4061
    new-instance v0, Lcom/waze/NativeManager$163;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$163;-><init>(Lcom/waze/NativeManager;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 4066
    return-void
.end method

.method public SetDarkViewOffset(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2909
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 2910
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    .line 2922
    :cond_0
    :goto_0
    return-void

    .line 2913
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 2914
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 2917
    new-instance v2, Lcom/waze/NativeManager$144;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/waze/NativeManager$144;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;II)V

    invoke-static {v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public SetIsMenuEnabled(I)V
    .locals 1
    .parameter "aValue"

    .prologue
    .line 1187
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/waze/NativeManager;->mIsMenuEnabled:Z

    .line 1188
    return-void

    .line 1187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetNetInfo(Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "netInfo"

    .prologue
    .line 6171
    iput-object p1, p0, Lcom/waze/NativeManager;->m_NetworkInfo:Landroid/net/NetworkInfo;

    .line 6172
    return-void
.end method

.method public SetPhoneIsFirstTime(Z)V
    .locals 2
    .parameter "bIsPhoneFirstTime"

    .prologue
    .line 910
    move v0, p1

    .line 912
    .local v0, bIsFirstTime:Z
    new-instance v1, Lcom/waze/NativeManager$54;

    invoke-direct {v1, p0, v0}, Lcom/waze/NativeManager$54;-><init>(Lcom/waze/NativeManager;Z)V

    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 918
    return-void
.end method

.method public SetPickUpLater(Z)V
    .locals 2
    .parameter "bIsPickUpLater"

    .prologue
    .line 939
    new-instance v0, Lcom/waze/NativeManager$57;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$57;-><init>(Lcom/waze/NativeManager;Z)V

    .line 945
    .local v0, r:Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 949
    :goto_0
    return-void

    .line 948
    :cond_0
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public SetPopUpInterrupt()V
    .locals 1

    .prologue
    .line 1845
    new-instance v0, Lcom/waze/NativeManager$88;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$88;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1860
    return-void
.end method

.method public SetShowGasPricePopupAgain(Z)V
    .locals 1
    .parameter "bToShow"

    .prologue
    .line 691
    new-instance v0, Lcom/waze/NativeManager$38;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$38;-><init>(Lcom/waze/NativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 697
    return-void
.end method

.method public SetShutDownActive(Z)V
    .locals 0
    .parameter "bIsActive"

    .prologue
    .line 1763
    iput-boolean p1, p0, Lcom/waze/NativeManager;->bIsShutDown:Z

    .line 1764
    return-void
.end method

.method public SetSocialIsFirstTime(Z)V
    .locals 2
    .parameter "bIsSocialFirstTime"

    .prologue
    .line 899
    move v0, p1

    .line 901
    .local v0, bIsFirstTime:Z
    new-instance v1, Lcom/waze/NativeManager$53;

    invoke-direct {v1, p0, v0}, Lcom/waze/NativeManager$53;-><init>(Lcom/waze/NativeManager;Z)V

    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 907
    return-void
.end method

.method public SetSysVolume(I)V
    .locals 3
    .parameter "aSysVol"

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/waze/NativeManager;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 4092
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/waze/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4091
    check-cast v0, Landroid/media/AudioManager;

    .line 4094
    .local v0, audioMngr:Landroid/media/AudioManager;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 4095
    return-void
.end method

.method public SetVoiceActionsStr([Ljava/lang/Object;)V
    .locals 1
    .parameter "VoiceActions"

    .prologue
    .line 966
    new-instance v0, Lcom/waze/NativeManager$59;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$59;-><init>(Lcom/waze/NativeManager;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 972
    return-void
.end method

.method public SetVolume(III)V
    .locals 7
    .parameter "aLvl"
    .parameter "aMinLvl"
    .parameter "aMaxLvl"

    .prologue
    const/4 v6, 0x3

    .line 4076
    invoke-virtual {p0}, Lcom/waze/NativeManager;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v3

    .line 4077
    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/waze/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4076
    check-cast v0, Landroid/media/AudioManager;

    .line 4078
    .local v0, audioMngr:Landroid/media/AudioManager;
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 4081
    .local v1, maxSysVol:I
    sub-int v3, p1, p2

    add-int/lit8 v4, v1, 0x0

    sub-int v5, p3, p2

    div-int/2addr v4, v5

    mul-int v2, v3, v4

    .line 4083
    .local v2, newSysVol:I
    const/4 v3, 0x0

    invoke-virtual {v0, v6, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 4084
    return-void
.end method

.method public SetWebViewDebug(Z)V
    .locals 1
    .parameter "bIsDebug"

    .prologue
    .line 828
    new-instance v0, Lcom/waze/NativeManager$48;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$48;-><init>(Lcom/waze/NativeManager;Z)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 836
    return-void
.end method

.method public Set_Parking(II)V
    .locals 1
    .parameter "lon"
    .parameter "lat"

    .prologue
    .line 520
    new-instance v0, Lcom/waze/NativeManager$21;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$21;-><init>(Lcom/waze/NativeManager;II)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 526
    return-void
.end method

.method public native ShareRideFeatureEnabledNTV()Z
.end method

.method public ShouldDisplayGasInSettings()Z
    .locals 1

    .prologue
    .line 5525
    invoke-direct {p0}, Lcom/waze/NativeManager;->shouldDisplayGasSettingsNTV()Z

    move-result v0

    return v0
.end method

.method public ShowAlerterPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 10
    .parameter "titleStr"
    .parameter "desc"
    .parameter "iconName"
    .parameter "distanceStr"
    .parameter "is_cancelable"
    .parameter "can_send_thumbs_up"

    .prologue
    .line 2370
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v9

    .line 2371
    .local v9, mainActivity:Lcom/waze/MainActivity;
    if-nez v9, :cond_1

    .line 2385
    :cond_0
    :goto_0
    return-void

    .line 2374
    :cond_1
    invoke-virtual {v9}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    .line 2375
    .local v2, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v2, :cond_0

    .line 2378
    new-instance v0, Lcom/waze/NativeManager$108;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/waze/NativeManager$108;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public ShowBonusWebPopup(ILjava/lang/String;II)V
    .locals 8
    .parameter "iID"
    .parameter "url"
    .parameter "lat"
    .parameter "lon"

    .prologue
    .line 2993
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v7

    .line 2994
    .local v7, mainActivity:Lcom/waze/MainActivity;
    if-nez v7, :cond_1

    .line 3006
    :cond_0
    :goto_0
    return-void

    .line 2997
    :cond_1
    invoke-virtual {v7}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    .line 2998
    .local v2, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v2, :cond_0

    .line 3001
    new-instance v0, Lcom/waze/NativeManager$147;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/waze/NativeManager$147;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;ILjava/lang/String;II)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public ShowContacts()V
    .locals 0

    .prologue
    .line 3221
    invoke-static {}, Lcom/waze/AppService;->ShowContacts()V

    .line 3222
    return-void
.end method

.method public ShowDilerWindow()V
    .locals 2

    .prologue
    .line 4116
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/waze/AppService;->ShowDilerWindow(J)V

    .line 4117
    return-void
.end method

.method public ShowEditBox(II[BJII)V
    .locals 10
    .parameter "aAction"
    .parameter "aStayOnAction"
    .parameter "aText"
    .parameter "aCbContext"
    .parameter "aTopMargin"
    .parameter "aFlags"

    .prologue
    .line 3241
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v9

    .line 3242
    .local v9, mainActivity:Lcom/waze/MainActivity;
    if-nez v9, :cond_1

    .line 3281
    :cond_0
    :goto_0
    return-void

    .line 3245
    :cond_1
    invoke-virtual {v9}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v3

    .line 3246
    .local v3, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v3, :cond_0

    .line 3250
    new-instance v7, Lcom/waze/NativeManager$153;

    invoke-direct {v7, p0, p4, p5}, Lcom/waze/NativeManager$153;-><init>(Lcom/waze/NativeManager;J)V

    .line 3258
    .local v7, editBoxCb:Lcom/waze/EditBox$EditBoxCallback;
    new-instance v0, Lcom/waze/NativeManager$154;

    move-object v1, p0

    move/from16 v2, p7

    move v4, p1

    move v5, p2

    move-object v6, p3

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/waze/NativeManager$154;-><init>(Lcom/waze/NativeManager;ILcom/waze/LayoutManager;II[BLcom/waze/EditBox$EditBoxCallback;I)V

    .line 3280
    .local v0, showEditBox:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public ShowFriendsOnlinePopup(I)V
    .locals 3
    .parameter "nTimer"

    .prologue
    .line 2389
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 2390
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    .line 2403
    :cond_0
    :goto_0
    return-void

    .line 2393
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 2394
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 2397
    new-instance v2, Lcom/waze/NativeManager$109;

    invoke-direct {v2, p0, v0, p1}, Lcom/waze/NativeManager$109;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;I)V

    invoke-static {v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public ShowMessageTicker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "title"
    .parameter "text"
    .parameter "icon"
    .parameter "timeout"

    .prologue
    .line 3010
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v7

    .line 3011
    .local v7, mainActivity:Lcom/waze/MainActivity;
    if-nez v7, :cond_1

    .line 3023
    :cond_0
    :goto_0
    return-void

    .line 3014
    :cond_1
    invoke-virtual {v7}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    .line 3015
    .local v2, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v2, :cond_0

    .line 3018
    new-instance v0, Lcom/waze/NativeManager$148;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/waze/NativeManager$148;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public ShowNotificationMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "msg"
    .parameter "icon"
    .parameter "nType"

    .prologue
    .line 2118
    new-instance v0, Lcom/waze/NativeManager$102;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$102;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2133
    return-void
.end method

.method public ShowSoftKeyboard(II)V
    .locals 4
    .parameter "aAction"
    .parameter "aCloseOnAction"

    .prologue
    const/4 v2, 0x1

    .line 3200
    invoke-virtual {p0}, Lcom/waze/NativeManager;->getMainView()Lcom/waze/MapViewWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/MapViewWrapper;->getMapView()Lcom/waze/MapView;

    move-result-object v1

    .line 3201
    .local v1, view:Lcom/waze/MapView;
    new-instance v0, Lcom/waze/NativeManager$152;

    invoke-direct {v0, p0, v1}, Lcom/waze/NativeManager$152;-><init>(Lcom/waze/NativeManager;Lcom/waze/MapView;)V

    .line 3207
    .local v0, showKeyboard:Ljava/lang/Runnable;
    invoke-virtual {v1, p1}, Lcom/waze/MapView;->setImeAction(I)V

    .line 3209
    if-ne p2, v2, :cond_0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/waze/MapView;->setImeCloseOnAction(Z)V

    .line 3211
    invoke-virtual {v1, v0}, Lcom/waze/MapView;->post(Ljava/lang/Runnable;)Z

    .line 3212
    return-void

    .line 3209
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public ShowUpdateGasPricePopup(JJ)V
    .locals 8
    .parameter "contextcb"
    .parameter "cb"

    .prologue
    .line 2407
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v7

    .line 2408
    .local v7, mainActivity:Lcom/waze/MainActivity;
    if-nez v7, :cond_1

    .line 2421
    :cond_0
    :goto_0
    return-void

    .line 2411
    :cond_1
    invoke-virtual {v7}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    .line 2412
    .local v2, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v2, :cond_0

    .line 2415
    new-instance v0, Lcom/waze/NativeManager$110;

    move-object v1, p0

    move-wide v3, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/waze/NativeManager$110;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;JJ)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public ShowWebView([BIIIII)V
    .locals 4
    .parameter "aUrl"
    .parameter "aMinX"
    .parameter "aMinY"
    .parameter "aMaxX"
    .parameter "aMaxY"
    .parameter "aFlags"

    .prologue
    .line 4193
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URL to load: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/Logger;->d(Ljava/lang/String;)V

    .line 4194
    new-instance v0, Lcom/waze/LayoutManager$WazeRect;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/waze/LayoutManager$WazeRect;-><init>(IIII)V

    .line 4195
    .local v0, rect:Lcom/waze/LayoutManager$WazeRect;
    new-instance v1, Lcom/waze/NativeManager$165;

    invoke-direct {v1, p0, p1, v0, p6}, Lcom/waze/NativeManager$165;-><init>(Lcom/waze/NativeManager;[BLcom/waze/LayoutManager$WazeRect;I)V

    .line 4201
    .local v1, showWebView:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 4202
    return-void
.end method

.method public ShutDown()V
    .locals 2

    .prologue
    .line 3997
    iget-object v0, p0, Lcom/waze/NativeManager;->mTrafficStats:Lcom/waze/SessionTrafficStats;

    if-eqz v0, :cond_0

    .line 3998
    iget-object v0, p0, Lcom/waze/NativeManager;->mTrafficStats:Lcom/waze/SessionTrafficStats;

    invoke-virtual {v0}, Lcom/waze/SessionTrafficStats;->endSession()V

    .line 3999
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/NativeManager;->mTrafficStats:Lcom/waze/SessionTrafficStats;

    .line 4001
    :cond_0
    invoke-virtual {p0}, Lcom/waze/NativeManager;->ClearNotifications()V

    .line 4003
    invoke-virtual {p0}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4006
    new-instance v0, Lcom/waze/NativeManager$162;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$162;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 4026
    :goto_0
    return-void

    .line 4022
    :cond_1
    iget-object v0, p0, Lcom/waze/NativeManager;->mUIMsgDispatcher:Lcom/waze/NativeManager$UIMsgDispatcher;

    iget-object v1, p0, Lcom/waze/NativeManager;->shutDownEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager$UIMsgDispatcher;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "event"
    .parameter "infoName"
    .parameter "infoVal"
    .parameter "bIsbeforeLogin"

    .prologue
    .line 6211
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->analyticsDebug(Ljava/lang/String;)V

    .line 6212
    invoke-virtual {p0}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6214
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/waze/NativeManager;->SignUplogAnalyticsStrNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6225
    :goto_0
    return-void

    .line 6218
    :cond_0
    new-instance v0, Lcom/waze/NativeManager$230;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$230;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public StartClosureObject(ZIZ)V
    .locals 1
    .parameter "bisReopen"
    .parameter "selected"
    .parameter "bIsServerRequest"

    .prologue
    .line 957
    new-instance v0, Lcom/waze/NativeManager$58;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$58;-><init>(Lcom/waze/NativeManager;ZIZ)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 963
    return-void
.end method

.method public StartCompass()V
    .locals 1

    .prologue
    .line 336
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lcom/waze/NativeManager$7;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$7;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/NativeLocListener;->bIsStartCompass:Z

    goto :goto_0
.end method

.method public StopCompass()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcom/waze/NativeManager$6;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$6;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method

.method public StopFollow()V
    .locals 1

    .prologue
    .line 5401
    new-instance v0, Lcom/waze/NativeManager$179;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$179;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 5407
    return-void
.end method

.method public StopWaze()V
    .locals 0

    .prologue
    .line 4029
    invoke-virtual {p0}, Lcom/waze/NativeManager;->ShutDown()V

    .line 4040
    return-void
.end method

.method public SuggestUserNameInit()V
    .locals 1

    .prologue
    .line 600
    new-instance v0, Lcom/waze/NativeManager$29;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$29;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 606
    return-void
.end method

.method public SuggestUserNameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "firstname"
    .parameter "lastname"
    .parameter "username"

    .prologue
    .line 609
    new-instance v0, Lcom/waze/NativeManager$30;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$30;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 615
    return-void
.end method

.method public SuggestUserNameTerminate(Ljava/lang/String;)V
    .locals 1
    .parameter "UserName"

    .prologue
    .line 664
    new-instance v0, Lcom/waze/NativeManager$35;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$35;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 670
    return-void
.end method

.method public native TickerClosedNTV()V
.end method

.method public ToCancelSplash()Z
    .locals 1

    .prologue
    .line 2980
    sget-boolean v0, Lcom/waze/NativeManager;->bIsCheck:Z

    if-eqz v0, :cond_0

    .line 2982
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/NativeManager;->bIsCheck:Z

    .line 2983
    invoke-direct {p0}, Lcom/waze/NativeManager;->IsUpgradeNTV()Z

    move-result v0

    .line 2987
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public UpdateAlerterPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "titleStr"
    .parameter "iconName"
    .parameter "distanceStr"

    .prologue
    .line 2425
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v6

    .line 2426
    .local v6, mainActivity:Lcom/waze/MainActivity;
    if-nez v6, :cond_1

    .line 2438
    :cond_0
    :goto_0
    return-void

    .line 2429
    :cond_1
    invoke-virtual {v6}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v2

    .line 2430
    .local v2, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v2, :cond_0

    .line 2433
    new-instance v0, Lcom/waze/NativeManager$111;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$111;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public UpdateSharePermissions(Z)V
    .locals 1
    .parameter "ToShow"

    .prologue
    .line 426
    new-instance v0, Lcom/waze/NativeManager$12;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$12;-><init>(Lcom/waze/NativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 433
    return-void
.end method

.method public UploadProfileImage(Ljava/lang/String;)V
    .locals 1
    .parameter "ImagePath"

    .prologue
    .line 445
    new-instance v0, Lcom/waze/NativeManager$14;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$14;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method public UrlHandler(Ljava/lang/String;Lcom/waze/NativeManager$OnUrlHandleResult;)V
    .locals 1
    .parameter "aUrl"
    .parameter "onResult"

    .prologue
    .line 1272
    if-eqz p1, :cond_0

    .line 1274
    new-instance v0, Lcom/waze/NativeManager$64;

    invoke-direct {v0, p0, p2, p1}, Lcom/waze/NativeManager$64;-><init>(Lcom/waze/NativeManager;Lcom/waze/NativeManager$OnUrlHandleResult;Ljava/lang/String;)V

    .line 1280
    .local v0, r:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 1282
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public UrlHandler(Ljava/lang/String;)Z
    .locals 3
    .parameter "aUrl"

    .prologue
    .line 1244
    const/4 v1, 0x0

    .line 1246
    .local v1, res:Z
    if-eqz p1, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1248
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->UrlHandlerNTV(Ljava/lang/String;)Z

    move-result v1

    .line 1263
    :cond_0
    :goto_0
    return v1

    .line 1253
    :cond_1
    new-instance v0, Lcom/waze/NativeManager$UrlResultRequest;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$UrlResultRequest;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    .line 1255
    .local v0, event:Lcom/waze/NativeManager$UrlResultRequest;
    iget-object v2, p0, Lcom/waze/NativeManager;->mUrlHandlerWaiter:Lcom/waze/ifs/async/Waiter;

    invoke-virtual {v2}, Lcom/waze/ifs/async/Waiter;->prepare()V

    .line 1256
    invoke-virtual {p0, v0}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 1257
    iget-object v2, p0, Lcom/waze/NativeManager;->mUrlHandlerWaiter:Lcom/waze/ifs/async/Waiter;

    invoke-virtual {v2}, Lcom/waze/ifs/async/Waiter;->_wait()V

    .line 1259
    iget-boolean v1, v0, Lcom/waze/NativeManager$UrlResultRequest;->handled:Z

    goto :goto_0
.end method

.method public UserNameSuggestResult(ILjava/lang/String;)V
    .locals 1
    .parameter "nType"
    .parameter "username"

    .prologue
    .line 1383
    new-instance v0, Lcom/waze/NativeManager$67;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$67;-><init>(Lcom/waze/NativeManager;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1392
    return-void
.end method

.method public native ValidateMobileTypeNTV()Z
.end method

.method public VenueAddImageResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "res"
    .parameter "path"
    .parameter "id"
    .parameter "imageUrl"
    .parameter "imageThumbnailUrl"

    .prologue
    .line 6113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6114
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "res"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6115
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6116
    const-string v1, "id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6117
    const-string v1, "image_url"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6118
    const-string v1, "image_thumbnail_url"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6119
    iget-object v1, p0, Lcom/waze/NativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;

    sget v2, Lcom/waze/NativeManager;->UH_VENUE_ADD_IMAGE_RESULT:I

    invoke-virtual {v1, v2, v0}, Lcom/waze/ifs/async/UpdateHandlers;->sendUpdateMessage(ILandroid/os/Bundle;)V

    .line 6120
    return-void
.end method

.method public VenueStatusResponse(IILjava/lang/String;)V
    .locals 3
    .parameter "res"
    .parameter "points"
    .parameter "id"

    .prologue
    .line 6104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6105
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "res"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6106
    const-string v1, "points"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6107
    const-string v1, "id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6108
    iget-object v1, p0, Lcom/waze/NativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;

    sget v2, Lcom/waze/NativeManager;->UH_VENUE_STATUS:I

    invoke-virtual {v1, v2, v0}, Lcom/waze/ifs/async/UpdateHandlers;->sendUpdateMessage(ILandroid/os/Bundle;)V

    .line 6109
    return-void
.end method

.method public activateProximity(ZZ)V
    .locals 1
    .parameter "activate"
    .parameter "twice"

    .prologue
    .line 1669
    new-instance v0, Lcom/waze/NativeManager$79;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$79;-><init>(Lcom/waze/NativeManager;ZZ)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1683
    return-void
.end method

.method public asrActivated()V
    .locals 2

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/waze/NativeManager;->isDisplayReadyForAsr()Z

    move-result v0

    .line 369
    .local v0, ready:Z
    if-eqz v0, :cond_0

    .line 370
    new-instance v1, Lcom/waze/NativeManager$8;

    invoke-direct {v1, p0}, Lcom/waze/NativeManager$8;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 377
    :cond_0
    return-void
.end method

.method public native asrActivatedNTV()V
.end method

.method public asrCancel()V
    .locals 1

    .prologue
    .line 5392
    new-instance v0, Lcom/waze/NativeManager$178;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$178;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 5398
    return-void
.end method

.method public asrListen(JLjava/lang/String;)V
    .locals 1
    .parameter "callback"
    .parameter "Lang"

    .prologue
    .line 1733
    new-instance v0, Lcom/waze/NativeManager$81;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$81;-><init>(Lcom/waze/NativeManager;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1738
    return-void
.end method

.method public asrListenCallback(J[Ljava/lang/Object;[F)V
    .locals 6
    .parameter "callback"
    .parameter "voiceResult"
    .parameter "confidence"

    .prologue
    .line 5434
    new-instance v0, Lcom/waze/NativeManager$182;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$182;-><init>(Lcom/waze/NativeManager;J[Ljava/lang/Object;[F)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 5440
    return-void
.end method

.method public asrStopListen()V
    .locals 1

    .prologue
    .line 1741
    new-instance v0, Lcom/waze/NativeManager$82;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$82;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1746
    return-void
.end method

.method public callCallbackInt(JI)V
    .locals 2
    .parameter "cb"
    .parameter "intParam"

    .prologue
    .line 2829
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2835
    :goto_0
    return-void

    .line 2830
    :cond_0
    new-instance v0, Lcom/waze/NativeManager$140;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$140;-><init>(Lcom/waze/NativeManager;JI)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public checkTypingLock(Lcom/waze/view/text/TypingLockListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 3334
    new-instance v0, Lcom/waze/NativeManager$158;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$158;-><init>(Lcom/waze/NativeManager;Lcom/waze/view/text/TypingLockListener;)V

    .line 3346
    .local v0, checkTypingLockEvent:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 3347
    return-void
.end method

.method public closeDetailsPopup()V
    .locals 1

    .prologue
    .line 2210
    invoke-static {}, Lcom/waze/view/popups/DetailsPopUp;->hasInstance()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2228
    :cond_0
    :goto_0
    return-void

    .line 2212
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2215
    new-instance v0, Lcom/waze/NativeManager$106;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$106;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public closeThumbsUpPopup()V
    .locals 1

    .prologue
    .line 1991
    new-instance v0, Lcom/waze/NativeManager$95;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$95;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2006
    return-void
.end method

.method public createLogCat()V
    .locals 3

    .prologue
    .line 3060
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 3061
    const-string v2, "logcat -d -v time -f /sdcard/waze/crash_logs/Logcat.logcat"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 3062
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3069
    :goto_0
    return-void

    .line 3063
    :catch_0
    move-exception v0

    .line 3064
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3065
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3067
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public decryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "encPassword"

    .prologue
    .line 1583
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/waze/NativeManager;->decryptPasswordStatic(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public displayGeoConfigProgress(Z)V
    .locals 2
    .parameter "bIsTermsOfUseAccepted"

    .prologue
    .line 3977
    if-nez p1, :cond_0

    .line 3978
    sget-object v0, Lcom/waze/NativeManager;->mNativeCanvas:Lcom/waze/NativeCanvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/NativeCanvas;->setCancelSplashNeeded(Z)V

    .line 3980
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3981
    const-string v0, "\u00c2\u00e0\u00f9\u00c2\u00df\u00e3\u00c2\u00e5\u00f1\u00d4\u00ba\u00e5\u00cb\u00d8\u2211\u00c1\u00ae\u00e7\u00c2\u00c4\u00f4\u201a\u00c4\u00b6"

    invoke-virtual {p0, v0}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 3986
    :goto_0
    return-void

    .line 3984
    :cond_1
    const-string v0, "Initializing, please wait..."

    invoke-virtual {p0, v0}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public editTextDialogCallback(Ljava/lang/String;JJ)V
    .locals 7
    .parameter "text"
    .parameter "callback"
    .parameter "context"

    .prologue
    .line 5444
    new-instance v0, Lcom/waze/NativeManager$183;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/waze/NativeManager$183;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;JJ)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 5450
    return-void
.end method

.method public encouragementCallback(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 872
    new-instance v0, Lcom/waze/NativeManager$50;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$50;-><init>(Lcom/waze/NativeManager;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 878
    return-void
.end method

.method public native encouragementCallbackNTV(I)V
.end method

.method public encouragementCloseCallback(J)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 881
    new-instance v0, Lcom/waze/NativeManager$51;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$51;-><init>(Lcom/waze/NativeManager;J)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 887
    return-void
.end method

.method public native encouragementCloseCallbackNTV(J)V
.end method

.method public encryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "plainPassword"

    .prologue
    .line 1609
    if-eqz p1, :cond_0

    .line 1610
    :try_start_0
    const-string v8, "utf-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1612
    .local v0, bytes:[B
    :goto_0
    const-string v8, "PBEWithMD5AndDES"

    invoke-static {v8}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 1613
    .local v4, keyFactory:Ljavax/crypto/SecretKeyFactory;
    new-instance v8, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v9, Lcom/waze/NativeManager;->SEKRIT:[C

    invoke-direct {v8, v9}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v4, v8}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 1614
    .local v3, key:Ljavax/crypto/SecretKey;
    const-string v8, "PBEWithMD5AndDES"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 1615
    .local v5, pbeCipher:Ljavax/crypto/Cipher;
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/waze/NativeManager;->getUniqueId(Landroid/content/Context;)[B

    move-result-object v6

    .line 1616
    .local v6, privateId:[B
    const/4 v8, 0x1

    new-instance v9, Ljavax/crypto/spec/PBEParameterSpec;

    .line 1617
    const/16 v10, 0x14

    invoke-direct {v9, v6, v10}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 1616
    invoke-virtual {v5, v8, v3, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1618
    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 1619
    .local v2, encBytes:[B
    new-instance v7, Ljava/lang/String;

    invoke-static {v2}, Lcom/waze/utils/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1620
    .local v7, retString:Ljava/lang/String;
    return-object v7

    .line 1610
    .end local v0           #bytes:[B
    .end local v2           #encBytes:[B
    .end local v3           #key:Ljavax/crypto/SecretKey;
    .end local v4           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v5           #pbeCipher:Ljavax/crypto/Cipher;
    .end local v6           #privateId:[B
    .end local v7           #retString:Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    new-array v0, v8, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1621
    :catch_0
    move-exception v1

    .line 1622
    .local v1, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 3095
    invoke-virtual {p0, p1}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 3096
    return-void
.end method

.method public native externalPoiClosedNTV(Z)V
.end method

.method public getAccessToCalendarAllowed()Z
    .locals 1

    .prologue
    .line 2709
    invoke-direct {p0}, Lcom/waze/NativeManager;->AccessToCalendarAllowedNTV()Z

    move-result v0

    return v0
.end method

.method public native getAddressByLocationNTV(II)Lcom/waze/NativeManager$AddressStrings;
.end method

.method public getAdsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5509
    iget-object v0, p0, Lcom/waze/NativeManager;->mAdsData:Lcom/waze/AdsTracking$AdsData;

    if-nez v0, :cond_0

    .line 5511
    const/4 v0, 0x0

    .line 5515
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/NativeManager;->mAdsData:Lcom/waze/AdsTracking$AdsData;

    iget-object v0, v0, Lcom/waze/AdsTracking$AdsData;->token:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/waze/NativeManager;->ApiKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/waze/NativeManager;->GetAPIKeyNTV()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/NativeManager;->ApiKey:Ljava/lang/String;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/waze/NativeManager;->ApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoCompleteFeatures()I
    .locals 2

    .prologue
    .line 314
    iget v0, p0, Lcom/waze/NativeManager;->mFeatures:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/waze/NativeManager;->GetAutoCompleteFeaturesNTV()I

    move-result v0

    iput v0, p0, Lcom/waze/NativeManager;->mFeatures:I

    .line 319
    :cond_0
    iget v0, p0, Lcom/waze/NativeManager;->mFeatures:I

    return v0
.end method

.method public getBatteryLevel()I
    .locals 2

    .prologue
    .line 3148
    invoke-static {}, Lcom/waze/AppService;->getPowerManager()Lcom/waze/PowerManager;

    move-result-object v0

    .line 3149
    .local v0, pwrMgr:Lcom/waze/PowerManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/waze/PowerManager;->getCurrentLevel()I

    move-result v1

    .line 3150
    .local v1, value:I
    :goto_0
    return v1

    .line 3149
    .end local v1           #value:I
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCanvasBufReady()Z
    .locals 1

    .prologue
    .line 1211
    iget-boolean v0, p0, Lcom/waze/NativeManager;->mAppCanvasBufReady:Z

    return v0
.end method

.method public getContactsLastAccessTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    sget-boolean v0, Lcom/waze/NativeManager;->bToCreateAcc:Z

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/NativeManager;->bToCreateAcc:Z

    .line 249
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Temp"

    goto :goto_0
.end method

.method public native getCurMeetingNTV()Ljava/lang/String;
.end method

.method public getDisplayName(Lcom/waze/NativeManager$DisplayNameListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 5533
    new-instance v0, Lcom/waze/NativeManager$187;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$187;-><init>(Lcom/waze/NativeManager;Lcom/waze/NativeManager$DisplayNameListener;)V

    .line 5546
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 5547
    return-void
.end method

.method public getEditPlaceLocationRadius()I
    .locals 1

    .prologue
    .line 2846
    invoke-direct {p0}, Lcom/waze/NativeManager;->getEditPlaceLocationRadiusNTV()I

    move-result v0

    return v0
.end method

.method public native getFbPermissionsNTV()[Ljava/lang/String;
.end method

.method public getGasPopupVisibilty()Z
    .locals 1

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/waze/NativeManager;->isGasPopUpShownNTV()Z

    move-result v0

    return v0
.end method

.method public getHashToName(I)Ljava/lang/String;
    .locals 1
    .parameter "ID"

    .prologue
    .line 2503
    invoke-static {p1}, Lcom/waze/phone/AddressBook;->GetNameFromHash(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitializedStatus()Z
    .locals 1

    .prologue
    .line 1203
    iget-boolean v0, p0, Lcom/waze/NativeManager;->mAppInitializedFlag:Z

    return v0
.end method

.method public getInviteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lcom/waze/NativeManager;->mInviteId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAllowTripDialog()Z
    .locals 1

    .prologue
    .line 6269
    iget-boolean v0, p0, Lcom/waze/NativeManager;->isAllowTripDialog:Z

    return v0
.end method

.method public getIsCharging()I
    .locals 2

    .prologue
    .line 3155
    invoke-static {}, Lcom/waze/AppService;->getPowerManager()Lcom/waze/PowerManager;

    move-result-object v0

    .line 3156
    .local v0, pwrMgr:Lcom/waze/PowerManager;
    if-nez v0, :cond_0

    .line 3157
    const/4 v1, -0x1

    .line 3160
    :goto_0
    return v1

    .line 3159
    :cond_0
    invoke-virtual {v0}, Lcom/waze/PowerManager;->getIsCharging()I

    move-result v1

    .line 3160
    .local v1, value:I
    goto :goto_0
.end method

.method public getIsDriveOnLeft()Z
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/waze/NativeManager;->GetIsDriveOnLeftSideNTV()Z

    move-result v0

    return v0
.end method

.method public getLanguageRtl()Z
    .locals 1

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/waze/NativeManager;->langRtlNTV()Z

    move-result v0

    return v0
.end method

.method public getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 355
    invoke-virtual {p1}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/waze/NativeManager;->langGetIntNTV(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->langGetNTV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageStrings([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "keys"

    .prologue
    .line 359
    array-length v1, p1

    .line 360
    .local v1, n:I
    new-array v2, v1, [Ljava/lang/String;

    .line 361
    .local v2, res:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 364
    return-object v2

    .line 362
    :cond_0
    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Lcom/waze/NativeManager;->langGetNTV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMainActivity()Lcom/waze/MainActivity;
    .locals 1

    .prologue
    .line 3404
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    return-object v0
.end method

.method public getMainView()Lcom/waze/MapViewWrapper;
    .locals 1

    .prologue
    .line 3412
    invoke-static {}, Lcom/waze/AppService;->getMainView()Lcom/waze/MapViewWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getNavBarManager()Lcom/waze/NavBarManager;
    .locals 2

    .prologue
    .line 4758
    iget-object v0, p0, Lcom/waze/NativeManager;->mNavBarManager:Lcom/waze/NavBarManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4760
    new-instance v0, Lcom/waze/NavBarManager;

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 4761
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/waze/NavBarManager;-><init>(Lcom/waze/LayoutManager;)V

    .line 4760
    iput-object v0, p0, Lcom/waze/NativeManager;->mNavBarManager:Lcom/waze/NavBarManager;

    .line 4763
    :cond_0
    iget-object v0, p0, Lcom/waze/NativeManager;->mNavBarManager:Lcom/waze/NavBarManager;

    return-object v0
.end method

.method public getNavLink(II)Ljava/lang/String;
    .locals 1
    .parameter "nLat"
    .parameter "nLon"

    .prologue
    .line 2854
    invoke-direct {p0, p1, p2}, Lcom/waze/NativeManager;->GetNavLinkNTV(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNorthUp()Z
    .locals 1

    .prologue
    .line 2682
    invoke-direct {p0}, Lcom/waze/NativeManager;->GetNorthUpNTV()Z

    move-result v0

    return v0
.end method

.method public native getNumberOfFriendsToStopShowingFriendSuggestions()I
.end method

.method public native getPeopleAppDataNTV(IZ)Lcom/waze/NativeManager$PeopleAppData;
.end method

.method public getPhoneBookHash()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 979
    invoke-static {}, Lcom/waze/phone/AddressBook;->GetPhonesHash()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public native getPublishFbPermissionsNTV()[Ljava/lang/String;
.end method

.method public native getRTServerId()Ljava/lang/String;
.end method

.method public native getReturnToWazeFromPhoneTimeoutNTV()I
.end method

.method public native getServerCookie()Ljava/lang/String;
.end method

.method public native getServerSessionId()I
.end method

.method getSpeechttManager()Lcom/waze/SpeechttManagerBase;
    .locals 1

    .prologue
    .line 3181
    iget-object v0, p0, Lcom/waze/NativeManager;->mSpeechttManager:Lcom/waze/SpeechttManagerBase;

    return-object v0
.end method

.method public getTemperature()I
    .locals 2

    .prologue
    .line 3164
    invoke-static {}, Lcom/waze/AppService;->getPowerManager()Lcom/waze/PowerManager;

    move-result-object v0

    .line 3165
    .local v0, pwrMgr:Lcom/waze/PowerManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/waze/PowerManager;->getTemperature()I

    move-result v1

    .line 3166
    .local v1, value:I
    :goto_0
    return v1

    .line 3165
    .end local v1           #value:I
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTimer()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/waze/NativeManager;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method getTtsManager()Lcom/waze/TtsManager;
    .locals 1

    .prologue
    .line 3188
    iget-object v0, p0, Lcom/waze/NativeManager;->mTtsManager:Lcom/waze/TtsManager;

    return-object v0
.end method

.method public getVenueGetTimeout()I
    .locals 1

    .prologue
    .line 2850
    invoke-direct {p0}, Lcom/waze/NativeManager;->getVenueGetTimeoutNTV()I

    move-result v0

    return v0
.end method

.method public is24HrClock()Z
    .locals 1

    .prologue
    .line 2315
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isAllowAdTracking()Z
    .locals 1

    .prologue
    .line 5498
    iget-object v0, p0, Lcom/waze/NativeManager;->mAdsData:Lcom/waze/AdsTracking$AdsData;

    if-nez v0, :cond_0

    .line 5500
    const/4 v0, 0x0

    .line 5504
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/NativeManager;->mAdsData:Lcom/waze/AdsTracking$AdsData;

    iget-boolean v0, v0, Lcom/waze/AdsTracking$AdsData;->bIsTrackingAllowed:Z

    goto :goto_0
.end method

.method public declared-synchronized isAppStartPrepared()Z
    .locals 1

    .prologue
    .line 1171
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/waze/NativeManager;->mAppStartPrepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native isCategorySearchNTV(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native isClosureEnabledNTV()Z
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 855
    invoke-direct {p0}, Lcom/waze/NativeManager;->isDebugNTV()Z

    move-result v0

    return v0
.end method

.method public isDisplayReadyForAsr()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1689
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 1690
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    .line 1713
    :cond_0
    :goto_0
    return v4

    .line 1693
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 1694
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 1697
    invoke-virtual {v0}, Lcom/waze/LayoutManager;->isSplashVisible()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1700
    invoke-virtual {v0}, Lcom/waze/LayoutManager;->isAnyMenuOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1703
    invoke-static {}, Lcom/waze/ifs/ui/ActivityBase;->getSingleRunningActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    .line 1704
    .local v2, runningActivity:Lcom/waze/ifs/ui/ActivityBase;
    if-eqz v2, :cond_0

    .line 1705
    instance-of v5, v2, Lcom/waze/MainActivity;

    if-eqz v5, :cond_0

    .line 1708
    iget-object v5, p0, Lcom/waze/NativeManager;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    .line 1709
    .local v3, showing:Z
    if-nez v3, :cond_0

    .line 1713
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public native isDrivingToMeetingNTV(Ljava/lang/String;)Z
.end method

.method public native isEditorIgnoreNewRoadsNTV()Z
.end method

.method public native isEnforcementAlertsEnabledNTV()Z
.end method

.method public native isEnforcementPoliceEnabledNTV()I
.end method

.method public isFacebookSessionValid()Z
    .locals 1

    .prologue
    .line 1686
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/social/facebook/FacebookWrapper;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method public isFbAppInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 4160
    :try_start_0
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4162
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v4, "com.facebook.katana"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4163
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x1

    .line 4165
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 4164
    :catch_0
    move-exception v0

    .line 4165
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public native isFollowActiveNTV()Z
.end method

.method public isForceFullSignUp()Z
    .locals 1

    .prologue
    .line 1359
    sget-object v0, Lcom/waze/NativeManager;->mInviteId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForceLoginWithSocial()Z
    .locals 2

    .prologue
    .line 1352
    iget-boolean v0, p0, Lcom/waze/NativeManager;->bToForceLoginWithSocial:Z

    .line 1353
    .local v0, bForce:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/NativeManager;->bToForceLoginWithSocial:Z

    .line 1354
    return v0
.end method

.method public isGasUpdateable()Z
    .locals 1

    .prologue
    .line 5494
    iget-boolean v0, p0, Lcom/waze/NativeManager;->isGasUpdateable:Z

    return v0
.end method

.method public isMainActivity()Z
    .locals 3

    .prologue
    .line 2249
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 2250
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/waze/MainActivity;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/waze/MainActivity;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 2251
    .local v0, isMain:Z
    :goto_0
    return v0

    .line 2250
    .end local v0           #isMain:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native isMeetingActiveNTV(Ljava/lang/String;)Z
.end method

.method public native isMovingNTV()Z
.end method

.method public native isNavigatingNTV()Z
.end method

.method public native isNavigatingVoiceNTV()I
.end method

.method public native isNearNTV()Z
.end method

.method public isPoiPreloaded(I)Z
    .locals 4
    .parameter "iID"

    .prologue
    const/4 v3, 0x0

    .line 2941
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    .line 2942
    .local v2, mainActivity:Lcom/waze/MainActivity;
    if-nez v2, :cond_1

    .line 2955
    :cond_0
    :goto_0
    return v3

    .line 2945
    :cond_1
    invoke-virtual {v2}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v1

    .line 2946
    .local v1, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v1, :cond_0

    .line 2951
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/waze/LayoutManager;->isPoiPreloaded(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 2953
    :catch_0
    move-exception v0

    .line 2955
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isPopupShown()Z
    .locals 2

    .prologue
    .line 1343
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 1344
    .local v0, mainActivity:Lcom/waze/MainActivity;
    if-nez v0, :cond_0

    .line 1345
    const/4 v1, 0x0

    .line 1347
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/LayoutManager;->isPopupShown()Z

    move-result v1

    goto :goto_0
.end method

.method public native isStopPointNTV()Z
.end method

.method public logAnalytics(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "event"
    .parameter "infoName"
    .parameter "infoVal"

    .prologue
    .line 6143
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->analyticsDebug(Ljava/lang/String;)V

    .line 6144
    new-instance v0, Lcom/waze/NativeManager$227;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$227;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 6150
    return-void
.end method

.method public logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "event"
    .parameter "infoName"
    .parameter "infoVal"

    .prologue
    .line 6153
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->analyticsDebug(Ljava/lang/String;)V

    .line 6154
    invoke-virtual {p0}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6156
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/NativeManager;->logAnalyticsStrNTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6167
    :goto_0
    return-void

    .line 6160
    :cond_0
    new-instance v0, Lcom/waze/NativeManager$228;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$228;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public logAnalytics(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "event"
    .parameter "beforeLogin"
    .parameter "flush"

    .prologue
    .line 6124
    invoke-direct {p0, p1}, Lcom/waze/NativeManager;->analyticsDebug(Ljava/lang/String;)V

    .line 6125
    new-instance v0, Lcom/waze/NativeManager$225;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$225;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;ZZ)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 6131
    return-void
.end method

.method public native logAnalyticsAdsContextClearNTV()V
.end method

.method public native logAnalyticsAdsContextNTV(Ljava/lang/String;)V
.end method

.method public native logAnalyticsAdsContextNavNTV(Ljava/lang/String;)V
.end method

.method public native logAnalyticsAdsContextNavigationInitNTV()V
.end method

.method public native logAnalyticsAdsGetActiveContextNTV()Lcom/waze/NativeManager$AdsActiveContext;
.end method

.method public logAnalyticsFlush()V
    .locals 1

    .prologue
    .line 6134
    const-string v0, "FLUSH"

    invoke-direct {p0, v0}, Lcom/waze/NativeManager;->analyticsDebug(Ljava/lang/String;)V

    .line 6135
    new-instance v0, Lcom/waze/NativeManager$226;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$226;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 6141
    return-void
.end method

.method public logout_callback()V
    .locals 1

    .prologue
    .line 1447
    new-instance v0, Lcom/waze/NativeManager$71;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$71;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1453
    return-void
.end method

.method public mainMenuShowMyWaze()V
    .locals 1

    .prologue
    .line 5646
    new-instance v0, Lcom/waze/NativeManager$194;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$194;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5655
    return-void
.end method

.method public mainMenuShown()Z
    .locals 2

    .prologue
    .line 2283
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 2284
    .local v0, mainActivity:Lcom/waze/MainActivity;
    if-nez v0, :cond_0

    .line 2285
    const/4 v1, 0x0

    .line 2286
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/LayoutManager;->mainMenuShown()Z

    move-result v1

    goto :goto_0
.end method

.method public mapProblemsPave()V
    .locals 4

    .prologue
    .line 5594
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v2

    .line 5595
    .local v2, isRandomUser:Z
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->FoursquareEnabledNTV()Z

    move-result v1

    .line 5596
    .local v1, isFoursquareEnabled:Z
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/NativeManager;->isClosureEnabledNTV()Z

    move-result v0

    .line 5597
    .local v0, isClosureEnabled:Z
    new-instance v3, Lcom/waze/NativeManager$191;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/waze/NativeManager$191;-><init>(Lcom/waze/NativeManager;ZZZ)V

    invoke-static {v3}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5609
    return-void
.end method

.method public mapProblemsReport()V
    .locals 4

    .prologue
    .line 5613
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v2

    .line 5614
    .local v2, isRandomUser:Z
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->FoursquareEnabledNTV()Z

    move-result v1

    .line 5615
    .local v1, isFoursquareEnabled:Z
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/NativeManager;->isClosureEnabledNTV()Z

    move-result v0

    .line 5616
    .local v0, isClosureEnabled:Z
    new-instance v3, Lcom/waze/NativeManager$192;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/waze/NativeManager$192;-><init>(Lcom/waze/NativeManager;ZZZ)V

    invoke-static {v3}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5628
    return-void
.end method

.method public native navigateMainGetCouponNTV()V
.end method

.method public native navigateMainPlayStartNTV()V
.end method

.method public native navigateRecalcAltRoutesNTV()V
.end method

.method public native navigateToBonusPointNTV(III)V
.end method

.method public native navigateToExternalPoiNTV(IIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public native netMonCountNTV()I
.end method

.method public onAppBackground()V
    .locals 1

    .prologue
    .line 6244
    new-instance v0, Lcom/waze/NativeManager$233;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$233;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 6249
    return-void
.end method

.method public onAppForeground()V
    .locals 1

    .prologue
    .line 6228
    new-instance v0, Lcom/waze/NativeManager$231;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$231;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 6233
    return-void
.end method

.method public onGLReady()V
    .locals 0

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/waze/NativeManager;->notifyOglData()V

    .line 732
    return-void
.end method

.method public onLocationPickerState(I)V
    .locals 3
    .parameter "enableDone"

    .prologue
    .line 2686
    iget-object v0, p0, Lcom/waze/NativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;

    sget v1, Lcom/waze/NativeManager;->UH_LOCATION_PICKER_STATE:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/waze/ifs/async/UpdateHandlers;->sendUpdateMessage(III)V

    .line 2687
    return-void
.end method

.method public openAddFav()V
    .locals 1

    .prologue
    .line 5842
    new-instance v0, Lcom/waze/NativeManager$210;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$210;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5853
    return-void
.end method

.method public openAddFriends()V
    .locals 1

    .prologue
    .line 5801
    new-instance v0, Lcom/waze/NativeManager$207;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$207;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5811
    return-void
.end method

.method public openAddHome()V
    .locals 1

    .prologue
    .line 5814
    new-instance v0, Lcom/waze/NativeManager$208;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$208;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5825
    return-void
.end method

.method public openAddWork()V
    .locals 1

    .prologue
    .line 5828
    new-instance v0, Lcom/waze/NativeManager$209;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$209;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5839
    return-void
.end method

.method public openBeepPopup(Lcom/waze/rtalerts/RTAlertsThumbsUpData;Ljava/lang/String;I)V
    .locals 1
    .parameter "thumbsUpData"
    .parameter "UserImageUrl"
    .parameter "nTimeOut"

    .prologue
    .line 1973
    new-instance v0, Lcom/waze/NativeManager$94;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$94;-><init>(Lcom/waze/NativeManager;Lcom/waze/rtalerts/RTAlertsThumbsUpData;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1988
    return-void
.end method

.method public openCommentPopup(Lcom/waze/rtalerts/RTAlertsCommentData;Ljava/lang/String;I)V
    .locals 1
    .parameter "commentData"
    .parameter "UserUrlImage"
    .parameter "nTimeOut"

    .prologue
    .line 1935
    new-instance v0, Lcom/waze/NativeManager$92;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$92;-><init>(Lcom/waze/NativeManager;Lcom/waze/rtalerts/RTAlertsCommentData;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1950
    return-void
.end method

.method public openEditTextDialog(IJJ)V
    .locals 7
    .parameter "displayStringInt"
    .parameter "callbackLong"
    .parameter "contextLong"

    .prologue
    .line 5420
    new-instance v0, Lcom/waze/NativeManager$181;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/waze/NativeManager$181;-><init>(Lcom/waze/NativeManager;IJJ)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5430
    return-void
.end method

.method public openEncouragementScreen(IJ)V
    .locals 1
    .parameter "type"
    .parameter "callback"

    .prologue
    .line 1331
    new-instance v0, Lcom/waze/NativeManager$66;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$66;-><init>(Lcom/waze/NativeManager;IJ)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1339
    return-void
.end method

.method public openNavList()V
    .locals 1

    .prologue
    .line 5739
    new-instance v0, Lcom/waze/NativeManager$201;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$201;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5747
    return-void
.end method

.method public openNearbyStations()V
    .locals 1

    .prologue
    .line 1767
    new-instance v0, Lcom/waze/NativeManager$83;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$83;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1775
    return-void
.end method

.method public openPingPopup(Lcom/waze/rtalerts/RTAlertsAlertData;ZLjava/lang/String;I)V
    .locals 6
    .parameter "alertData"
    .parameter "bIsPrivate"
    .parameter "sUserImageUrl"
    .parameter "nTimeout"

    .prologue
    .line 1897
    new-instance v0, Lcom/waze/NativeManager$90;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$90;-><init>(Lcom/waze/NativeManager;Lcom/waze/rtalerts/RTAlertsAlertData;ZLjava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1913
    return-void
.end method

.method public openSearchGasScreen()V
    .locals 1

    .prologue
    .line 5659
    new-instance v0, Lcom/waze/NativeManager$195;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$195;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5671
    return-void
.end method

.method public openSendCurrentLocation()V
    .locals 1

    .prologue
    .line 5774
    new-instance v0, Lcom/waze/NativeManager$204;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$204;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5780
    return-void
.end method

.method public openSendDrive()V
    .locals 1

    .prologue
    .line 5750
    new-instance v0, Lcom/waze/NativeManager$202;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$202;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5762
    return-void
.end method

.method public openSendHome()V
    .locals 1

    .prologue
    .line 5783
    new-instance v0, Lcom/waze/NativeManager$205;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$205;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5789
    return-void
.end method

.method public openSendLocation()V
    .locals 1

    .prologue
    .line 5765
    new-instance v0, Lcom/waze/NativeManager$203;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$203;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5771
    return-void
.end method

.method public openSendWork()V
    .locals 1

    .prologue
    .line 5792
    new-instance v0, Lcom/waze/NativeManager$206;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$206;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5798
    return-void
.end method

.method public openStopPointNavigate(Z)V
    .locals 1
    .parameter "showMessage"

    .prologue
    .line 2596
    new-instance v0, Lcom/waze/NativeManager$121;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$121;-><init>(Lcom/waze/NativeManager;Z)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2603
    return-void
.end method

.method public openThumbsUpPopup(Lcom/waze/rtalerts/RTAlertsThumbsUpData;Ljava/lang/String;I)V
    .locals 1
    .parameter "thumbsUpData"
    .parameter "UserImageUrl"
    .parameter "nTimeOut"

    .prologue
    .line 1954
    new-instance v0, Lcom/waze/NativeManager$93;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$93;-><init>(Lcom/waze/NativeManager;Lcom/waze/rtalerts/RTAlertsThumbsUpData;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1969
    return-void
.end method

.method public randomUserMsg()V
    .locals 1

    .prologue
    .line 5383
    new-instance v0, Lcom/waze/NativeManager$177;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$177;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 5389
    return-void
.end method

.method public native refreshMapNTV()V
.end method

.method public registerOnUserNameResultListerner(Lcom/waze/NativeManager$IOnUserNameResult;)V
    .locals 1
    .parameter "iounr"

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/waze/NativeManager;->mOnUserNameResultArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/waze/NativeManager;->mOnUserNameResultArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    :cond_0
    return-void
.end method

.method public reportMenuAllReports()V
    .locals 1

    .prologue
    .line 5632
    new-instance v0, Lcom/waze/NativeManager$193;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$193;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5642
    return-void
.end method

.method public reportMenuShown()Z
    .locals 2

    .prologue
    .line 2301
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 2302
    .local v0, mainActivity:Lcom/waze/MainActivity;
    if-nez v0, :cond_0

    .line 2303
    const/4 v1, 0x0

    .line 2304
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/LayoutManager;->reportMenuShown()Z

    move-result v1

    goto :goto_0
.end method

.method public restorePoiFocus()V
    .locals 1

    .prologue
    .line 921
    new-instance v0, Lcom/waze/NativeManager$55;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$55;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 927
    return-void
.end method

.method public savePoiPosition(Z)V
    .locals 1
    .parameter "openReportMenu"

    .prologue
    .line 890
    new-instance v0, Lcom/waze/NativeManager$52;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$52;-><init>(Lcom/waze/NativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 896
    return-void
.end method

.method public sendAlertRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 11
    .parameter "pathImage"
    .parameter "filenameImage"
    .parameter "pathVoice"
    .parameter "filenameVoice"
    .parameter "description"
    .parameter "direction"
    .parameter "type"
    .parameter "subtype"
    .parameter "duration"

    .prologue
    .line 862
    new-instance v0, Lcom/waze/NativeManager$49;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/waze/NativeManager$49;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 869
    return-void
.end method

.method public native sendBeepBackNTV(I)V
.end method

.method public native sendBeepBeepNTV(IIII)I
.end method

.method public native sendCommentNTV(I)V
.end method

.method public native sendThumbsUpNTV(I)V
.end method

.method public setCanvasBufReady(Z)V
    .locals 0
    .parameter "aVal"

    .prologue
    .line 1219
    iput-boolean p1, p0, Lcom/waze/NativeManager;->mAppCanvasBufReady:Z

    .line 1220
    return-void
.end method

.method public setContactsAccess(Z)V
    .locals 1
    .parameter "bIsEnabled"

    .prologue
    .line 293
    new-instance v0, Lcom/waze/NativeManager$5;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$5;-><init>(Lcom/waze/NativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method public setContactsLastAccessTime(Ljava/lang/String;)V
    .locals 1
    .parameter "LastAccessTime"

    .prologue
    .line 284
    new-instance v0, Lcom/waze/NativeManager$4;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$4;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public setFriendsListBannerDismissed()V
    .locals 0

    .prologue
    .line 2842
    invoke-direct {p0}, Lcom/waze/NativeManager;->setFriendsListBannerDismissedNTV()V

    .line 2843
    return-void
.end method

.method public setGoogleNowToken()V
    .locals 1

    .prologue
    .line 1147
    new-instance v0, Lcom/waze/NativeManager$61;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$61;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1154
    return-void
.end method

.method public setGpsSourceName(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 4561
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GPS Source name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4562
    new-instance v0, Lcom/waze/NativeManager$172;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$172;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;)V

    .line 4569
    .local v0, event:Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4570
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4573
    :goto_0
    return-void

    .line 4572
    :cond_0
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public native setGpsSourceNameNTV(Ljava/lang/String;)V
.end method

.method public setIsAllowTripDialog(Z)V
    .locals 0
    .parameter "isAllow"

    .prologue
    .line 6273
    iput-boolean p1, p0, Lcom/waze/NativeManager;->isAllowTripDialog:Z

    .line 6274
    return-void
.end method

.method public setKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "aEvent"

    .prologue
    .line 3386
    iget-object v1, p0, Lcom/waze/NativeManager;->mUIKeyEventQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3387
    :try_start_0
    iget-object v0, p0, Lcom/waze/NativeManager;->mUIKeyEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3386
    monitor-exit v1

    .line 3389
    return-void

    .line 3386
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLimitCenter(IIIZ)V
    .locals 6
    .parameter "lon"
    .parameter "lat"
    .parameter "radius"
    .parameter "bAvoiderPin"

    .prologue
    .line 2691
    new-instance v0, Lcom/waze/NativeManager$127;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$127;-><init>(Lcom/waze/NativeManager;IIIZ)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 2697
    return-void
.end method

.method public setMenuButton()V
    .locals 1

    .prologue
    .line 5580
    new-instance v0, Lcom/waze/NativeManager$190;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$190;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5590
    return-void
.end method

.method public setMenuButtonFollowing(I)V
    .locals 1
    .parameter "nWatchingNumber"

    .prologue
    .line 6062
    new-instance v0, Lcom/waze/NativeManager$223;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$223;-><init>(Lcom/waze/NativeManager;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 6072
    return-void
.end method

.method public setMenuButtonNormal()V
    .locals 1

    .prologue
    .line 5567
    new-instance v0, Lcom/waze/NativeManager$189;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$189;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 5577
    return-void
.end method

.method public setNorthUp(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 2673
    new-instance v0, Lcom/waze/NativeManager$126;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$126;-><init>(Lcom/waze/NativeManager;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 2679
    return-void
.end method

.method public native setPeopleAppDataNTV(IZLcom/waze/NativeManager$PeopleAppData;)V
.end method

.method public setSearchResults(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/navigate/AddressItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2359
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/navigate/AddressItem;>;"
    iput-object p1, p0, Lcom/waze/NativeManager;->mSearchResults:Ljava/util/ArrayList;

    .line 2360
    return-void
.end method

.method public setSharedAddressItem(Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter "ai"

    .prologue
    .line 2323
    iput-object p1, p0, Lcom/waze/NativeManager;->mSharedAI:Lcom/waze/navigate/AddressItem;

    .line 2324
    return-void
.end method

.method public setTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "aEvent"

    .prologue
    .line 3376
    iget-object v1, p0, Lcom/waze/NativeManager;->mUITouchEventQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3377
    :try_start_0
    iget-object v0, p0, Lcom/waze/NativeManager;->mUITouchEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3376
    monitor-exit v1

    .line 3379
    return-void

    .line 3376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUpdateHandler(ILandroid/os/Handler;)V
    .locals 1
    .parameter "id"
    .parameter "h"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/waze/NativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;

    invoke-virtual {v0, p1, p2}, Lcom/waze/ifs/async/UpdateHandlers;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 215
    return-void
.end method

.method public shouldDisplayGasSettings(Lcom/waze/NativeManager$GasSettingsListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 5477
    new-instance v0, Lcom/waze/NativeManager$186;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$186;-><init>(Lcom/waze/NativeManager;Lcom/waze/NativeManager$GasSettingsListener;)V

    .line 5490
    .local v0, runnable:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 5491
    return-void
.end method

.method public shouldDisplayGasSettings()Z
    .locals 1

    .prologue
    .line 5520
    iget-boolean v0, p0, Lcom/waze/NativeManager;->shouldDisplayGasSettings:Z

    return v0
.end method

.method public showAddressOption(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "title"
    .parameter "addtionalText"
    .parameter "lat"
    .parameter "lon"
    .parameter "infoUrl"
    .parameter "specialUrl"
    .parameter "calendarId"
    .parameter "country"
    .parameter "state"
    .parameter "city"
    .parameter "street"
    .parameter "house"
    .parameter "sharedId"
    .parameter "VenueID"

    .prologue
    .line 2335
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    .line 2336
    .local v1, activity:Lcom/waze/ifs/ui/ActivityBase;
    if-nez v1, :cond_0

    .line 2356
    :goto_0
    return-void

    .line 2340
    :cond_0
    const/4 v8, 0x0

    .line 2341
    .local v8, ai:Lcom/waze/navigate/AddressItem;
    const/4 v14, 0x0

    .line 2342
    .local v14, shared:Lcom/waze/navigate/AddressItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/NativeManager;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    if-eqz v2, :cond_1

    if-eqz p7, :cond_1

    .line 2343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/NativeManager;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/NativeManager;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    .line 2344
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/NativeManager;->mSharedAI:Lcom/waze/navigate/AddressItem;

    if-eqz v2, :cond_2

    if-eqz p13, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/NativeManager;->mSharedAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p13

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2345
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/NativeManager;->mSharedAI:Lcom/waze/navigate/AddressItem;

    .line 2346
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/NativeManager;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    if-eqz p14, :cond_4

    .line 2347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/NativeManager;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    :goto_1
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v15, p14

    .line 2354
    invoke-virtual/range {v1 .. v15}, Lcom/waze/ifs/ui/ActivityBase;->startNativeOptionActivity(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/waze/navigate/AddressItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/navigate/AddressItem;Ljava/lang/String;)V

    goto :goto_0

    .line 2347
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/waze/navigate/AddressItem;

    .line 2348
    .local v16, result:Lcom/waze/navigate/AddressItem;
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    move-object/from16 v0, p14

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2349
    move-object/from16 v14, v16

    .line 2350
    goto :goto_1
.end method

.method public showAdvancedSettings()V
    .locals 1

    .prologue
    .line 6042
    new-instance v0, Lcom/waze/NativeManager$221;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$221;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 6049
    return-void
.end method

.method public showAsrTip()V
    .locals 3

    .prologue
    .line 1717
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 1718
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-nez v1, :cond_1

    .line 1730
    :cond_0
    :goto_0
    return-void

    .line 1721
    :cond_1
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 1722
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 1725
    new-instance v2, Lcom/waze/NativeManager$80;

    invoke-direct {v2, p0, v0}, Lcom/waze/NativeManager$80;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;)V

    invoke-static {v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public native showCommentsNTV(I)V
.end method

.method public showDetailsPopup(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "title"
    .parameter "msg"
    .parameter "iconName"
    .parameter "moreActionEnabled"
    .parameter "special"

    .prologue
    .line 2152
    new-instance v0, Lcom/waze/NativeManager$103;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/waze/NativeManager$103;-><init>(Lcom/waze/NativeManager;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2166
    return-void
.end method

.method public showEtaUpdatePopUp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "style"
    .parameter "title"
    .parameter "header"
    .parameter "body"
    .parameter "timeout"

    .prologue
    .line 2100
    new-instance v0, Lcom/waze/NativeManager$101;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/waze/NativeManager$101;-><init>(Lcom/waze/NativeManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2115
    return-void
.end method

.method public native showGroupNTV(Ljava/lang/String;)V
.end method

.method public showNavigationSettings()V
    .locals 1

    .prologue
    .line 6052
    new-instance v0, Lcom/waze/NativeManager$222;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$222;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 6059
    return-void
.end method

.method public showTooltip(Ljava/lang/String;ILcom/waze/user/FriendUserData;JI)V
    .locals 8
    .parameter "type"
    .parameter "numUSers"
    .parameter "userData"
    .parameter "cb"
    .parameter "intParam"

    .prologue
    .line 6278
    new-instance v0, Lcom/waze/NativeManager$234;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/waze/NativeManager$234;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;ILcom/waze/user/FriendUserData;JI)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 6311
    return-void
.end method

.method public showTrafficDetectionPopup()V
    .locals 4

    .prologue
    .line 2010
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v2

    .line 2011
    .local v2, isRandomUser:Z
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->FoursquareEnabledNTV()Z

    move-result v1

    .line 2012
    .local v1, isFoursquareEnabled:Z
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/NativeManager;->isClosureEnabledNTV()Z

    move-result v0

    .line 2013
    .local v0, isClosureEnabled:Z
    new-instance v3, Lcom/waze/NativeManager$96;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/waze/NativeManager$96;-><init>(Lcom/waze/NativeManager;ZZZ)V

    invoke-static {v3}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2028
    return-void
.end method

.method public show_root()V
    .locals 1

    .prologue
    .line 1515
    new-instance v0, Lcom/waze/NativeManager$75;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$75;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1521
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 1751
    invoke-virtual {p0}, Lcom/waze/NativeManager;->ShutDown()V

    .line 1754
    return-void
.end method

.method public signup_finished()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2328
    const-string v0, "SIGN_UP_FINISHED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2329
    return-void
.end method

.method public startLocation()V
    .locals 2

    .prologue
    .line 4521
    iget-object v1, p0, Lcom/waze/NativeManager;->mLocationListner:Lcom/waze/NativeLocListener;

    if-nez v1, :cond_0

    .line 4523
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/NativeManager;->mLocationListner:Lcom/waze/NativeLocListener;

    .line 4526
    :cond_0
    new-instance v0, Lcom/waze/NativeManager$170;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$170;-><init>(Lcom/waze/NativeManager;)V

    .line 4533
    .local v0, r:Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4534
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4538
    :goto_0
    return-void

    .line 4536
    :cond_1
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public native startTripServerNavigationNTV()V
.end method

.method public stopLocation()V
    .locals 2

    .prologue
    .line 4544
    new-instance v0, Lcom/waze/NativeManager$171;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$171;-><init>(Lcom/waze/NativeManager;)V

    .line 4551
    .local v0, r:Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/waze/NativeManager;->IsNativeThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4552
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4555
    :goto_0
    return-void

    .line 4554
    :cond_0
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public native stopNavigationNTV()V
.end method

.method public native stopTripServerNavigationNTV()V
.end method

.method public native toggleNavigationVoiceNTV(I)V
.end method

.method public trafficBarClose()V
    .locals 1

    .prologue
    .line 2048
    new-instance v0, Lcom/waze/NativeManager$98;

    invoke-direct {v0, p0}, Lcom/waze/NativeManager$98;-><init>(Lcom/waze/NativeManager;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2062
    return-void
.end method

.method public trafficBarSet(II[I[I)V
    .locals 6
    .parameter "current_percent"
    .parameter "total_time"
    .parameter "levels"
    .parameter "lengths"

    .prologue
    .line 2082
    new-instance v0, Lcom/waze/NativeManager$100;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$100;-><init>(Lcom/waze/NativeManager;II[I[I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2096
    return-void
.end method

.method public trafficBarSetHidden(Z)V
    .locals 1
    .parameter "hidden"

    .prologue
    .line 2031
    new-instance v0, Lcom/waze/NativeManager$97;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$97;-><init>(Lcom/waze/NativeManager;Z)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2045
    return-void
.end method

.method public trafficBarShowPopUp(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 2065
    new-instance v0, Lcom/waze/NativeManager$99;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$99;-><init>(Lcom/waze/NativeManager;I)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2079
    return-void
.end method

.method public unregisterOnUserNameResultListerner(Lcom/waze/NativeManager$IOnUserNameResult;)V
    .locals 1
    .parameter "iounr"

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/waze/NativeManager;->mOnUserNameResultArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/waze/NativeManager;->mOnUserNameResultArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1380
    :cond_0
    return-void
.end method

.method public unsetLimitCenter(Z)V
    .locals 1
    .parameter "bAvoiderPin"

    .prologue
    .line 2700
    new-instance v0, Lcom/waze/NativeManager$128;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$128;-><init>(Lcom/waze/NativeManager;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 2706
    return-void
.end method

.method public unsetUpdateHandler(ILandroid/os/Handler;)V
    .locals 1
    .parameter "id"
    .parameter "h"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/waze/NativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;

    invoke-virtual {v0, p1, p2}, Lcom/waze/ifs/async/UpdateHandlers;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 219
    return-void
.end method

.method public updateDetailsPopup(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2170
    invoke-static {}, Lcom/waze/view/popups/DetailsPopUp;->hasInstance()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2186
    :cond_0
    :goto_0
    return-void

    .line 2172
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2175
    new-instance v0, Lcom/waze/NativeManager$104;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$104;-><init>(Lcom/waze/NativeManager;II)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateIsGasUpdateable(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 3989
    iput-boolean p1, p0, Lcom/waze/NativeManager;->isGasUpdateable:Z

    .line 3990
    return-void
.end method

.method public updateNavResultPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "eta"
    .parameter "time"
    .parameter "dist"
    .parameter "isWaypoint"

    .prologue
    .line 6076
    new-instance v0, Lcom/waze/NativeManager$224;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$224;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 6094
    return-void
.end method

.method public updatePricesDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "text"

    .prologue
    .line 1778
    new-instance v0, Lcom/waze/NativeManager$84;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$84;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 1787
    return-void
.end method

.method public updateUserPopup(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2190
    invoke-static {}, Lcom/waze/view/popups/UserPopUp;->hasInstance()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2206
    :cond_0
    :goto_0
    return-void

    .line 2192
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2196
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 2197
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 2198
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 2201
    new-instance v1, Lcom/waze/NativeManager$105;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/waze/NativeManager$105;-><init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager;II)V

    invoke-static {v1}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public native venueAddImageNTV(Ljava/lang/String;)V
.end method

.method public venueCreate(Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "venue"
    .parameter "from"
    .parameter "questionId"
    .parameter "force"

    .prologue
    .line 2728
    new-instance v0, Lcom/waze/NativeManager$129;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$129;-><init>(Lcom/waze/NativeManager;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 2733
    return-void
.end method

.method public venueDeleteImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "venueId"
    .parameter "imageId"

    .prologue
    .line 2813
    new-instance v0, Lcom/waze/NativeManager$138;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$138;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 2818
    return-void
.end method

.method public venueFlag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "venueId"
    .parameter "type"
    .parameter "comment"
    .parameter "dupId"

    .prologue
    .line 2781
    new-instance v0, Lcom/waze/NativeManager$134;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$134;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 2786
    return-void
.end method

.method public venueFlagImage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "venueId"
    .parameter "imageId"
    .parameter "type"

    .prologue
    .line 2789
    new-instance v0, Lcom/waze/NativeManager$135;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$135;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 2794
    return-void
.end method

.method public venueGet(Ljava/lang/String;I)V
    .locals 1
    .parameter "id"
    .parameter "type"

    .prologue
    .line 2754
    new-instance v0, Lcom/waze/NativeManager$132;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$132;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 2759
    return-void
.end method

.method public venueGet(Ljava/lang/String;IZ)V
    .locals 1
    .parameter "id"
    .parameter "type"
    .parameter "allData"

    .prologue
    .line 2762
    new-instance v0, Lcom/waze/NativeManager$133;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/NativeManager$133;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;IZ)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 2767
    return-void
.end method

.method public venueLikeImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "venueId"
    .parameter "imageId"

    .prologue
    .line 2797
    new-instance v0, Lcom/waze/NativeManager$136;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$136;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 2802
    return-void
.end method

.method public native venueProviderGetCategories()[Lcom/waze/NativeManager$VenueCategory;
.end method

.method public native venueProviderGetFieldPoints()Lcom/waze/NativeManager$VenueFieldPoints;
.end method

.method public native venueProviderGetFieldValidators()Lcom/waze/NativeManager$VenueFieldValidators;
.end method

.method public native venueProviderGetServices()Lcom/waze/NativeManager$VenueServices;
.end method

.method public venueSaveNav(Lcom/waze/reports/VenueData;)V
    .locals 1
    .parameter "venue"

    .prologue
    .line 2745
    new-instance v0, Lcom/waze/NativeManager$131;

    invoke-direct {v0, p0, p1}, Lcom/waze/NativeManager$131;-><init>(Lcom/waze/NativeManager;Lcom/waze/reports/VenueData;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 2750
    return-void
.end method

.method public venueSearch(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2821
    new-instance v0, Lcom/waze/NativeManager$139;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$139;-><init>(Lcom/waze/NativeManager;II)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 2826
    return-void
.end method

.method public venueSearchResponse([Lcom/waze/reports/VenueData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 6097
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6098
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "venue_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 6099
    iget-object v1, p0, Lcom/waze/NativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;

    sget v2, Lcom/waze/NativeManager;->UH_SEARCH_VENUES:I

    invoke-virtual {v1, v2, v0}, Lcom/waze/ifs/async/UpdateHandlers;->sendUpdateMessage(ILandroid/os/Bundle;)V

    .line 6100
    return-void
.end method

.method public venueUnlikeImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "venueId"
    .parameter "imageId"

    .prologue
    .line 2805
    new-instance v0, Lcom/waze/NativeManager$137;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/NativeManager$137;-><init>(Lcom/waze/NativeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 2810
    return-void
.end method

.method public venueUpdate(Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "venue"
    .parameter "origVenue"
    .parameter "from"
    .parameter "questionId"

    .prologue
    .line 2737
    new-instance v0, Lcom/waze/NativeManager$130;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/NativeManager$130;-><init>(Lcom/waze/NativeManager;Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 2742
    return-void
.end method

.method public wasFriendsListBannerDismissed()Z
    .locals 1

    .prologue
    .line 2838
    invoke-direct {p0}, Lcom/waze/NativeManager;->wasFriendsListBannerDismissedNTV()Z

    move-result v0

    return v0
.end method

.method public native wazeUiDetailsPopupClosedNTV()V
.end method

.method public native wazeUiDetailsPopupNextNTV()V
.end method

.method public native wazeUiUserPopupClosedNTV()V
.end method
