.class public final Lcom/waze/share/ShareNativeManager;
.super Ljava/lang/Object;
.source "ShareNativeManager.java"

# interfaces
.implements Lcom/waze/ConfigManager$IConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/share/ShareNativeManager$IShareFbLocationDataHandler;,
        Lcom/waze/share/ShareNativeManager$IShareFbMainDataHandler;,
        Lcom/waze/share/ShareNativeManager$IShareFbWithDataHandler;
    }
.end annotation


# static fields
.field public static final METER_TO_MILES_FACTOR:F = 6.21371E-4f

.field private static mInstance:Lcom/waze/share/ShareNativeManager;


# instance fields
.field private mFacebookFeatureEnabled:Z

.field private mFoursquareFeatureEnabled:Z

.field private volatile mMetricUnits:Z

.field private mShareUserPrerfixUrl:Ljava/lang/String;

.field private mTwitterFeatureEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/share/ShareNativeManager;->mInstance:Lcom/waze/share/ShareNativeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-boolean v0, p0, Lcom/waze/share/ShareNativeManager;->mFacebookFeatureEnabled:Z

    .line 247
    iput-boolean v0, p0, Lcom/waze/share/ShareNativeManager;->mTwitterFeatureEnabled:Z

    .line 248
    iput-boolean v0, p0, Lcom/waze/share/ShareNativeManager;->mFoursquareFeatureEnabled:Z

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/share/ShareNativeManager;->mShareUserPrerfixUrl:Ljava/lang/String;

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/share/ShareNativeManager;->mMetricUnits:Z

    .line 20
    return-void
.end method

.method private native InitNativeLayerNTV()V
.end method

.method static synthetic access$0(Lcom/waze/share/ShareNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/waze/share/ShareNativeManager;->InitNativeLayerNTV()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/share/ShareNativeManager;Z)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/waze/share/ShareNativeManager;->getLocationNTV(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/share/ShareNativeManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/waze/share/ShareNativeManager;->getNickNameNTV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/share/ShareNativeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/waze/share/ShareNativeManager;->isMetricUnitsNTV()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/waze/share/ShareNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/waze/share/ShareNativeManager;->mMetricUnits:Z

    return-void
.end method

.method public static create()Lcom/waze/share/ShareNativeManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/waze/share/ShareNativeManager;->mInstance:Lcom/waze/share/ShareNativeManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/waze/share/ShareNativeManager;

    invoke-direct {v0}, Lcom/waze/share/ShareNativeManager;-><init>()V

    sput-object v0, Lcom/waze/share/ShareNativeManager;->mInstance:Lcom/waze/share/ShareNativeManager;

    .line 35
    sget-object v0, Lcom/waze/share/ShareNativeManager;->mInstance:Lcom/waze/share/ShareNativeManager;

    invoke-direct {v0}, Lcom/waze/share/ShareNativeManager;->initNativeLayer()V

    .line 36
    sget-object v0, Lcom/waze/share/ShareNativeManager;->mInstance:Lcom/waze/share/ShareNativeManager;

    invoke-direct {v0}, Lcom/waze/share/ShareNativeManager;->initConfig()V

    .line 38
    :cond_0
    sget-object v0, Lcom/waze/share/ShareNativeManager;->mInstance:Lcom/waze/share/ShareNativeManager;

    return-object v0
.end method

.method private native getDestinationNameNTV()Ljava/lang/String;
.end method

.method public static getInstance()Lcom/waze/share/ShareNativeManager;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/waze/share/ShareNativeManager;->create()Lcom/waze/share/ShareNativeManager;

    .line 27
    sget-object v0, Lcom/waze/share/ShareNativeManager;->mInstance:Lcom/waze/share/ShareNativeManager;

    return-object v0
.end method

.method private native getLocationNTV(Z)Ljava/lang/String;
.end method

.method private native getNickNameNTV()Ljava/lang/String;
.end method

.method private initConfig()V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lcom/waze/share/ShareNativeManager$6;

    invoke-static {}, Lcom/waze/AppService;->getInstance()Lcom/waze/AppService;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/waze/share/ShareNativeManager$6;-><init>(Lcom/waze/share/ShareNativeManager;Ljava/util/concurrent/Executor;)V

    .line 221
    .local v0, configEvent:Lcom/waze/ifs/async/RunnableExecutor;
    invoke-static {}, Lcom/waze/NativeManager;->IsAppStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/waze/ifs/async/RunnableExecutor;->run()V

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-static {v0}, Lcom/waze/NativeManager;->registerOnAppStartedEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    goto :goto_0
.end method

.method private initNativeLayer()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/waze/share/ShareNativeManager$1;

    invoke-direct {v0, p0}, Lcom/waze/share/ShareNativeManager$1;-><init>(Lcom/waze/share/ShareNativeManager;)V

    .line 49
    .local v0, event:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method private native isMetricUnitsNTV()Z
.end method


# virtual methods
.method public native getEtaNTV()Ljava/lang/String;
.end method

.method public getFBFeatureEnabled()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/waze/share/ShareNativeManager;->mFacebookFeatureEnabled:Z

    return v0
.end method

.method public getFsqFeatureEnabled()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/waze/share/ShareNativeManager;->mFoursquareFeatureEnabled:Z

    return v0
.end method

.method public native getReceivedLocationSender()Lcom/waze/user/FriendUserData;
.end method

.method public getShareFbLocationData(Lcom/waze/share/ShareNativeManager$IShareFbLocationDataHandler;)V
    .locals 1
    .parameter "dataHandler"

    .prologue
    .line 161
    new-instance v0, Lcom/waze/share/ShareNativeManager$5;

    invoke-direct {v0, p0, p1}, Lcom/waze/share/ShareNativeManager$5;-><init>(Lcom/waze/share/ShareNativeManager;Lcom/waze/share/ShareNativeManager$IShareFbLocationDataHandler;)V

    .line 176
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public getShareFbMainData(Lcom/waze/share/ShareNativeManager$IShareFbMainDataHandler;Z)V
    .locals 1
    .parameter "dataHandler"
    .parameter "shareDestination"

    .prologue
    .line 78
    new-instance v0, Lcom/waze/share/ShareNativeManager$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/waze/share/ShareNativeManager$2;-><init>(Lcom/waze/share/ShareNativeManager;ZLcom/waze/share/ShareNativeManager$IShareFbMainDataHandler;)V

    .line 105
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public getShareFbWithData(Lcom/waze/share/ShareNativeManager$IShareFbWithDataHandler;)V
    .locals 1
    .parameter "dataHandler"

    .prologue
    .line 137
    new-instance v0, Lcom/waze/share/ShareNativeManager$4;

    invoke-direct {v0, p0, p1}, Lcom/waze/share/ShareNativeManager$4;-><init>(Lcom/waze/share/ShareNativeManager;Lcom/waze/share/ShareNativeManager$IShareFbWithDataHandler;)V

    .line 155
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public getShareUserPrerfixUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/waze/share/ShareNativeManager;->mShareUserPrerfixUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterFeatureEnabled()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/waze/share/ShareNativeManager;->mTwitterFeatureEnabled:Z

    return v0
.end method

.method public isMetricUnits()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/waze/share/ShareNativeManager;->mMetricUnits:Z

    return v0
.end method

.method public native isOkToShowShareDriveTip()Z
.end method

.method public native makeItOkToShowShareDriveTip()V
.end method

.method public shareFbDialogShow()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/waze/share/ShareNativeManager$3;

    invoke-direct {v0, p0}, Lcom/waze/share/ShareNativeManager$3;-><init>(Lcom/waze/share/ShareNativeManager;)V

    .line 122
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public native shownReceivedLocationShareTip()V
.end method

.method public native shownShareDriveTip()V
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
    .line 55
    .local p1, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, value:Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/waze/share/ShareNativeManager;->mFacebookFeatureEnabled:Z

    .line 58
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/waze/share/ShareNativeManager;->mTwitterFeatureEnabled:Z

    .line 61
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/waze/share/ShareNativeManager;->mFoursquareFeatureEnabled:Z

    .line 64
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/ConfigItem;

    invoke-virtual {v1}, Lcom/waze/ConfigItem;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/share/ShareNativeManager;->mShareUserPrerfixUrl:Ljava/lang/String;

    .line 66
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got ShareConfig values: FB: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/waze/share/ShareNativeManager;->mFacebookFeatureEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method
