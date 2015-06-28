.class public Lcom/waze/rtalerts/RTAlertsNativeManager;
.super Ljava/lang/Object;
.source "RTAlertsNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCommentDataHandler;,
        Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCountHandler;,
        Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler;,
        Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsMenuDataHandler;,
        Lcom/waze/rtalerts/RTAlertsNativeManager$MapProblemsListener;
    }
.end annotation


# static fields
.field public static final MENU_ITEM_ID_ACCIDENTS:I = 0x8

.field public static final MENU_ITEM_ID_ALL:I = 0x1

.field public static final MENU_ITEM_ID_CHITCHATS:I = 0x10

.field public static final MENU_ITEM_ID_CLOSURE:I = 0x20

.field public static final MENU_ITEM_ID_OTHER:I = 0x40

.field public static final MENU_ITEM_ID_POLICE:I = 0x2

.field public static final MENU_ITEM_ID_TRAFFIC:I = 0x4

.field private static final POPUP_EVENT_DELAY:J = 0x12cL

.field protected static mInstance:Lcom/waze/rtalerts/RTAlertsNativeManager;


# instance fields
.field protected volatile mLangHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mListData:[Lcom/waze/rtalerts/RTAlertsAlertData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/rtalerts/RTAlertsNativeManager;->mInstance:Lcom/waze/rtalerts/RTAlertsNativeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager;->mListData:[Lcom/waze/rtalerts/RTAlertsAlertData;

    .line 371
    iput-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager;->mLangHash:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method private native GetRTAlertsCommentNTV(I)[Lcom/waze/rtalerts/RTAlertsCommentData;
.end method

.method private native GetRTAlertsCountNTV()I
.end method

.method private native GetRTAlertsListNTV()[Lcom/waze/rtalerts/RTAlertsAlertData;
.end method

.method private native GetRTAlertsMenuNTV()[Lcom/waze/rtalerts/RTAlertsMenuData;
.end method

.method private native InitNativeLayerNTV()V
.end method

.method private native PostCommentNTV(ILjava/lang/String;)V
.end method

.method private native PostCommentValidateNTV(I)Z
.end method

.method private native ShowPopUpByIdNTV(I)V
.end method

.method static synthetic access$0(Lcom/waze/rtalerts/RTAlertsNativeManager;I)[Lcom/waze/rtalerts/RTAlertsCommentData;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/waze/rtalerts/RTAlertsNativeManager;->GetRTAlertsCommentNTV(I)[Lcom/waze/rtalerts/RTAlertsCommentData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/rtalerts/RTAlertsNativeManager;)[Lcom/waze/rtalerts/RTAlertsMenuData;
    .locals 1
    .parameter

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/waze/rtalerts/RTAlertsNativeManager;->GetRTAlertsMenuNTV()[Lcom/waze/rtalerts/RTAlertsMenuData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/waze/rtalerts/RTAlertsNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/waze/rtalerts/RTAlertsNativeManager;->reportBadRouteNTV()V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/rtalerts/RTAlertsNativeManager;)[Lcom/waze/rtalerts/RTAlertsAlertData;
    .locals 1
    .parameter

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/waze/rtalerts/RTAlertsNativeManager;->GetRTAlertsListNTV()[Lcom/waze/rtalerts/RTAlertsAlertData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/rtalerts/RTAlertsNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/waze/rtalerts/RTAlertsNativeManager;->ShowPopUpByIdNTV(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/rtalerts/RTAlertsNativeManager;)I
    .locals 1
    .parameter

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/waze/rtalerts/RTAlertsNativeManager;->GetRTAlertsCountNTV()I

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/waze/rtalerts/RTAlertsNativeManager;)[Lcom/waze/rtalerts/MapProblem;
    .locals 1
    .parameter

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getMapProblemsNTV()[Lcom/waze/rtalerts/MapProblem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/waze/rtalerts/RTAlertsNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/waze/rtalerts/RTAlertsNativeManager;->InitNativeLayerNTV()V

    return-void
.end method

.method static synthetic access$7(Lcom/waze/rtalerts/RTAlertsNativeManager;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/waze/rtalerts/RTAlertsNativeManager;->PostCommentValidateNTV(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/waze/rtalerts/RTAlertsNativeManager;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 358
    invoke-direct {p0, p1, p2}, Lcom/waze/rtalerts/RTAlertsNativeManager;->PostCommentNTV(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/waze/rtalerts/RTAlertsNativeManager;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Lcom/waze/rtalerts/RTAlertsNativeManager;->reportMapIssueNTV(Ljava/lang/String;I)V

    return-void
.end method

.method public static create()Lcom/waze/rtalerts/RTAlertsNativeManager;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/waze/rtalerts/RTAlertsNativeManager;->mInstance:Lcom/waze/rtalerts/RTAlertsNativeManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/waze/rtalerts/RTAlertsNativeManager;

    invoke-direct {v0}, Lcom/waze/rtalerts/RTAlertsNativeManager;-><init>()V

    sput-object v0, Lcom/waze/rtalerts/RTAlertsNativeManager;->mInstance:Lcom/waze/rtalerts/RTAlertsNativeManager;

    .line 36
    sget-object v0, Lcom/waze/rtalerts/RTAlertsNativeManager;->mInstance:Lcom/waze/rtalerts/RTAlertsNativeManager;

    invoke-direct {v0}, Lcom/waze/rtalerts/RTAlertsNativeManager;->initNativeLayer()V

    .line 37
    sget-object v0, Lcom/waze/rtalerts/RTAlertsNativeManager;->mInstance:Lcom/waze/rtalerts/RTAlertsNativeManager;

    invoke-direct {v0}, Lcom/waze/rtalerts/RTAlertsNativeManager;->loadLangStrings()V

    .line 39
    :cond_0
    sget-object v0, Lcom/waze/rtalerts/RTAlertsNativeManager;->mInstance:Lcom/waze/rtalerts/RTAlertsNativeManager;

    return-object v0
.end method

.method public static getInstance()Lcom/waze/rtalerts/RTAlertsNativeManager;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/waze/rtalerts/RTAlertsNativeManager;->create()Lcom/waze/rtalerts/RTAlertsNativeManager;

    .line 45
    sget-object v0, Lcom/waze/rtalerts/RTAlertsNativeManager;->mInstance:Lcom/waze/rtalerts/RTAlertsNativeManager;

    return-object v0
.end method

.method private native getMapProblemsNTV()[Lcom/waze/rtalerts/MapProblem;
.end method

.method private initNativeLayer()V
    .locals 1

    .prologue
    .line 219
    new-instance v0, Lcom/waze/rtalerts/RTAlertsNativeManager$7;

    invoke-direct {v0, p0}, Lcom/waze/rtalerts/RTAlertsNativeManager$7;-><init>(Lcom/waze/rtalerts/RTAlertsNativeManager;)V

    .line 227
    .local v0, event:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method private loadLangStrings()V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lcom/waze/rtalerts/RTAlertsNativeManager$8;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/waze/rtalerts/RTAlertsNativeManager$8;-><init>(Lcom/waze/rtalerts/RTAlertsNativeManager;Ljava/util/concurrent/Executor;)V

    .line 259
    .local v0, langEvent:Lcom/waze/ifs/async/RunnableExecutor;
    invoke-static {v0}, Lcom/waze/NativeManager;->registerOnAppStartedEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 260
    return-void
.end method

.method private native policeSubtypesAllowedNTV()Z
.end method

.method private native reportBadRouteNTV()V
.end method

.method private native reportMapIssueNTV(Ljava/lang/String;I)V
.end method


# virtual methods
.method public getAlertsCommentData(ILcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCommentDataHandler;)V
    .locals 1
    .parameter "alertId"
    .parameter "dataHandler"

    .prologue
    .line 64
    new-instance v0, Lcom/waze/rtalerts/RTAlertsNativeManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/rtalerts/RTAlertsNativeManager$1;-><init>(Lcom/waze/rtalerts/RTAlertsNativeManager;ILcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCommentDataHandler;)V

    .line 77
    .local v0, commentsDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public getAlertsCount(Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCountHandler;)V
    .locals 1
    .parameter "dataHandler"

    .prologue
    .line 185
    new-instance v0, Lcom/waze/rtalerts/RTAlertsNativeManager$5;

    invoke-direct {v0, p0, p1}, Lcom/waze/rtalerts/RTAlertsNativeManager$5;-><init>(Lcom/waze/rtalerts/RTAlertsNativeManager;Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsCountHandler;)V

    .line 197
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public getAlertsListData(Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler;)V
    .locals 1
    .parameter "dataHandler"

    .prologue
    .line 125
    new-instance v0, Lcom/waze/rtalerts/RTAlertsNativeManager$3;

    invoke-direct {v0, p0, p1}, Lcom/waze/rtalerts/RTAlertsNativeManager$3;-><init>(Lcom/waze/rtalerts/RTAlertsNativeManager;Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsListDataHandler;)V

    .line 137
    .local v0, listDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public getAlertsMenuData(Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsMenuDataHandler;)V
    .locals 1
    .parameter "dataHandler"

    .prologue
    .line 88
    new-instance v0, Lcom/waze/rtalerts/RTAlertsNativeManager$2;

    invoke-direct {v0, p0, p1}, Lcom/waze/rtalerts/RTAlertsNativeManager$2;-><init>(Lcom/waze/rtalerts/RTAlertsNativeManager;Lcom/waze/rtalerts/RTAlertsNativeManager$IAlertsMenuDataHandler;)V

    .line 105
    .local v0, menuDataEvent:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method public getLangStr(I)Ljava/lang/String;
    .locals 2
    .parameter "res_id"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager;->mLangHash:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsNativeManager;->mLangHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMapProblems(Lcom/waze/rtalerts/RTAlertsNativeManager$MapProblemsListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 202
    new-instance v0, Lcom/waze/rtalerts/RTAlertsNativeManager$6;

    invoke-direct {v0, p0, p1}, Lcom/waze/rtalerts/RTAlertsNativeManager$6;-><init>(Lcom/waze/rtalerts/RTAlertsNativeManager;Lcom/waze/rtalerts/RTAlertsNativeManager$MapProblemsListener;)V

    .line 214
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method public isPoliceSubtypesAllowed()Z
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/waze/rtalerts/RTAlertsNativeManager;->policeSubtypesAllowedNTV()Z

    move-result v0

    return v0
.end method

.method public onFbImageDownload(II[BII)V
    .locals 7
    .parameter "alertId"
    .parameter "commentId"
    .parameter "image"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 326
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 327
    .local v4, imageCopy:[B
    new-instance v0, Lcom/waze/rtalerts/RTAlertsNativeManager$13;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/waze/rtalerts/RTAlertsNativeManager$13;-><init>(Lcom/waze/rtalerts/RTAlertsNativeManager;II[BII)V

    .line 333
    .local v0, event:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method public postComment(ILjava/lang/String;)V
    .locals 1
    .parameter "alertId"
    .parameter "comment"

    .prologue
    .line 291
    new-instance v0, Lcom/waze/rtalerts/RTAlertsNativeManager$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/rtalerts/RTAlertsNativeManager$10;-><init>(Lcom/waze/rtalerts/RTAlertsNativeManager;ILjava/lang/String;)V

    .line 297
    .local v0, event:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 298
    return-void
.end method

.method public postCommentValidate(Landroid/app/Activity;I)V
    .locals 1
    .parameter "context4Result"
    .parameter "alertId"

    .prologue
    .line 273
    new-instance v0, Lcom/waze/rtalerts/RTAlertsNativeManager$9;

    invoke-direct {v0, p0, p2, p1}, Lcom/waze/rtalerts/RTAlertsNativeManager$9;-><init>(Lcom/waze/rtalerts/RTAlertsNativeManager;ILandroid/app/Activity;)V

    .line 286
    .local v0, event:Lcom/waze/ifs/async/RunnableUICallback;
    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 287
    return-void
.end method

.method public reportBadRoute()V
    .locals 1

    .prologue
    .line 311
    new-instance v0, Lcom/waze/rtalerts/RTAlertsNativeManager$12;

    invoke-direct {v0, p0}, Lcom/waze/rtalerts/RTAlertsNativeManager$12;-><init>(Lcom/waze/rtalerts/RTAlertsNativeManager;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 317
    return-void
.end method

.method public reportMapIssue(Ljava/lang/String;I)V
    .locals 1
    .parameter "desc"
    .parameter "problemIndex"

    .prologue
    .line 301
    new-instance v0, Lcom/waze/rtalerts/RTAlertsNativeManager$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/waze/rtalerts/RTAlertsNativeManager$11;-><init>(Lcom/waze/rtalerts/RTAlertsNativeManager;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 307
    return-void
.end method

.method public showAlertPopUp(I)V
    .locals 3
    .parameter "alertId"

    .prologue
    .line 155
    new-instance v0, Lcom/waze/rtalerts/RTAlertsNativeManager$4;

    invoke-direct {v0, p0, p1}, Lcom/waze/rtalerts/RTAlertsNativeManager$4;-><init>(Lcom/waze/rtalerts/RTAlertsNativeManager;I)V

    .line 168
    .local v0, event:Ljava/lang/Runnable;
    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;J)V

    .line 169
    return-void
.end method
