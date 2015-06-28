.class public final Lcom/waze/ifs/ui/ActivityLifetimeHandler;
.super Ljava/lang/Object;
.source "ActivityLifetimeHandler.java"


# static fields
.field static bIsStopForeground:Ljava/lang/Boolean;

.field private static volatile mIsInBackground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/ActivityLifetimeHandler;->bIsStopForeground:Ljava/lang/Boolean;

    .line 124
    sput-boolean v1, Lcom/waze/ifs/ui/ActivityLifetimeHandler;->mIsInBackground:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ShutDownWaze()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/waze/AppService;->getInstance()Lcom/waze/AppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/AppService;->stopForeground()V

    .line 91
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeLocListener;->stop()V

    .line 92
    return-void
.end method

.method public static StartWaze()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/waze/AppService;->getInstance()Lcom/waze/AppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/AppService;->startForeground()V

    .line 98
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeLocListener;->start()V

    .line 100
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->RealtimeLogin()V

    .line 103
    return-void
.end method

.method public static StopWaze()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->SetShutDownActive(Z)V

    .line 84
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->RealtimeLogout()V

    .line 85
    return-void
.end method

.method public static destroyHandler()V
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/waze/ifs/ui/ActivityBase;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/waze/ifs/ui/ShutdownManager;->onActivitiesDestroy()V

    .line 122
    :cond_0
    return-void
.end method

.method public static isInBackground()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/waze/ifs/ui/ActivityLifetimeHandler;->mIsInBackground:Z

    return v0
.end method

.method public static screenOffHandler()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 112
    .local v0, nm:Lcom/waze/NativeManager;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/waze/NativeManager;->logAnalyticsFlush()V

    .line 116
    :cond_0
    return-void
.end method

.method public static startHandler(Landroid/app/Activity;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    new-instance v0, Lcom/waze/ifs/ui/ActivityLifetimeHandler$1;

    invoke-direct {v0, p0}, Lcom/waze/ifs/ui/ActivityLifetimeHandler$1;-><init>(Landroid/app/Activity;)V

    .line 48
    .local v0, resumeEvent:Lcom/waze/ifs/async/RunnableExecutor;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/waze/ifs/ui/ActivityLifetimeHandler;->mIsInBackground:Z

    .line 50
    invoke-static {}, Lcom/waze/AppService;->IsAppRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/waze/ifs/async/RunnableExecutor;->event()V

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {v0}, Lcom/waze/NativeManager;->registerOnAppStartedEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    goto :goto_0
.end method

.method public static stopHandler()V
    .locals 4

    .prologue
    .line 61
    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lcom/waze/ifs/ui/ActivityLifetimeHandler;->mIsInBackground:Z

    .line 63
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    .line 64
    .local v1, nm:Lcom/waze/NativeManager;
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Lcom/waze/NativeManager;->RestoreSystemSettings()V

    .line 67
    invoke-virtual {v1}, Lcom/waze/NativeManager;->onAppBackground()V

    .line 68
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->IsShutdownActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-static {}, Lcom/waze/ifs/ui/ActivityLifetimeHandler;->StopWaze()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "WAZE"

    const-string v3, "ActivityLifetimeHandler stopHandler error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
