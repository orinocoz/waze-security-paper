.class public final Lcom/waze/OfflineNativeManager;
.super Ljava/lang/Object;
.source "OfflineNativeManager.java"


# static fields
.field private static mInstance:Lcom/waze/OfflineNativeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/OfflineNativeManager;->mInstance:Lcom/waze/OfflineNativeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/waze/AppService;->IsAppRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lcom/waze/NativeManager;->LoadNativeLib()V

    .line 60
    invoke-direct {p0}, Lcom/waze/OfflineNativeManager;->InitOfflineNativeManagerWhileAppIsNotRunningNTV()V

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/waze/OfflineNativeManager;->InitOfflineNativeManagerNTV()V

    .line 64
    return-void
.end method

.method private native HandleCommandNTV(Ljava/lang/String;II)Lcom/waze/messages/QuestionData;
.end method

.method private native InitOfflineNativeManagerNTV()V
.end method

.method private native InitOfflineNativeManagerWhileAppIsNotRunningNTV()V
.end method

.method public static getInstance()Lcom/waze/OfflineNativeManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/waze/OfflineNativeManager;->mInstance:Lcom/waze/OfflineNativeManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/waze/OfflineNativeManager;

    invoke-direct {v0}, Lcom/waze/OfflineNativeManager;-><init>()V

    sput-object v0, Lcom/waze/OfflineNativeManager;->mInstance:Lcom/waze/OfflineNativeManager;

    .line 36
    :cond_0
    sget-object v0, Lcom/waze/OfflineNativeManager;->mInstance:Lcom/waze/OfflineNativeManager;

    return-object v0
.end method


# virtual methods
.method public HandleCommandForPush(Ljava/lang/String;II)Lcom/waze/messages/QuestionData;
    .locals 1
    .parameter "sCommand"
    .parameter "lon"
    .parameter "lat"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/OfflineNativeManager;->HandleCommandNTV(Ljava/lang/String;II)Lcom/waze/messages/QuestionData;

    move-result-object v0

    return-object v0
.end method
