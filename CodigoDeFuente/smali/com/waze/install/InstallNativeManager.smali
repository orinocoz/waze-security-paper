.class public Lcom/waze/install/InstallNativeManager;
.super Ljava/lang/Object;
.source "InstallNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/install/InstallNativeManager$VideoUrlListener;
    }
.end annotation


# static fields
.field private static m_CleanInstall:Z

.field private static m_MinimalInstallation:Z

.field private static ready:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/waze/install/InstallNativeManager;->ready:Z

    .line 24
    sput-boolean v0, Lcom/waze/install/InstallNativeManager;->m_CleanInstall:Z

    .line 25
    sput-boolean v0, Lcom/waze/install/InstallNativeManager;->m_MinimalInstallation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0}, Lcom/waze/install/InstallNativeManager;->init()V

    .line 42
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ctr running in thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public static GetLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, sLang:Ljava/lang/String;
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const-string v0, "en-GB"

    .line 109
    :cond_0
    return-object v0
.end method

.method public static IsCleanInstallation()Z
    .locals 1

    .prologue
    .line 181
    sget-boolean v0, Lcom/waze/install/InstallNativeManager;->m_CleanInstall:Z

    return v0
.end method

.method public static IsMinimalInstallation()Z
    .locals 1

    .prologue
    .line 186
    sget-boolean v0, Lcom/waze/install/InstallNativeManager;->m_MinimalInstallation:Z

    return v0
.end method

.method static synthetic access$0(Lcom/waze/install/InstallNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/waze/install/InstallNativeManager;->countrySelectedNTV(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/install/InstallNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/waze/install/InstallNativeManager;->langSelectedNTV(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/install/InstallNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/waze/install/InstallNativeManager;->termsOfUseResponseNTV(I)V

    return-void
.end method

.method static synthetic access$3(Z)V
    .locals 0
    .parameter

    .prologue
    .line 24
    sput-boolean p0, Lcom/waze/install/InstallNativeManager;->m_CleanInstall:Z

    return-void
.end method

.method static synthetic access$4(Z)V
    .locals 0
    .parameter

    .prologue
    .line 25
    sput-boolean p0, Lcom/waze/install/InstallNativeManager;->m_MinimalInstallation:Z

    return-void
.end method

.method static synthetic access$5()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/waze/install/InstallNativeManager;->m_CleanInstall:Z

    return v0
.end method

.method static synthetic access$6(Lcom/waze/install/InstallNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/waze/install/InstallNativeManager;->setCountryNTV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/waze/install/InstallNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/waze/install/InstallNativeManager;->wayToGoContNTV()V

    return-void
.end method

.method static synthetic access$8(Lcom/waze/install/InstallNativeManager;ZII)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/install/InstallNativeManager;->getVideoUrlNTV(ZII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native countrySelectedNTV(I)V
.end method

.method private native getVideoUrlNTV(ZII)Ljava/lang/String;
.end method

.method private init()V
    .locals 4

    .prologue
    .line 31
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init install nm ready="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/waze/install/InstallNativeManager;->ready:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-boolean v0, Lcom/waze/install/InstallNativeManager;->ready:Z

    if-nez v0, :cond_0

    .line 33
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initNativeLayerNTV "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-direct {p0}, Lcom/waze/install/InstallNativeManager;->initNativeLayerNTV()V

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/install/InstallNativeManager;->ready:Z

    .line 37
    :cond_0
    return-void
.end method

.method private native initNativeLayerNTV()V
.end method

.method private native langSelectedNTV(I)V
.end method

.method public static openSelectCountryMenu()V
    .locals 5

    .prologue
    .line 66
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openSelectCountryMenu running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Lcom/waze/install/InstallNativeManager$2;

    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/waze/install/InstallNativeManager$2;-><init>(Ljava/util/concurrent/Executor;)V

    .line 81
    .local v0, loadUIDataEvent:Lcom/waze/ifs/async/RunnableCallback;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public static openSelectLangMenu([Lcom/waze/install/Lang;)V
    .locals 5
    .parameter "langs"

    .prologue
    .line 114
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openSelectLangMenu running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Lcom/waze/install/InstallNativeManager$4;

    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/waze/install/InstallNativeManager$4;-><init>(Ljava/util/concurrent/Executor;[Lcom/waze/install/Lang;)V

    .line 153
    .local v0, loadUIDataEvent:Lcom/waze/ifs/async/RunnableCallback;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method public static openTermsOfUse()V
    .locals 5

    .prologue
    .line 278
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openTermsOfUse running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Lcom/waze/install/InstallNativeManager$8;

    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/waze/install/InstallNativeManager$8;-><init>(Ljava/util/concurrent/Executor;)V

    .line 293
    .local v0, loadUIDataEvent:Lcom/waze/ifs/async/RunnableCallback;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method public static openWayToGo()V
    .locals 5

    .prologue
    .line 315
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openWayToGo running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v0, Lcom/waze/install/InstallNativeManager$10;

    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/waze/install/InstallNativeManager$10;-><init>(Ljava/util/concurrent/Executor;)V

    .line 330
    .local v0, loadUIDataEvent:Lcom/waze/ifs/async/RunnableCallback;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method private native setCountryNTV(Ljava/lang/String;)V
.end method

.method public static staticInit()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/waze/install/InstallNativeManager;

    invoke-direct {v0}, Lcom/waze/install/InstallNativeManager;-><init>()V

    .line 28
    return-void
.end method

.method private native termsOfUseResponseNTV(I)V
.end method

.method private native wayToGoContNTV()V
.end method

.method public static welcomeGuidedTour(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 336
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "welcomeGuidedTour running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Lcom/waze/install/InstallNativeManager$11;

    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/waze/install/InstallNativeManager$11;-><init>(Ljava/util/concurrent/Executor;)V

    .line 356
    .local v0, loadUIDataEvent:Lcom/waze/ifs/async/RunnableCallback;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 357
    return-void
.end method


# virtual methods
.method public countrySelected(I)V
    .locals 5
    .parameter "country"

    .prologue
    .line 48
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "countrySelected running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Lcom/waze/install/InstallNativeManager$1;

    invoke-direct {v0, p0, p1}, Lcom/waze/install/InstallNativeManager$1;-><init>(Lcom/waze/install/InstallNativeManager;I)V

    .line 62
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public displayWelcome(ZZI)V
    .locals 1
    .parameter "bIsCleanInstall"
    .parameter "bIsMinimal"
    .parameter "Type"

    .prologue
    .line 190
    new-instance v0, Lcom/waze/install/InstallNativeManager$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/waze/install/InstallNativeManager$6;-><init>(Lcom/waze/install/InstallNativeManager;ZZI)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public getVideoUrl(ZIILcom/waze/install/InstallNativeManager$VideoUrlListener;)V
    .locals 6
    .parameter "isUpgrade"
    .parameter "width"
    .parameter "height"
    .parameter "listener"

    .prologue
    .line 360
    new-instance v0, Lcom/waze/install/InstallNativeManager$12;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/install/InstallNativeManager$12;-><init>(Lcom/waze/install/InstallNativeManager;ZIILcom/waze/install/InstallNativeManager$VideoUrlListener;)V

    .line 372
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 373
    return-void
.end method

.method public langSelected(I)V
    .locals 5
    .parameter "lang"

    .prologue
    .line 85
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "langSelected running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Lcom/waze/install/InstallNativeManager$3;

    invoke-direct {v0, p0, p1}, Lcom/waze/install/InstallNativeManager$3;-><init>(Lcom/waze/install/InstallNativeManager;I)V

    .line 99
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 263
    new-instance v0, Lcom/waze/install/InstallNativeManager$7;

    invoke-direct {v0, p0, p1}, Lcom/waze/install/InstallNativeManager$7;-><init>(Lcom/waze/install/InstallNativeManager;Ljava/lang/String;)V

    .line 273
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public termsOfUseResponse(I)V
    .locals 5
    .parameter "selection"

    .prologue
    .line 157
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "termsOfUseResponse running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Lcom/waze/install/InstallNativeManager$5;

    invoke-direct {v0, p0, p1}, Lcom/waze/install/InstallNativeManager$5;-><init>(Lcom/waze/install/InstallNativeManager;I)V

    .line 176
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public wayToGoCont()V
    .locals 5

    .prologue
    .line 297
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wayToGoCont running in thread "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v0, Lcom/waze/install/InstallNativeManager$9;

    invoke-direct {v0, p0}, Lcom/waze/install/InstallNativeManager$9;-><init>(Lcom/waze/install/InstallNativeManager;)V

    .line 310
    .local v0, loadDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method
