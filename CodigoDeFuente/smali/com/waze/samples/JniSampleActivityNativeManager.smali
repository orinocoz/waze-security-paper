.class public Lcom/waze/samples/JniSampleActivityNativeManager;
.super Ljava/lang/Object;
.source "JniSampleActivityNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/samples/JniSampleActivityNativeManager$ITimeUpdater;,
        Lcom/waze/samples/JniSampleActivityNativeManager$TimeData;
    }
.end annotation


# static fields
.field protected static mInstance:Lcom/waze/samples/JniSampleActivityNativeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/samples/JniSampleActivityNativeManager;->mInstance:Lcom/waze/samples/JniSampleActivityNativeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native InitNativeLayerNTV()V
.end method

.method private native LoadTimeNTV()Lcom/waze/samples/JniSampleActivityNativeManager$TimeData;
.end method

.method static synthetic access$0(Lcom/waze/samples/JniSampleActivityNativeManager;)Lcom/waze/samples/JniSampleActivityNativeManager$TimeData;
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/waze/samples/JniSampleActivityNativeManager;->LoadTimeNTV()Lcom/waze/samples/JniSampleActivityNativeManager$TimeData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/samples/JniSampleActivityNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/waze/samples/JniSampleActivityNativeManager;->InitNativeLayerNTV()V

    return-void
.end method

.method public static getInstance()Lcom/waze/samples/JniSampleActivityNativeManager;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/waze/samples/JniSampleActivityNativeManager;->mInstance:Lcom/waze/samples/JniSampleActivityNativeManager;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/waze/samples/JniSampleActivityNativeManager;

    invoke-direct {v0}, Lcom/waze/samples/JniSampleActivityNativeManager;-><init>()V

    sput-object v0, Lcom/waze/samples/JniSampleActivityNativeManager;->mInstance:Lcom/waze/samples/JniSampleActivityNativeManager;

    .line 16
    sget-object v0, Lcom/waze/samples/JniSampleActivityNativeManager;->mInstance:Lcom/waze/samples/JniSampleActivityNativeManager;

    invoke-direct {v0}, Lcom/waze/samples/JniSampleActivityNativeManager;->initNativeLayer()V

    .line 18
    :cond_0
    sget-object v0, Lcom/waze/samples/JniSampleActivityNativeManager;->mInstance:Lcom/waze/samples/JniSampleActivityNativeManager;

    return-object v0
.end method

.method private initNativeLayer()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/waze/samples/JniSampleActivityNativeManager$2;

    invoke-direct {v0, p0}, Lcom/waze/samples/JniSampleActivityNativeManager$2;-><init>(Lcom/waze/samples/JniSampleActivityNativeManager;)V

    .line 63
    .local v0, event:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method


# virtual methods
.method public runButtonClick(Lcom/waze/samples/JniSampleActivityNativeManager$ITimeUpdater;)V
    .locals 1
    .parameter "updater"

    .prologue
    .line 28
    new-instance v0, Lcom/waze/samples/JniSampleActivityNativeManager$1;

    invoke-direct {v0, p0, p1}, Lcom/waze/samples/JniSampleActivityNativeManager$1;-><init>(Lcom/waze/samples/JniSampleActivityNativeManager;Lcom/waze/samples/JniSampleActivityNativeManager$ITimeUpdater;)V

    .line 43
    .local v0, runButtonEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method
