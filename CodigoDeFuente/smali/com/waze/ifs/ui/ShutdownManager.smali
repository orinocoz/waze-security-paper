.class public Lcom/waze/ifs/ui/ShutdownManager;
.super Ljava/lang/Object;
.source "ShutdownManager.java"


# static fields
.field private static mActivitiesDestroyed:Z

.field private static mInProcess:Z

.field private static mServiceDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    sput-boolean v0, Lcom/waze/ifs/ui/ShutdownManager;->mServiceDestroyed:Z

    .line 77
    sput-boolean v0, Lcom/waze/ifs/ui/ShutdownManager;->mActivitiesDestroyed:Z

    .line 78
    sput-boolean v0, Lcom/waze/ifs/ui/ShutdownManager;->mInProcess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAndExit()V
    .locals 3

    .prologue
    .line 61
    sget-boolean v0, Lcom/waze/ifs/ui/ShutdownManager;->mInProcess:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/waze/ifs/ui/ShutdownManager;->mServiceDestroyed:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/waze/ifs/ui/ShutdownManager;->mActivitiesDestroyed:Z

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "WAZE"

    const-string v1, "Shutdown manager - all the constraints are satisfied. Aborting VM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Lcom/waze/ifs/ui/ShutdownManager$1;

    invoke-direct {v0}, Lcom/waze/ifs/ui/ShutdownManager$1;-><init>()V

    .line 72
    const-wide/16 v1, 0x5

    .line 65
    invoke-static {v0, v1, v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;J)V

    .line 74
    :cond_0
    return-void
.end method

.method public static onActivitiesDestroy()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "WAZE"

    const-string v1, "Shutdown manager - all the activities are destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-boolean v0, Lcom/waze/ifs/ui/ShutdownManager;->mInProcess:Z

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/ifs/ui/ShutdownManager;->mActivitiesDestroyed:Z

    .line 55
    :cond_0
    invoke-static {}, Lcom/waze/ifs/ui/ShutdownManager;->checkAndExit()V

    .line 56
    return-void
.end method

.method public static onServiceDestroy()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "WAZE"

    const-string v1, "Shutdown manager - the service is destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-boolean v0, Lcom/waze/ifs/ui/ShutdownManager;->mInProcess:Z

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/ifs/ui/ShutdownManager;->mServiceDestroyed:Z

    .line 43
    :cond_0
    invoke-static {}, Lcom/waze/ifs/ui/ShutdownManager;->checkAndExit()V

    .line 45
    return-void
.end method

.method public static start()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "WAZE"

    const-string v1, "Shutdown manager - in process now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/ifs/ui/ShutdownManager;->mInProcess:Z

    .line 31
    invoke-static {}, Lcom/waze/ifs/ui/ShutdownManager;->checkAndExit()V

    .line 33
    return-void
.end method
