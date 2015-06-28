.class public Lcom/waze/view/popups/PoiPopUp;
.super Lcom/waze/view/popups/PopUp;
.source "PoiPopUp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/view/popups/PoiPopUp$CompatabilityWrapper;,
        Lcom/waze/view/popups/PoiPopUp$MyJavascriptInterface;,
        Lcom/waze/view/popups/PoiPopUp$PoiBgWebClient;,
        Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mId:I

.field private static mInstance:Lcom/waze/view/popups/PoiPopUp;

.field private static mIsShown:Z

.field private static mLat:I

.field private static mLayoutManager:Lcom/waze/LayoutManager;

.field private static mLon:I

.field private static mServerId:I

.field private static mTimerSet:Z

.field private static mVenueContext:Ljava/lang/String;

.field private static mVenueID:Ljava/lang/String;

.field private static mX:I

.field private static mY:I


# instance fields
.field private VOICE_ACTIONS_INDEX:I

.field private mAddress:Ljava/lang/String;

.field private mAnalyticsAdsNotifyClose:Z

.field private mHadError:Z

.field private mHeight:I

.field private mInfoUrl:Ljava/lang/String;

.field private mIsLoaded:Z

.field private mIsNavigateable:Z

.field private mIsPreloaded:Z

.field private mPopupUrl:Ljava/lang/String;

.field private mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

.field private mPromotionUrl:Ljava/lang/String;

.field private mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVenuGetFailRunnable:Ljava/lang/Runnable;

.field private mVenueGetHandler:Landroid/os/Handler;

.field private mWasWebviewInitilized:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/waze/view/popups/PoiPopUp;->mContext:Landroid/content/Context;

    .line 53
    sput-boolean v1, Lcom/waze/view/popups/PoiPopUp;->mIsShown:Z

    .line 54
    sput-boolean v1, Lcom/waze/view/popups/PoiPopUp;->mTimerSet:Z

    .line 57
    sput-object v0, Lcom/waze/view/popups/PoiPopUp;->mVenueID:Ljava/lang/String;

    .line 58
    sput-object v0, Lcom/waze/view/popups/PoiPopUp;->mVenueContext:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 3
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 59
    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mAddress:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

    .line 65
    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    .line 66
    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mPopupUrl:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mInfoUrl:Ljava/lang/String;

    .line 68
    iput v2, p0, Lcom/waze/view/popups/PoiPopUp;->VOICE_ACTIONS_INDEX:I

    .line 69
    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mPromotionUrl:Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lcom/waze/view/popups/PoiPopUp;->mIsNavigateable:Z

    .line 71
    iput-boolean v1, p0, Lcom/waze/view/popups/PoiPopUp;->mIsPreloaded:Z

    .line 72
    iput-boolean v1, p0, Lcom/waze/view/popups/PoiPopUp;->mIsLoaded:Z

    .line 73
    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mResults:Ljava/util/List;

    .line 75
    iput-boolean v2, p0, Lcom/waze/view/popups/PoiPopUp;->mAnalyticsAdsNotifyClose:Z

    .line 76
    iput-boolean v1, p0, Lcom/waze/view/popups/PoiPopUp;->mWasWebviewInitilized:Z

    .line 94
    sput-object p1, Lcom/waze/view/popups/PoiPopUp;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mResults:Ljava/util/List;

    .line 96
    sput-object p2, Lcom/waze/view/popups/PoiPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 97
    invoke-direct {p0}, Lcom/waze/view/popups/PoiPopUp;->init()V

    .line 98
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/popups/PoiPopUp;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/waze/view/popups/PoiPopUp;->VOICE_ACTIONS_INDEX:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/view/popups/PoiPopUp;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 417
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PoiPopUp;->processJsReturnValue(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/waze/view/popups/PoiPopUp;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/waze/view/popups/PoiPopUp;->mIsPreloaded:Z

    return v0
.end method

.method static synthetic access$11(Lcom/waze/view/popups/PoiPopUp;)Lcom/waze/view/map/ProgressAnimation;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

    return-object v0
.end method

.method static synthetic access$12(Lcom/waze/view/popups/PoiPopUp;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/waze/view/popups/PoiPopUp;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/waze/view/popups/PoiPopUp;->mAnalyticsAdsNotifyClose:Z

    return v0
.end method

.method static synthetic access$14(Lcom/waze/view/popups/PoiPopUp;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mVenueGetHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$15(Lcom/waze/view/popups/PoiPopUp;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mVenuGetFailRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$16(Lcom/waze/view/popups/PoiPopUp;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/waze/view/popups/PoiPopUp;->mVenuGetFailRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$17()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/waze/view/popups/PoiPopUp;->mLat:I

    return v0
.end method

.method static synthetic access$18()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/waze/view/popups/PoiPopUp;->mLon:I

    return v0
.end method

.method static synthetic access$19()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/waze/view/popups/PoiPopUp;->mServerId:I

    return v0
.end method

.method static synthetic access$2(Lcom/waze/view/popups/PoiPopUp;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/waze/view/popups/PoiPopUp;->mIsLoaded:Z

    return-void
.end method

.method static synthetic access$20()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/waze/view/popups/PoiPopUp;->mVenueID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/waze/view/popups/PoiPopUp;->mVenueContext:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/view/popups/PoiPopUp;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/waze/view/popups/PoiPopUp;->mHadError:Z

    return v0
.end method

.method static synthetic access$4(Lcom/waze/view/popups/PoiPopUp;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/waze/view/popups/PoiPopUp;->mIsLoaded:Z

    return v0
.end method

.method static synthetic access$5(Lcom/waze/view/popups/PoiPopUp;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/waze/view/popups/PoiPopUp;->mHadError:Z

    return-void
.end method

.method static synthetic access$6()Lcom/waze/LayoutManager;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/waze/view/popups/PoiPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/view/popups/PoiPopUp;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/waze/view/popups/PoiPopUp;->mAnalyticsAdsNotifyClose:Z

    return-void
.end method

.method static synthetic access$8(Lcom/waze/view/popups/PoiPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/waze/view/popups/PoiPopUp;->onNavigateButton()V

    return-void
.end method

.method static synthetic access$9(Lcom/waze/view/popups/PoiPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/waze/view/popups/PoiPopUp;->onPromotionButton()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/PoiPopUp;
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 82
    sget-object v0, Lcom/waze/view/popups/PoiPopUp;->mInstance:Lcom/waze/view/popups/PoiPopUp;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/waze/view/popups/PoiPopUp;

    invoke-direct {v0, p0, p1}, Lcom/waze/view/popups/PoiPopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    sput-object v0, Lcom/waze/view/popups/PoiPopUp;->mInstance:Lcom/waze/view/popups/PoiPopUp;

    .line 85
    :cond_0
    sget-object v0, Lcom/waze/view/popups/PoiPopUp;->mInstance:Lcom/waze/view/popups/PoiPopUp;

    return-object v0
.end method

.method public static hasInstance()Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/waze/view/popups/PoiPopUp;->mInstance:Lcom/waze/view/popups/PoiPopUp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideDlg()V
    .locals 4

    .prologue
    .line 148
    new-instance v0, Lcom/waze/view/popups/PoiPopUp$2;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/PoiPopUp$2;-><init>(Lcom/waze/view/popups/PoiPopUp;)V

    .line 160
    .local v0, listener:Landroid/view/animation/Animation$AnimationListener;
    sget v1, Lcom/waze/view/popups/PoiPopUp;->mX:I

    int-to-float v1, v1

    sget v2, Lcom/waze/view/popups/PoiPopUp;->mY:I

    int-to-float v2, v2

    const/16 v3, 0x12c

    invoke-static {p0, v1, v2, v3, v0}, Lcom/waze/view/anim/AnimationUtils;->closeAnimateToPoint(Landroid/view/View;FFILandroid/view/animation/Animation$AnimationListener;)V

    .line 162
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/waze/view/popups/PoiPopUp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 141
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f0300b7

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 145
    return-void
.end method

.method private onNavigateButton()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/view/popups/PoiPopUp;->mAnalyticsAdsNotifyClose:Z

    .line 166
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 167
    .local v0, nm:Lcom/waze/NativeManager;
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v11

    .line 169
    .local v11, dtnm:Lcom/waze/navigate/DriveToNativeManager;
    const-string v1, "ADS_POPUP_NAVIGATE"

    invoke-static {v1}, Lcom/waze/analytics/Analytics;->logAdsContext(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/waze/analytics/Analytics;->adsContextNavigationInit()V

    .line 171
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 173
    new-instance v1, Lcom/waze/view/popups/PoiPopUp$3;

    invoke-direct {v1, p0, v11}, Lcom/waze/view/popups/PoiPopUp$3;-><init>(Lcom/waze/view/popups/PoiPopUp;Lcom/waze/navigate/DriveToNativeManager;)V

    iput-object v1, p0, Lcom/waze/view/popups/PoiPopUp;->mVenueGetHandler:Landroid/os/Handler;

    .line 198
    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v3, p0, Lcom/waze/view/popups/PoiPopUp;->mVenueGetHandler:Landroid/os/Handler;

    invoke-virtual {v11, v1, v3}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 199
    sget-object v1, Lcom/waze/view/popups/PoiPopUp;->mVenueID:Ljava/lang/String;

    sget-object v4, Lcom/waze/view/popups/PoiPopUp;->mVenueContext:Ljava/lang/String;

    move-object v3, v2

    move-object v6, v2

    move v7, v5

    move v8, v5

    move-object v9, v2

    move-object v10, v2

    invoke-virtual/range {v0 .. v10}, Lcom/waze/NativeManager;->AutoCompletePlaceClicked(Ljava/lang/String;Ljava/lang/String;Lcom/waze/navigate/AddressItem;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v1, Lcom/waze/view/popups/PoiPopUp$4;

    invoke-direct {v1, p0, v11, v0}, Lcom/waze/view/popups/PoiPopUp$4;-><init>(Lcom/waze/view/popups/PoiPopUp;Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/NativeManager;)V

    iput-object v1, p0, Lcom/waze/view/popups/PoiPopUp;->mVenuGetFailRunnable:Ljava/lang/Runnable;

    .line 218
    iget-object v1, p0, Lcom/waze/view/popups/PoiPopUp;->mVenueGetHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/waze/view/popups/PoiPopUp;->mVenuGetFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->getVenueGetTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    return-void
.end method

.method private onPromotionButton()V
    .locals 23

    .prologue
    .line 222
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/waze/view/popups/PoiPopUp;->mAnalyticsAdsNotifyClose:Z

    .line 223
    sget-object v2, Lcom/waze/view/popups/PoiPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 226
    new-instance v1, Lcom/waze/navigate/AddressItem;

    sget v2, Lcom/waze/view/popups/PoiPopUp;->mLon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/waze/view/popups/PoiPopUp;->mLat:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/view/popups/PoiPopUp;->mAddress:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x63

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 227
    const/4 v11, 0x0

    const/4 v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/waze/view/popups/PoiPopUp;->mInfoUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/view/popups/PoiPopUp;->mPromotionUrl:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 228
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 226
    invoke-direct/range {v1 .. v22}, Lcom/waze/navigate/AddressItem;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/waze/reports/VenueData;)V

    .line 229
    .local v1, ai:Lcom/waze/navigate/AddressItem;
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 231
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    sget-object v4, Lcom/waze/view/popups/PoiPopUp;->mVenueID:Ljava/lang/String;

    sget-object v5, Lcom/waze/view/popups/PoiPopUp;->mVenueContext:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v9}, Lcom/waze/MainActivity;->OpenAddressPreview(Lcom/waze/navigate/AddressItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_0
    return-void
.end method

.method private processJsReturnValue(ILjava/lang/String;)V
    .locals 6
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 419
    if-nez p2, :cond_1

    .line 421
    :try_start_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/view/popups/PoiPopUp;->mResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->SetVoiceActionsStr([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    invoke-virtual {p0}, Lcom/waze/view/popups/PoiPopUp;->GetTimer()I

    move-result v2

    if-gtz v2, :cond_0

    .line 442
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/PopupAction;->popup_shown:Lcom/waze/PopupAction;

    invoke-virtual {v3}, Lcom/waze/PopupAction;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3, v5, v5}, Lcom/waze/NativeManager;->PopupAction(III)V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 426
    .local v1, n:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 431
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/view/popups/PoiPopUp;->mResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->SetVoiceActionsStr([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 440
    invoke-virtual {p0}, Lcom/waze/view/popups/PoiPopUp;->GetTimer()I

    move-result v2

    if-gtz v2, :cond_0

    .line 442
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/PopupAction;->popup_shown:Lcom/waze/PopupAction;

    invoke-virtual {v3}, Lcom/waze/PopupAction;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3, v5, v5}, Lcom/waze/NativeManager;->PopupAction(III)V

    goto :goto_0

    .line 428
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/waze/view/popups/PoiPopUp;->mResults:Ljava/util/List;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 434
    .end local v0           #i:I
    .end local v1           #n:Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 440
    invoke-virtual {p0}, Lcom/waze/view/popups/PoiPopUp;->GetTimer()I

    move-result v2

    if-gtz v2, :cond_0

    .line 442
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/PopupAction;->popup_shown:Lcom/waze/PopupAction;

    invoke-virtual {v3}, Lcom/waze/PopupAction;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3, v5, v5}, Lcom/waze/NativeManager;->PopupAction(III)V

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v2

    .line 440
    invoke-virtual {p0}, Lcom/waze/view/popups/PoiPopUp;->GetTimer()I

    move-result v3

    if-gtz v3, :cond_3

    .line 442
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/PopupAction;->popup_shown:Lcom/waze/PopupAction;

    invoke-virtual {v4}, Lcom/waze/PopupAction;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4, v5, v5}, Lcom/waze/NativeManager;->PopupAction(III)V

    .line 444
    :cond_3
    throw v2
.end method

.method private stopCloseTimer()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method


# virtual methods
.method public GetHeight()I
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/waze/view/popups/PopUp;->GetHeight()I

    move-result v0

    .line 122
    .local v0, i:I
    iget v1, p0, Lcom/waze/view/popups/PoiPopUp;->mHeight:I

    if-ge v1, v0, :cond_0

    .line 127
    .end local v0           #i:I
    :goto_0
    return v0

    .restart local v0       #i:I
    :cond_0
    iget v0, p0, Lcom/waze/view/popups/PoiPopUp;->mHeight:I

    goto :goto_0
.end method

.method public GetView(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 14
    .parameter "iID"
    .parameter "popupUrl"
    .parameter "infoUrl"
    .parameter "promotionUrl"
    .parameter "x"
    .parameter "y"
    .parameter "lat"
    .parameter "lon"
    .parameter "seconds"
    .parameter "isNavigable"
    .parameter "Address"
    .parameter "Height"
    .parameter "ServerId"
    .parameter "VenueId"
    .parameter "VenueContext"

    .prologue
    .line 463
    sget-boolean v9, Lcom/waze/view/popups/PoiPopUp;->mIsShown:Z

    if-eqz v9, :cond_0

    .line 465
    sget-object v9, Lcom/waze/view/popups/PoiPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 468
    :cond_0
    const/4 v9, 0x1

    sput-boolean v9, Lcom/waze/view/popups/PoiPopUp;->mIsShown:Z

    .line 469
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mResults:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 470
    sput p1, Lcom/waze/view/popups/PoiPopUp;->mId:I

    .line 471
    sput p5, Lcom/waze/view/popups/PoiPopUp;->mX:I

    .line 472
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mAddress:Ljava/lang/String;

    .line 473
    sput p6, Lcom/waze/view/popups/PoiPopUp;->mY:I

    .line 474
    sput p7, Lcom/waze/view/popups/PoiPopUp;->mLat:I

    .line 475
    sput p8, Lcom/waze/view/popups/PoiPopUp;->mLon:I

    .line 476
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mPopupUrl:Ljava/lang/String;

    .line 477
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mInfoUrl:Ljava/lang/String;

    .line 478
    sput p13, Lcom/waze/view/popups/PoiPopUp;->mServerId:I

    .line 479
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mPromotionUrl:Ljava/lang/String;

    .line 480
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/waze/view/popups/PoiPopUp;->mAnalyticsAdsNotifyClose:Z

    .line 481
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/waze/view/popups/PoiPopUp;->mIsNavigateable:Z

    .line 482
    sput-object p15, Lcom/waze/view/popups/PoiPopUp;->mVenueContext:Ljava/lang/String;

    .line 483
    sput-object p14, Lcom/waze/view/popups/PoiPopUp;->mVenueID:Ljava/lang/String;

    .line 508
    const/4 v9, -0x1

    move/from16 v0, p9

    if-eq v0, v9, :cond_3

    .line 509
    move/from16 v0, p9

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/PoiPopUp;->setCloseTime(I)V

    .line 529
    :goto_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 530
    .local v2, dm:Landroid/util/DisplayMetrics;
    sget-object v9, Lcom/waze/view/popups/PoiPopUp;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 531
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 533
    add-int/lit8 v3, p12, 0xf

    .line 534
    .local v3, dpValue:I
    sget-object v9, Lcom/waze/view/popups/PoiPopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->density:F

    .line 535
    .local v1, d:F
    int-to-float v9, v3

    mul-float/2addr v9, v1

    float-to-int v4, v9

    .line 537
    .local v4, nHeight:I
    iput v4, p0, Lcom/waze/view/popups/PoiPopUp;->mHeight:I

    .line 539
    const/high16 v9, 0x43aa

    mul-float/2addr v9, v1

    float-to-int v5, v9

    .line 541
    .local v5, nWidth:I
    const v9, 0x7f09054d

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/PoiPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/waze/view/popups/PoiPopUp;->GetHeight()I

    move-result v11

    invoke-direct {v10, v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    const v9, 0x7f09054d

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/PoiPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 555
    const v9, 0x7f0901c5

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/PoiPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebView;

    iput-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    .line 556
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 557
    .local v7, webSettings:Landroid/webkit/WebSettings;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 558
    iget-boolean v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWasWebviewInitilized:Z

    if-nez v9, :cond_1

    .line 559
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    new-instance v10, Lcom/waze/view/popups/PoiPopUp$MyJavascriptInterface;

    invoke-direct {v10, p0}, Lcom/waze/view/popups/PoiPopUp$MyJavascriptInterface;-><init>(Lcom/waze/view/popups/PoiPopUp;)V

    const-string v11, "androidInterface"

    invoke-virtual {v9, v10, v11}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWasWebviewInitilized:Z

    .line 566
    :cond_1
    const v9, 0x7f0901c4

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/PoiPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/waze/view/map/ProgressAnimation;

    iput-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

    .line 570
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    iget-object v10, p0, Lcom/waze/view/popups/PoiPopUp;->mPopupUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 574
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 575
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    new-instance v10, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;-><init>(Lcom/waze/view/popups/PoiPopUp;Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 576
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 578
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    new-instance v10, Lcom/waze/view/popups/PoiPopUp$5;

    invoke-direct {v10, p0}, Lcom/waze/view/popups/PoiPopUp$5;-><init>(Lcom/waze/view/popups/PoiPopUp;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 587
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 588
    .local v6, sdkBuildVersion:I
    const/16 v9, 0xd

    if-le v6, v9, :cond_2

    .line 590
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    invoke-static {v9}, Lcom/waze/view/popups/PoiPopUp$CompatabilityWrapper;->setLayerType(Landroid/webkit/WebView;)V

    .line 593
    :cond_2
    sget-object v9, Lcom/waze/view/popups/PoiPopUp;->mInstance:Lcom/waze/view/popups/PoiPopUp;

    return-object v9

    .line 512
    .end local v1           #d:F
    .end local v2           #dm:Landroid/util/DisplayMetrics;
    .end local v3           #dpValue:I
    .end local v4           #nHeight:I
    .end local v5           #nWidth:I
    .end local v6           #sdkBuildVersion:I
    .end local v7           #webSettings:Landroid/webkit/WebSettings;
    .end local v8           #wm:Landroid/view/WindowManager;
    :cond_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/waze/view/popups/PoiPopUp;->mIsPreloaded:Z

    .line 513
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/waze/view/popups/PoiPopUp;->mIsLoaded:Z

    goto/16 :goto_0
.end method

.method public SetAction(Ljava/lang/String;)V
    .locals 3
    .parameter "Action"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:window.W.triggerVoiceAction(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 105
    sput-boolean v0, Lcom/waze/view/popups/PoiPopUp;->mIsShown:Z

    .line 106
    iput-boolean v0, p0, Lcom/waze/view/popups/PoiPopUp;->mIsPreloaded:Z

    .line 108
    sget-object v0, Lcom/waze/view/popups/PoiPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    sget-object v1, Lcom/waze/view/popups/PoiPopUp;->mInstance:Lcom/waze/view/popups/PoiPopUp;

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 110
    new-instance v0, Lcom/waze/view/popups/PoiPopUp$1;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/PoiPopUp$1;-><init>(Lcom/waze/view/popups/PoiPopUp;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method public isPreloaded(I)Z
    .locals 1
    .parameter "iID"

    .prologue
    .line 300
    sget v0, Lcom/waze/view/popups/PoiPopUp;->mId:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/waze/view/popups/PoiPopUp;->mIsLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/waze/view/popups/PoiPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 102
    return-void
.end method

.method public prepare(ILjava/lang/String;)V
    .locals 7
    .parameter "iID"
    .parameter "promotionUrl"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 288
    const v1, 0x7f0901c5

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/PoiPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    .line 289
    iget-object v1, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/waze/view/popups/PoiPopUp$PoiBgWebClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/waze/view/popups/PoiPopUp$PoiBgWebClient;-><init>(Lcom/waze/view/popups/PoiPopUp;Lcom/waze/view/popups/PoiPopUp$PoiBgWebClient;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 290
    iget-object v1, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 291
    .local v0, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 292
    sput p1, Lcom/waze/view/popups/PoiPopUp;->mId:I

    .line 293
    const-string v1, "WAZE"

    const-string v2, "external_poi_preload:: prepare loaging iID: %d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 295
    iput-boolean v5, p0, Lcom/waze/view/popups/PoiPopUp;->mIsPreloaded:Z

    .line 296
    iput-boolean v6, p0, Lcom/waze/view/popups/PoiPopUp;->mIsLoaded:Z

    .line 297
    return-void
.end method

.method public setCloseTime(I)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 278
    return-void
.end method

.method public show(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZLjava/lang/String;)V
    .locals 14
    .parameter "iID"
    .parameter "popupUrl"
    .parameter "infoUrl"
    .parameter "promotionUrl"
    .parameter "x"
    .parameter "y"
    .parameter "lat"
    .parameter "lon"
    .parameter "seconds"
    .parameter "isNavigable"
    .parameter "Address"

    .prologue
    .line 304
    sget-boolean v9, Lcom/waze/view/popups/PoiPopUp;->mIsShown:Z

    if-eqz v9, :cond_0

    .line 305
    sget-object v9, Lcom/waze/view/popups/PoiPopUp;->mInstance:Lcom/waze/view/popups/PoiPopUp;

    invoke-virtual {v9}, Lcom/waze/view/popups/PoiPopUp;->hide()V

    .line 307
    :cond_0
    const-string v9, "WAZE"

    const-string v10, "external_poi_preload:: show iID: %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v9, 0x1

    sput-boolean v9, Lcom/waze/view/popups/PoiPopUp;->mIsShown:Z

    .line 310
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mResults:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 311
    sput p1, Lcom/waze/view/popups/PoiPopUp;->mId:I

    .line 312
    sput p5, Lcom/waze/view/popups/PoiPopUp;->mX:I

    .line 313
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mAddress:Ljava/lang/String;

    .line 314
    sput p6, Lcom/waze/view/popups/PoiPopUp;->mY:I

    .line 315
    sput p7, Lcom/waze/view/popups/PoiPopUp;->mLat:I

    .line 316
    sput p8, Lcom/waze/view/popups/PoiPopUp;->mLon:I

    .line 317
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mPopupUrl:Ljava/lang/String;

    .line 318
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mInfoUrl:Ljava/lang/String;

    .line 319
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/waze/view/popups/PoiPopUp;->mPromotionUrl:Ljava/lang/String;

    .line 320
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/waze/view/popups/PoiPopUp;->mAnalyticsAdsNotifyClose:Z

    .line 321
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/waze/view/popups/PoiPopUp;->mIsNavigateable:Z

    .line 346
    const/4 v9, -0x1

    move/from16 v0, p9

    if-eq v0, v9, :cond_5

    .line 347
    move/from16 v0, p9

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/PoiPopUp;->setCloseTime(I)V

    .line 354
    :goto_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 356
    const v9, 0x7f09054d

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/PoiPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 357
    .local v2, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 358
    .local v4, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/waze/NativeManager;->getNavBarManager()Lcom/waze/NavBarManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/waze/NavBarManager;->getNavBar()Lcom/waze/navbar/NavBar;

    move-result-object v3

    .line 359
    .local v3, navBar:Lcom/waze/navbar/NavBar;
    const/4 v6, 0x0

    .line 360
    .local v6, topMargin:I
    if-eqz v3, :cond_1

    .line 361
    invoke-virtual {v3}, Lcom/waze/navbar/NavBar;->getNavBarHeight()I

    move-result v6

    .line 363
    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v6, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 364
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    .end local v2           #layout:Landroid/widget/RelativeLayout;
    .end local v3           #navBar:Lcom/waze/navbar/NavBar;
    .end local v4           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #topMargin:I
    :cond_2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 368
    .local v1, dm:Landroid/util/DisplayMetrics;
    sget-object v9, Lcom/waze/view/popups/PoiPopUp;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 369
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 371
    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v10, 0x2a8

    if-le v9, v10, :cond_6

    .line 373
    const v9, 0x7f09054d

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/PoiPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f020036

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 374
    const v9, 0x7f09054d

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/PoiPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/high16 v10, 0x4140

    iget v11, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const/4 v11, 0x0

    const/high16 v12, 0x4140

    iget v13, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 382
    :goto_1
    const v9, 0x7f0901c5

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/PoiPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebView;

    iput-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    .line 383
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 384
    .local v7, webSettings:Landroid/webkit/WebSettings;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 385
    iget-boolean v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWasWebviewInitilized:Z

    if-nez v9, :cond_3

    .line 386
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    new-instance v10, Lcom/waze/view/popups/PoiPopUp$MyJavascriptInterface;

    invoke-direct {v10, p0}, Lcom/waze/view/popups/PoiPopUp$MyJavascriptInterface;-><init>(Lcom/waze/view/popups/PoiPopUp;)V

    const-string v11, "androidInterface"

    invoke-virtual {v9, v10, v11}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWasWebviewInitilized:Z

    .line 390
    :cond_3
    sget-object v9, Lcom/waze/view/popups/PoiPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v9, p0}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    .line 391
    move/from16 v0, p5

    int-to-float v9, v0

    move/from16 v0, p6

    int-to-float v10, v0

    const/16 v11, 0x12c

    invoke-static {p0, v9, v10, v11}, Lcom/waze/view/anim/AnimationUtils;->openAnimateFromPoint(Landroid/view/View;FFI)V

    .line 394
    const v9, 0x7f0901c4

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/PoiPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/waze/view/map/ProgressAnimation;

    iput-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;

    .line 398
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    iget-object v10, p0, Lcom/waze/view/popups/PoiPopUp;->mPopupUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 404
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 405
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    new-instance v10, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;-><init>(Lcom/waze/view/popups/PoiPopUp;Lcom/waze/view/popups/PoiPopUp$PoiWebViewClient;)V

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 406
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 408
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 409
    .local v5, sdkBuildVersion:I
    const/16 v9, 0xd

    if-le v5, v9, :cond_4

    .line 411
    iget-object v9, p0, Lcom/waze/view/popups/PoiPopUp;->mWebView:Landroid/webkit/WebView;

    invoke-static {v9}, Lcom/waze/view/popups/PoiPopUp$CompatabilityWrapper;->setLayerType(Landroid/webkit/WebView;)V

    .line 415
    :cond_4
    return-void

    .line 350
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v5           #sdkBuildVersion:I
    .end local v7           #webSettings:Landroid/webkit/WebSettings;
    .end local v8           #wm:Landroid/view/WindowManager;
    :cond_5
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/waze/view/popups/PoiPopUp;->mIsPreloaded:Z

    .line 351
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/waze/view/popups/PoiPopUp;->mIsLoaded:Z

    goto/16 :goto_0

    .line 378
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v8       #wm:Landroid/view/WindowManager;
    :cond_6
    const v9, 0x7f09054d

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/PoiPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f020035

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 379
    const v9, 0x7f09054d

    invoke-virtual {p0, v9}, Lcom/waze/view/popups/PoiPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1
.end method
