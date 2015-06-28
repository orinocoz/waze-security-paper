.class public final Lcom/waze/navigate/AddressPreviewActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "AddressPreviewActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNavigateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;,
        Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;
    }
.end annotation


# static fields
.field private static final RQ_EDIT_PLACE:I = 0x6d

.field private static final RQ_FLAG_DUPLICATE_FIND:I = 0x6b

.field private static final RQ_FLAG_MOVED_CLOSED:I = 0x6c

.field private static final RQ_FLAG_WRONG:I = 0x6a

.field private static final RQ_MISC:I = 0x14d

.field private static final RQ_REGISTER:I = 0x6f

.field private static final WEBVIEW_RQ_SET_OFFER:I = 0x1


# instance fields
.field private LS_X_FACTOR:F

.field private LS_Y_FACTOR:F

.field private mAddressItem:Lcom/waze/navigate/AddressItem;

.field private mAddressItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/navigate/AddressItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdsCtx:Lcom/waze/NativeManager$AdsActiveContext;

.field private mDensity:F

.field private mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

.field private mEventAddressItem:Lcom/waze/navigate/AddressItem;

.field private mFlagType:I

.field private mFrameHeight:I

.field private mGallery:Lcom/waze/reports/PlacePhotoGallery;

.field private mImageArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/reports/PhotoPagerSection$VenueImage;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAdditionalAddToFavorites:Z

.field private mIsClearAdsContext:Z

.field private mIsMapBig:Z

.field private mLandscapeAnimateMapClosedListener:Landroid/view/animation/Animation$AnimationListener;

.field private mLandscapeAnimateMapOpenListener:Landroid/view/animation/Animation$AnimationListener;

.field private mLockHeight:I

.field private mLogoImg:Landroid/widget/ImageView;

.field private mMapCovered:I

.field private mMapLayout:Landroid/view/ViewGroup;

.field private mMapMask:Landroid/view/View;

.field private mMapView:Lcom/waze/MapView;

.field private mNatMgr:Lcom/waze/NativeManager;

.field private final mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

.field private mPlaceImagesFrame:Landroid/view/View;

.field private mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;

.field private mSelectedItem:I

.field private mShouldLoadVenue:Z

.field private final mSpecialUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;

.field private mWasResultSet:Z

.field private mWebView:Lcom/waze/WzWebView;

.field private mWebViewLoadAnimation:Landroid/widget/ProgressBar;

.field private mbAddressOptionsViewSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 118
    const v0, 0x40c9999a

    iput v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->LS_Y_FACTOR:F

    .line 119
    const v0, 0x4149999a

    iput v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->LS_X_FACTOR:F

    .line 123
    iput-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mEventAddressItem:Lcom/waze/navigate/AddressItem;

    .line 126
    iput-boolean v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mIsMapBig:Z

    .line 130
    iput v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mSelectedItem:I

    .line 132
    iput-boolean v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mIsClearAdsContext:Z

    .line 133
    iput-boolean v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mShouldLoadVenue:Z

    .line 134
    iput-boolean v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mWasResultSet:Z

    .line 141
    iput-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    .line 143
    new-instance v0, Lcom/waze/navigate/AddressPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/navigate/AddressPreviewActivity$1;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    iput-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mLandscapeAnimateMapOpenListener:Landroid/view/animation/Animation$AnimationListener;

    .line 159
    new-instance v0, Lcom/waze/navigate/AddressPreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/waze/navigate/AddressPreviewActivity$2;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    iput-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mLandscapeAnimateMapClosedListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1910
    new-instance v0, Lcom/waze/navigate/AddressPreviewActivity$3;

    invoke-direct {v0, p0}, Lcom/waze/navigate/AddressPreviewActivity$3;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    iput-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mSpecialUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;

    .line 1977
    new-instance v0, Lcom/waze/navigate/AddressPreviewActivity$4;

    invoke-direct {v0, p0}, Lcom/waze/navigate/AddressPreviewActivity$4;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    iput-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    .line 2008
    iput-boolean v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mbAddressOptionsViewSet:Z

    .line 109
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/AddressPreviewActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 137
    iget v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I

    return v0
.end method

.method static synthetic access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method static synthetic access$11(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mMapMask:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mWebViewLoadAnimation:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$14(Lcom/waze/navigate/AddressPreviewActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 136
    iget v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mFrameHeight:I

    return v0
.end method

.method static synthetic access$15(Lcom/waze/navigate/AddressPreviewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mIsMapBig:Z

    return v0
.end method

.method static synthetic access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$17(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mLandscapeAnimateMapOpenListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$18(Lcom/waze/navigate/AddressPreviewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mIsMapBig:Z

    return-void
.end method

.method static synthetic access$19(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mLandscapeAnimateMapClosedListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/navigate/AddressPreviewActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1973
    invoke-direct {p0, p1}, Lcom/waze/navigate/AddressPreviewActivity;->logAnalyticsAds(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$21(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mEventAddressItem:Lcom/waze/navigate/AddressItem;

    return-object v0
.end method

.method static synthetic access$22(Lcom/waze/navigate/AddressPreviewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mWasResultSet:Z

    return-void
.end method

.method static synthetic access$23(Lcom/waze/navigate/AddressPreviewActivity;Lcom/waze/NativeManager$AdsActiveContext;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2007
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAdsCtx:Lcom/waze/NativeManager$AdsActiveContext;

    return-void
.end method

.method static synthetic access$24(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager$AdsActiveContext;
    .locals 1
    .parameter

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAdsCtx:Lcom/waze/NativeManager$AdsActiveContext;

    return-object v0
.end method

.method static synthetic access$25(Lcom/waze/navigate/AddressPreviewActivity;Landroid/webkit/WebView;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2224
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/navigate/AddressPreviewActivity;->callJavaScript(Landroid/webkit/WebView;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$26(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    return-object v0
.end method

.method static synthetic access$27(Lcom/waze/navigate/AddressPreviewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mImageArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$28(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/reports/PlacePhotoGallery;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    return-object v0
.end method

.method static synthetic access$29(Lcom/waze/navigate/AddressPreviewActivity;Lcom/waze/reports/PlacePhotoGallery;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    return-void
.end method

.method static synthetic access$3(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/WzWebView;
    .locals 1
    .parameter

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mWebView:Lcom/waze/WzWebView;

    return-object v0
.end method

.method static synthetic access$30(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$31(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2236
    invoke-direct {p0}, Lcom/waze/navigate/AddressPreviewActivity;->unsetAddressOptionsView()V

    return-void
.end method

.method static synthetic access$32(Lcom/waze/navigate/AddressPreviewActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput p1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mFlagType:I

    return-void
.end method

.method static synthetic access$33(Lcom/waze/navigate/AddressPreviewActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 140
    iget v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mFlagType:I

    return v0
.end method

.method static synthetic access$34(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1718
    invoke-direct {p0}, Lcom/waze/navigate/AddressPreviewActivity;->thanksForReport()V

    return-void
.end method

.method static synthetic access$35(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1702
    invoke-direct {p0}, Lcom/waze/navigate/AddressPreviewActivity;->gotoMovedOrClosed()V

    return-void
.end method

.method static synthetic access$36(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1676
    invoke-direct {p0}, Lcom/waze/navigate/AddressPreviewActivity;->gotoFindDuplicate()V

    return-void
.end method

.method static synthetic access$37(Lcom/waze/navigate/AddressPreviewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1657
    invoke-direct {p0, p1}, Lcom/waze/navigate/AddressPreviewActivity;->gotoIappropreateOrWrongDetails(Z)V

    return-void
.end method

.method static synthetic access$38(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1682
    invoke-direct {p0}, Lcom/waze/navigate/AddressPreviewActivity;->gotoFlagResidential()V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/navigate/AddressPreviewActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 139
    iget v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDensity:F

    return v0
.end method

.method static synthetic access$5(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2243
    invoke-direct {p0}, Lcom/waze/navigate/AddressPreviewActivity;->setAddressOptionsView()V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/navigate/AddressPreviewActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 118
    iget v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->LS_Y_FACTOR:F

    return v0
.end method

.method static synthetic access$8(Lcom/waze/navigate/AddressPreviewActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mLockHeight:I

    return v0
.end method

.method static synthetic access$9(Lcom/waze/navigate/AddressPreviewActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 119
    iget v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->LS_X_FACTOR:F

    return v0
.end method

.method private callJavaScript(Landroid/webkit/WebView;ILjava/lang/String;)V
    .locals 4
    .parameter "webView"
    .parameter "methodId"
    .parameter "toRun"

    .prologue
    .line 2225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2226
    .local v1, stringBuilder:Ljava/lang/StringBuilder;
    const-string v2, "javascript:try{Android.onResponse("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2227
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2228
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2230
    const-string v2, ")}catch(error){Android.onError(error.message);}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2232
    .local v0, script:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callJavaScript: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/Logger;->d(Ljava/lang/String;)V

    .line 2233
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2234
    return-void
.end method

.method private checkCours(IIIIII)Z
    .locals 1
    .parameter "curHour"
    .parameter "fromHour"
    .parameter "toHour"
    .parameter "curMinute"
    .parameter "fromMinute"
    .parameter "toMinute"

    .prologue
    const/4 v0, 0x1

    .line 2175
    if-ge p1, p3, :cond_1

    if-le p1, p2, :cond_1

    .line 2188
    :cond_0
    :goto_0
    return v0

    .line 2178
    :cond_1
    if-ne p1, p2, :cond_3

    if-ge p1, p3, :cond_3

    .line 2180
    if-ge p4, p5, :cond_0

    .line 2188
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2181
    :cond_3
    if-ne p1, p3, :cond_4

    if-le p1, p2, :cond_4

    .line 2183
    if-ge p4, p6, :cond_2

    goto :goto_0

    .line 2184
    :cond_4
    if-ne p1, p3, :cond_2

    if-ne p1, p2, :cond_2

    .line 2186
    if-ge p4, p6, :cond_2

    if-lt p4, p5, :cond_2

    goto :goto_0
.end method

.method private fillGasPrices()V
    .locals 3

    .prologue
    .line 579
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget v1, v1, Lcom/waze/navigate/AddressItem;->index:I

    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$10;

    invoke-direct {v2, p0}, Lcom/waze/navigate/AddressPreviewActivity$10;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->getProduct(ILcom/waze/navigate/DriveToNativeManager$ProductListener;)V

    .line 653
    return-void
.end method

.method private gotoFindDuplicate()V
    .locals 3

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget v1, Lcom/waze/NativeManager;->UH_SEARCH_VENUES:I

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 1678
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v1, v1, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v1, v1, Lcom/waze/reports/VenueData;->longitude:I

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->latitude:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->venueSearch(II)V

    .line 1679
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    .line 1680
    return-void
.end method

.method private gotoFlagResidential()V
    .locals 8

    .prologue
    .line 1684
    new-instance v4, Lcom/waze/navigate/AddressPreviewActivity$32;

    invoke-direct {v4, p0}, Lcom/waze/navigate/AddressPreviewActivity$32;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    .line 1694
    .local v4, onClickYes:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    .line 1695
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_SURE_Q:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 1696
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_RESIDENTIAL_PLACE_CONFIRM_DIALOG_BODY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1698
    iget-object v5, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_RESIDENTIAL_PLACE_CONFIRM_DIALOG_YES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 1699
    iget-object v6, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_CANCEL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 1694
    invoke-virtual/range {v0 .. v7}, Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1700
    return-void
.end method

.method private gotoIappropreateOrWrongDetails(Z)V
    .locals 4
    .parameter "isInappropriate"

    .prologue
    const/4 v3, 0x0

    .line 1659
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/ifs/ui/EditTextDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1660
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_TITLE_DS:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1661
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_PLACE_INAPPROPRIATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v1

    .line 1660
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1663
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_SUBTITLE_DS:Ljava/lang/String;

    .line 1664
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_TELL_US_MORE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v2

    .line 1663
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1665
    sget-object v2, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_HINT_DS:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1666
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_THIS_PLACE_IS_INAPPROPRIATE_BECAUSE___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v1

    .line 1665
    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1668
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_SINGLE_LINE:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1669
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_MIN_LINES:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1670
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_SPEECH:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1671
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_TYPE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1673
    const/16 v1, 0x6a

    invoke-virtual {p0, v0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1674
    return-void

    .line 1662
    :cond_0
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_PLACE_WRONG:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v1

    goto :goto_0

    .line 1667
    :cond_1
    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_THE_DETAILS_ARE_WRONG_BECAUSE___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v1

    goto :goto_1
.end method

.method private gotoMovedOrClosed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1704
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/ifs/ui/EditTextDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1705
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_TITLE_DS:Ljava/lang/String;

    .line 1706
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_PLACE_CLOSED_MOVED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v2

    .line 1705
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1707
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_SUBTITLE_DS:Ljava/lang/String;

    .line 1708
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_TELL_US_MORE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v2

    .line 1707
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1709
    sget-object v1, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_HINT_DS:Ljava/lang/String;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ADD_COMMENT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2}, Lcom/waze/strings/DisplayStrings;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1710
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_SINGLE_LINE:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1711
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_MIN_LINES:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1712
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_SPEECH:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1713
    sget-object v1, Lcom/waze/ifs/ui/EditTextDialogActivity;->ARG_TYPE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1715
    const/16 v1, 0x6c

    invoke-virtual {p0, v0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1716
    return-void
.end method

.method private logAnalyticsAds(Ljava/lang/String;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 1974
    invoke-static {p1}, Lcom/waze/analytics/Analytics;->logAdsContext(Ljava/lang/String;)V

    .line 1975
    return-void
.end method

.method private refreshView()V
    .locals 74

    .prologue
    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItemList:Ljava/util/ArrayList;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mSelectedItem:I

    if-le v2, v3, :cond_20

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItemList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mSelectedItem:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/navigate/AddressItem;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget v3, v3, Lcom/waze/navigate/AddressItem;->index:I

    invoke-virtual {v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemShownBeforeNavigate(I)V

    .line 666
    :cond_0
    :goto_0
    new-instance v38, Lcom/waze/navigate/AddressPreviewActivity$11;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity$11;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    .line 701
    .local v38, onClickGo:Landroid/view/View$OnClickListener;
    const/16 v39, 0x0

    .line 704
    .local v39, onSaveEventLocation:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mEventAddressItem:Lcom/waze/navigate/AddressItem;

    if-nez v2, :cond_1

    .line 707
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navigate/AddressPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 708
    const-string v3, "CalendarAddressItem"

    .line 707
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/waze/navigate/AddressItem;

    .line 706
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mEventAddressItem:Lcom/waze/navigate/AddressItem;

    .line 712
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mEventAddressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mEventAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getIsValidate()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 713
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getIsValidate()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    .line 714
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v10, v2, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    .line 715
    .local v10, VenueId:Ljava/lang/String;
    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mEventAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v10, v2, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    .line 716
    :cond_4
    if-nez v10, :cond_5

    const-string v10, ""

    .line 717
    :cond_5
    const-string v2, "CALENDAR_OPTIONS"

    const-string v3, "ID|VENUE"

    .line 718
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v5}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 717
    invoke-static {v2, v3, v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    new-instance v39, Lcom/waze/navigate/AddressPreviewActivity$12;

    .end local v39           #onSaveEventLocation:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity$12;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    .line 761
    .restart local v39       #onSaveEventLocation:Landroid/view/View$OnClickListener;
    new-instance v38, Lcom/waze/navigate/AddressPreviewActivity$13;

    .end local v38           #onClickGo:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity$13;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    .line 805
    .end local v10           #VenueId:Ljava/lang/String;
    .restart local v38       #onClickGo:Landroid/view/View$OnClickListener;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_9

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mEventAddressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mEventAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getIsValidate()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 807
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getIsValidate()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    .line 808
    :cond_8
    new-instance v39, Lcom/waze/navigate/AddressPreviewActivity$14;

    .end local v39           #onSaveEventLocation:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity$14;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    .line 851
    .restart local v39       #onSaveEventLocation:Landroid/view/View$OnClickListener;
    new-instance v38, Lcom/waze/navigate/AddressPreviewActivity$15;

    .end local v38           #onClickGo:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity$15;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    .line 869
    .restart local v38       #onClickGo:Landroid/view/View$OnClickListener;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v68

    .line 870
    .local v68, type:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    if-nez v2, :cond_21

    const/16 v18, 0x1

    .line 872
    .local v18, bMiniPreview:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-boolean v2, v2, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    if-eqz v2, :cond_22

    .line 873
    const v2, 0x7f09010e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    :goto_2
    const v2, 0x7f09012b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 879
    .local v34, name:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 880
    const/16 v2, 0x8

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 885
    :goto_3
    const v2, 0x7f09012c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 886
    .local v15, address:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v16

    .line 887
    .local v16, addressDeatils:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->details:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->details:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v3, v3, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->details:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 891
    :cond_a
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 892
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 898
    :goto_4
    const v2, 0x7f09012d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 900
    .local v22, distance:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getDistance()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-boolean v2, v2, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    if-nez v2, :cond_25

    .line 901
    :cond_b
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 907
    :goto_5
    const v2, 0x7f090103

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 908
    .local v36, nowOpen:Landroid/widget/TextView;
    const v2, 0x7f090104

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 909
    .local v35, nowClosed:Landroid/widget/TextView;
    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->numOpeningHours:I

    if-nez v2, :cond_26

    .line 910
    :cond_c
    const/16 v2, 0x8

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 911
    const/16 v2, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 930
    :goto_6
    const v2, 0x7f090132

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v52

    .line 931
    .local v52, sep:Landroid/view/View;
    const v2, 0x7f090133

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v49

    .line 934
    .local v49, promoText:Landroid/view/View;
    const/16 v2, 0x8

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 935
    const/16 v2, 0x8

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 941
    const v2, 0x7f090134

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v63

    .line 942
    .local v63, specialsLayout:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getAdvertiserData()Lcom/waze/navigate/AddressItem$AdvertiserData;

    move-result-object v14

    .line 943
    .local v14, ad:Lcom/waze/navigate/AddressItem$AdvertiserData;
    if-eqz v14, :cond_d

    iget-object v2, v14, Lcom/waze/navigate/AddressItem$AdvertiserData;->url:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, v14, Lcom/waze/navigate/AddressItem$AdvertiserData;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 944
    :cond_d
    const/16 v2, 0x8

    move-object/from16 v0, v63

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    :goto_7
    const v2, 0x7f090137

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v52

    .line 1013
    const v2, 0x7f090138

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v45

    .line 1015
    .local v45, phoneLayout:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getPhone()Ljava/lang/String;

    move-result-object v44

    .line 1016
    .local v44, phone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v0, v2, Lcom/waze/reports/VenueData;->phoneNumber:Ljava/lang/String;

    move-object/from16 v44, v0

    .line 1020
    :cond_e
    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1021
    const/16 v2, 0x8

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    const/16 v2, 0x8

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    :goto_8
    const v2, 0x7f09013c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v52

    .line 1049
    const v2, 0x7f09013d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v60

    .line 1050
    .local v60, siteLayout:Landroid/view/View;
    if-nez v18, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->website:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1051
    :cond_f
    const/16 v2, 0x8

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1052
    const/16 v2, 0x8

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1078
    :goto_9
    const v2, 0x7f090141

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v52

    .line 1079
    const v2, 0x7f090142

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v54

    .line 1080
    .local v54, servicesLayout:Landroid/view/View;
    if-nez v18, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->numServices:I

    if-nez v2, :cond_2f

    .line 1081
    :cond_10
    const/16 v2, 0x8

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1082
    const/16 v2, 0x8

    move-object/from16 v0, v54

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    :cond_11
    const v2, 0x7f090146

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v52

    .line 1112
    const v2, 0x7f090147

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    .line 1113
    .local v40, opHrsLayout:Landroid/view/View;
    if-nez v18, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->numOpeningHours:I

    if-nez v2, :cond_31

    .line 1114
    :cond_12
    const/16 v2, 0x8

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    const/16 v2, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    :cond_13
    const v2, 0x7f09014b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v52

    .line 1139
    const v2, 0x7f09014c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1140
    .local v11, aboutLayout:Landroid/view/View;
    if-nez v18, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->about:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1141
    :cond_14
    const/16 v2, 0x8

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1215
    :goto_a
    const v2, 0x7f090109

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;

    .line 1216
    if-nez v18, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->numImages:I

    if-nez v2, :cond_33

    .line 1217
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    :goto_b
    const v2, 0x7f090107

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    .line 1330
    const v2, 0x7f090108

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mWebViewLoadAnimation:Landroid/widget/ProgressBar;

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getImage()Ljava/lang/Integer;

    move-result-object v30

    .line 1332
    .local v30, img:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v0, v2, Lcom/waze/navigate/AddressItem;->mPreviewIcon:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 1333
    .local v27, icon:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/waze/navigate/AddressPreviewActivity;->mShouldLoadVenue:Z

    move/from16 v17, v0

    .line 1335
    .local v17, bIconSet:Z
    if-nez v17, :cond_16

    if-eqz v27, :cond_16

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 1337
    .local v20, d:Landroid/graphics/drawable/Drawable;
    if-eqz v20, :cond_37

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1340
    const/16 v17, 0x1

    .line 1357
    .end local v20           #d:Landroid/graphics/drawable/Drawable;
    :cond_16
    :goto_c
    if-nez v17, :cond_17

    if-eqz v30, :cond_17

    .line 1358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1360
    const/16 v17, 0x1

    .line 1362
    :cond_17
    if-nez v17, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->hasIcon()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1363
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 1364
    .restart local v20       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v20, :cond_18

    .line 1365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1367
    const/16 v17, 0x1

    .line 1370
    .end local v20           #d:Landroid/graphics/drawable/Drawable;
    :cond_18
    if-nez v17, :cond_19

    .line 1371
    packed-switch v68, :pswitch_data_0

    .line 1396
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    const v3, 0x7f0202fd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1402
    :cond_19
    :goto_d
    const v2, 0x7f090112

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v58

    check-cast v58, Lcom/waze/settings/DrillDownSettingView;

    .line 1403
    .local v58, shareBut:Lcom/waze/settings/DrillDownSettingView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-boolean v2, v2, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    if-eqz v2, :cond_38

    .line 1404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SEND_THIS_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v58

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 1405
    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$23;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/navigate/AddressPreviewActivity$23;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    move-object/from16 v0, v58

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1415
    :goto_e
    const v2, 0x7f090113

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/waze/settings/DrillDownSettingView;

    .line 1416
    .local v24, favBut:Lcom/waze/settings/DrillDownSettingView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-boolean v2, v2, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    if-eqz v2, :cond_3a

    .line 1417
    const/4 v2, 0x5

    move/from16 v0, v68

    if-eq v0, v2, :cond_1a

    const/4 v2, 0x1

    move/from16 v0, v68

    if-eq v0, v2, :cond_1a

    .line 1418
    const/4 v2, 0x3

    move/from16 v0, v68

    if-ne v0, v2, :cond_39

    .line 1420
    :cond_1a
    const v2, 0x7f0202f8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setIcon(I)V

    .line 1421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_REMOVE_FROM_FAVORITES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 1422
    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$24;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/navigate/AddressPreviewActivity$24;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1463
    :goto_f
    const v2, 0x7f090117

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Lcom/waze/settings/DrillDownSettingView;

    .line 1464
    .local v50, removeBut:Lcom/waze/settings/DrillDownSettingView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-boolean v2, v2, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    if-eqz v2, :cond_3b

    .line 1465
    const/16 v2, 0x9

    move/from16 v0, v68

    if-eq v0, v2, :cond_1b

    const/16 v2, 0x8

    move/from16 v0, v68

    if-eq v0, v2, :cond_1b

    const/16 v2, 0xd

    move/from16 v0, v68

    if-ne v0, v2, :cond_3b

    .line 1466
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_REMOVE_FROM_HISTORY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v50

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 1467
    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$26;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/navigate/AddressPreviewActivity$26;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    move-object/from16 v0, v50

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1481
    :goto_10
    const v2, 0x7f090114

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Lcom/waze/settings/DrillDownSettingView;

    .line 1482
    .local v51, saveBut:Lcom/waze/settings/DrillDownSettingView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-boolean v2, v2, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    if-eqz v2, :cond_3c

    if-eqz v39, :cond_3c

    .line 1483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SAVE_EVENT_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 1484
    move-object/from16 v0, v51

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1490
    :goto_11
    const v2, 0x7f090116

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Lcom/waze/settings/DrillDownSettingView;

    .line 1491
    .local v59, showOnMapBut:Lcom/waze/settings/DrillDownSettingView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-boolean v2, v2, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    if-eqz v2, :cond_3d

    .line 1492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SHOW_ON_MAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v59

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 1493
    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$27;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/navigate/AddressPreviewActivity$27;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    move-object/from16 v0, v59

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1510
    :goto_12
    const v2, 0x7f090115

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Lcom/waze/settings/DrillDownSettingView;

    .line 1511
    .local v57, setStartBut:Lcom/waze/settings/DrillDownSettingView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-boolean v2, v2, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    if-eqz v2, :cond_3e

    .line 1512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SET_AS_START_POINT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 1513
    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$28;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/navigate/AddressPreviewActivity$28;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1526
    :goto_13
    const v2, 0x7f090119

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v67

    .line 1528
    .local v67, suggestEdit:Landroid/view/View;
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/mywaze/MyWazeNativeManager;->getInvisibleNTV()Z

    move-result v33

    .line 1530
    .local v33, isinvisible:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-boolean v2, v2, Lcom/waze/reports/VenueData;->bUpdateable:Z

    if-eqz v2, :cond_1c

    .line 1531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-boolean v2, v2, Lcom/waze/reports/VenueData;->bResidence:Z

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-boolean v2, v2, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    if-eqz v2, :cond_1c

    if-eqz v33, :cond_3f

    .line 1532
    :cond_1c
    const/16 v2, 0x8

    move-object/from16 v0, v67

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1554
    :goto_14
    const v2, 0x7f090118

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/waze/settings/DrillDownSettingView;

    .line 1555
    .local v25, flagBut:Lcom/waze/settings/DrillDownSettingView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-boolean v2, v2, Lcom/waze/reports/VenueData;->bResidence:Z

    if-nez v2, :cond_1d

    .line 1556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-boolean v2, v2, Lcom/waze/reports/VenueData;->bUpdateable:Z

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-boolean v2, v2, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    if-nez v2, :cond_40

    .line 1557
    :cond_1d
    const/16 v2, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    .line 1569
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    if-eqz v2, :cond_1f

    .line 1570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->reporter:Ljava/lang/String;

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->reporter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_41

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->updater:Ljava/lang/String;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->updater:Ljava/lang/String;

    .line 1571
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1572
    :cond_1f
    const v2, 0x7f09011d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1573
    const v2, 0x7f090124

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1598
    :goto_16
    return-void

    .line 663
    .end local v11           #aboutLayout:Landroid/view/View;
    .end local v14           #ad:Lcom/waze/navigate/AddressItem$AdvertiserData;
    .end local v15           #address:Landroid/widget/TextView;
    .end local v16           #addressDeatils:Ljava/lang/String;
    .end local v17           #bIconSet:Z
    .end local v18           #bMiniPreview:Z
    .end local v22           #distance:Landroid/widget/TextView;
    .end local v24           #favBut:Lcom/waze/settings/DrillDownSettingView;
    .end local v25           #flagBut:Lcom/waze/settings/DrillDownSettingView;
    .end local v27           #icon:Ljava/lang/String;
    .end local v30           #img:Ljava/lang/Integer;
    .end local v33           #isinvisible:Z
    .end local v34           #name:Landroid/widget/TextView;
    .end local v35           #nowClosed:Landroid/widget/TextView;
    .end local v36           #nowOpen:Landroid/widget/TextView;
    .end local v38           #onClickGo:Landroid/view/View$OnClickListener;
    .end local v39           #onSaveEventLocation:Landroid/view/View$OnClickListener;
    .end local v40           #opHrsLayout:Landroid/view/View;
    .end local v44           #phone:Ljava/lang/String;
    .end local v45           #phoneLayout:Landroid/view/View;
    .end local v49           #promoText:Landroid/view/View;
    .end local v50           #removeBut:Lcom/waze/settings/DrillDownSettingView;
    .end local v51           #saveBut:Lcom/waze/settings/DrillDownSettingView;
    .end local v52           #sep:Landroid/view/View;
    .end local v54           #servicesLayout:Landroid/view/View;
    .end local v57           #setStartBut:Lcom/waze/settings/DrillDownSettingView;
    .end local v58           #shareBut:Lcom/waze/settings/DrillDownSettingView;
    .end local v59           #showOnMapBut:Lcom/waze/settings/DrillDownSettingView;
    .end local v60           #siteLayout:Landroid/view/View;
    .end local v63           #specialsLayout:Landroid/view/View;
    .end local v67           #suggestEdit:Landroid/view/View;
    .end local v68           #type:I
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget v3, v3, Lcom/waze/navigate/AddressItem;->index:I

    invoke-virtual {v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemShownBeforeNavigate(I)V

    goto/16 :goto_0

    .line 870
    .restart local v38       #onClickGo:Landroid/view/View$OnClickListener;
    .restart local v39       #onSaveEventLocation:Landroid/view/View$OnClickListener;
    .restart local v68       #type:I
    :cond_21
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 875
    .restart local v18       #bMiniPreview:Z
    :cond_22
    const v2, 0x7f09010e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 882
    .restart local v34       #name:Landroid/widget/TextView;
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 894
    .restart local v15       #address:Landroid/widget/TextView;
    .restart local v16       #addressDeatils:Ljava/lang/String;
    :cond_24
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 895
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 903
    .restart local v22       #distance:Landroid/widget/TextView;
    :cond_25
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getDistance()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 913
    .restart local v35       #nowClosed:Landroid/widget/TextView;
    .restart local v36       #nowOpen:Landroid/widget/TextView;
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_NOW_OPEN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_NOW_CLOSED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    const/16 v32, 0x0

    .line 917
    .local v32, isOpen:Z
    const/16 v26, 0x0

    .local v26, i:I
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->numOpeningHours:I

    move/from16 v0, v26

    if-lt v0, v2, :cond_27

    .line 923
    :goto_18
    if-eqz v32, :cond_29

    const/4 v2, 0x0

    :goto_19
    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 924
    if-eqz v32, :cond_2a

    const/16 v2, 0x8

    :goto_1a
    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 918
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->openingHours:[Lcom/waze/reports/OpeningHours;

    aget-object v2, v2, v26

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->isOpen(Lcom/waze/reports/OpeningHours;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 919
    const/16 v32, 0x1

    .line 920
    goto :goto_18

    .line 917
    :cond_28
    add-int/lit8 v26, v26, 0x1

    goto :goto_17

    .line 923
    :cond_29
    const/16 v2, 0x8

    goto :goto_19

    .line 924
    :cond_2a
    const/4 v2, 0x0

    goto :goto_1a

    .line 946
    .end local v26           #i:I
    .end local v32           #isOpen:Z
    .restart local v14       #ad:Lcom/waze/navigate/AddressItem$AdvertiserData;
    .restart local v49       #promoText:Landroid/view/View;
    .restart local v52       #sep:Landroid/view/View;
    .restart local v63       #specialsLayout:Landroid/view/View;
    :cond_2b
    const/4 v2, 0x0

    move-object/from16 v0, v63

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 948
    const v2, 0x7f090136

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    .line 949
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SPECIALS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 948
    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/navigate/AddressPreviewActivity$16;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    invoke-static {v2}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 958
    const v2, 0x7f090135

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/WzWebView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mWebView:Lcom/waze/WzWebView;

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mWebView:Lcom/waze/WzWebView;

    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/waze/WzWebView;->setFlags(I)V

    .line 960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mWebView:Lcom/waze/WzWebView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mSpecialUrlOverride:Lcom/waze/WzWebView$WebViewUrlOverride;

    invoke-virtual {v2, v3}, Lcom/waze/WzWebView;->setUrlOverride(Lcom/waze/WzWebView$WebViewUrlOverride;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mWebView:Lcom/waze/WzWebView;

    new-instance v3, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;-><init>(Lcom/waze/navigate/AddressPreviewActivity;Lcom/waze/navigate/AddressPreviewActivity$WebViewInterface;)V

    const-string v4, "Android"

    invoke-virtual {v2, v3, v4}, Lcom/waze/WzWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mWebView:Lcom/waze/WzWebView;

    new-instance v3, Lcom/waze/navigate/AddressPreviewActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/waze/navigate/AddressPreviewActivity$17;-><init>(Lcom/waze/navigate/AddressPreviewActivity;Lcom/waze/navigate/AddressItem$AdvertiserData;)V

    invoke-virtual {v2, v3}, Lcom/waze/WzWebView;->setPageProgressCallback(Lcom/waze/WzWebView$WebViewPageProgressCallback;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mWebView:Lcom/waze/WzWebView;

    iget-object v3, v14, Lcom/waze/navigate/AddressItem$AdvertiserData;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/waze/WzWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1024
    .restart local v44       #phone:Ljava/lang/String;
    .restart local v45       #phoneLayout:Landroid/view/View;
    :cond_2c
    const/4 v2, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    const/4 v2, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    const v2, 0x7f09013a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/TextView;

    .line 1028
    .local v46, phoneTitle:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PHONE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    const v2, 0x7f09013b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    .line 1031
    .local v47, phonetext:Landroid/widget/TextView;
    new-instance v69, Landroid/text/SpannableString;

    move-object/from16 v0, v69

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1032
    .local v69, underline_phone:Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/4 v3, 0x0

    invoke-virtual/range {v69 .. v69}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v69

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1033
    move-object/from16 v0, v47

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/navigate/AddressPreviewActivity$18;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 1054
    .end local v46           #phoneTitle:Landroid/widget/TextView;
    .end local v47           #phonetext:Landroid/widget/TextView;
    .end local v69           #underline_phone:Landroid/text/SpannableString;
    .restart local v60       #siteLayout:Landroid/view/View;
    :cond_2d
    const v2, 0x7f09013f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v62

    check-cast v62, Landroid/widget/TextView;

    .line 1055
    .local v62, siteTitle:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_WEBSITE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v62

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    const v2, 0x7f090140

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v61

    check-cast v61, Landroid/widget/TextView;

    .line 1057
    .local v61, siteText:Landroid/widget/TextView;
    const/4 v2, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    const/4 v2, 0x0

    move-object/from16 v0, v60

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v0, v2, Lcom/waze/reports/VenueData;->website:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1061
    .local v21, displayWebsite:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->websiteDisplayText:Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->websiteDisplayText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v0, v2, Lcom/waze/reports/VenueData;->websiteDisplayText:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1066
    :cond_2e
    new-instance v70, Landroid/text/SpannableString;

    move-object/from16 v0, v70

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1067
    .local v70, underline_site:Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/4 v3, 0x0

    invoke-virtual/range {v70 .. v70}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, v70

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1068
    move-object/from16 v0, v61

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$19;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/navigate/AddressPreviewActivity$19;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    move-object/from16 v0, v61

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    .line 1084
    .end local v21           #displayWebsite:Ljava/lang/String;
    .end local v61           #siteText:Landroid/widget/TextView;
    .end local v62           #siteTitle:Landroid/widget/TextView;
    .end local v70           #underline_site:Landroid/text/SpannableString;
    .restart local v54       #servicesLayout:Landroid/view/View;
    :cond_2f
    const v2, 0x7f090144

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/TextView;

    .line 1085
    .local v56, servicesTitle:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SERVICES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    const/4 v2, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    const/4 v2, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    const v2, 0x7f090145

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Landroid/widget/LinearLayout;

    .line 1090
    .local v55, servicesList:Landroid/widget/LinearLayout;
    invoke-virtual/range {v55 .. v55}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1092
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->numServices:I

    move/from16 v0, v26

    if-ge v0, v2, :cond_11

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->services:[Ljava/lang/String;

    aget-object v2, v2, v26

    invoke-static {v2}, Lcom/waze/reports/EditPlaceServicesFragment;->getServiceById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 1096
    .local v65, srvName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->services:[Ljava/lang/String;

    aget-object v2, v2, v26

    invoke-static {v2}, Lcom/waze/reports/EditPlaceServicesFragment;->getServiceIconById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    .line 1098
    .local v64, srvIcon:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navigate/AddressPreviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v31

    .line 1099
    .local v31, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030017

    const/4 v3, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v55

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v53

    .line 1100
    .local v53, serviceView:Landroid/view/View;
    const v2, 0x7f090162

    move-object/from16 v0, v53

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v65

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v64 .. v64}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 1102
    .local v28, iconDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v28, :cond_30

    .line 1103
    const v2, 0x7f090161

    move-object/from16 v0, v53

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1104
    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1107
    :cond_30
    move-object/from16 v0, v55

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1092
    add-int/lit8 v26, v26, 0x1

    goto :goto_1b

    .line 1117
    .end local v26           #i:I
    .end local v28           #iconDrawable:Landroid/graphics/drawable/Drawable;
    .end local v31           #inflater:Landroid/view/LayoutInflater;
    .end local v53           #serviceView:Landroid/view/View;
    .end local v55           #servicesList:Landroid/widget/LinearLayout;
    .end local v56           #servicesTitle:Landroid/widget/TextView;
    .end local v64           #srvIcon:Ljava/lang/String;
    .end local v65           #srvName:Ljava/lang/String;
    .restart local v40       #opHrsLayout:Landroid/view/View;
    :cond_31
    const/4 v2, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    const/4 v2, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    const v2, 0x7f090149

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 1121
    .local v42, opHrsTitle:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_OPENING_HOURS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    const v2, 0x7f09014a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/LinearLayout;

    .line 1124
    .local v41, opHrsList:Landroid/widget/LinearLayout;
    invoke-virtual/range {v41 .. v41}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1126
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->numOpeningHours:I

    move/from16 v0, v26

    if-ge v0, v2, :cond_13

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->openingHours:[Lcom/waze/reports/OpeningHours;

    aget-object v37, v2, v26

    .line 1128
    .local v37, oh:Lcom/waze/reports/OpeningHours;
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navigate/AddressPreviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v31

    .line 1129
    .restart local v31       #inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030016

    const/4 v3, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v43

    .line 1130
    .local v43, opHrsView:Landroid/view/View;
    const v2, 0x7f09015e

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1131
    const-string v3, "\n"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Lcom/waze/reports/OpeningHours;->getDaysString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1130
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    const v2, 0x7f090160

    move-object/from16 v0, v43

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1133
    invoke-virtual/range {v37 .. v37}, Lcom/waze/reports/OpeningHours;->getHoursString()Ljava/lang/String;

    move-result-object v3

    .line 1132
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1126
    add-int/lit8 v26, v26, 0x1

    goto :goto_1c

    .line 1144
    .end local v26           #i:I
    .end local v31           #inflater:Landroid/view/LayoutInflater;
    .end local v37           #oh:Lcom/waze/reports/OpeningHours;
    .end local v41           #opHrsList:Landroid/widget/LinearLayout;
    .end local v42           #opHrsTitle:Landroid/widget/TextView;
    .end local v43           #opHrsView:Landroid/view/View;
    .restart local v11       #aboutLayout:Landroid/view/View;
    :cond_32
    const/4 v2, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1147
    const v2, 0x7f09014e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1148
    .local v13, aboutTitle:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ABOUT2:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    const v2, 0x7f09014f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1151
    .local v12, aboutText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->about:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Lcom/waze/navigate/AddressPreviewActivity$20;-><init>(Lcom/waze/navigate/AddressPreviewActivity;Landroid/widget/TextView;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a

    .line 1219
    .end local v12           #aboutText:Landroid/widget/TextView;
    .end local v13           #aboutTitle:Landroid/widget/TextView;
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1221
    const v2, 0x7f09010a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->numImages:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_34

    const/4 v2, 0x0

    .line 1221
    :goto_1d
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1224
    const v2, 0x7f09010d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/ImageView;

    .line 1225
    .local v48, placeImage:Landroid/widget/ImageView;
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v3, v3, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v3, v3, Lcom/waze/reports/VenueData;->numImages:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mImageArray:Ljava/util/ArrayList;

    .line 1226
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->numImages:I

    move/from16 v0, v26

    if-lt v0, v2, :cond_35

    .line 1233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mImageArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/waze/reports/PhotoPagerSection$VenueImage;

    .line 1236
    .local v72, vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;
    const v2, 0x7f09010c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/waze/view/map/ProgressAnimation;

    .line 1237
    .local v6, pa:Lcom/waze/view/map/ProgressAnimation;
    sget-object v2, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    move-object/from16 v0, v72

    iget-object v3, v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->imageThumbnailUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/waze/utils/ImageRepository;->isThumbnailCached(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1238
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 1243
    :goto_1f
    sget-object v2, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    move-object/from16 v0, v72

    iget-object v3, v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->imageThumbnailUri:Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v5, v48

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 1245
    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$21;

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v2, v0, v1}, Lcom/waze/navigate/AddressPreviewActivity$21;-><init>(Lcom/waze/navigate/AddressPreviewActivity;Landroid/widget/ImageView;)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_b

    .line 1222
    .end local v6           #pa:Lcom/waze/view/map/ProgressAnimation;
    .end local v26           #i:I
    .end local v48           #placeImage:Landroid/widget/ImageView;
    .end local v72           #vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;
    :cond_34
    const/4 v2, 0x4

    goto :goto_1d

    .line 1227
    .restart local v26       #i:I
    .restart local v48       #placeImage:Landroid/widget/ImageView;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/AddressPreviewActivity;->mImageArray:Ljava/util/ArrayList;

    move-object/from16 v73, v0

    new-instance v2, Lcom/waze/reports/PhotoPagerSection$VenueImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v3, v3, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v3, v3, v26

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v4, v4, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v4, v4, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    aget-object v4, v4, v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v5, v5, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v5, v5, Lcom/waze/reports/VenueData;->imageReporters:[Ljava/lang/String;

    aget-object v5, v5, v26

    .line 1229
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v7, v7, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v7, v7, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    aget-object v6, v7, v26

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v7, v7, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v7, v7, Lcom/waze/reports/VenueData;->imageLiked:[Z

    aget-boolean v7, v7, v26

    .line 1230
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v8, v8, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v8, v8, Lcom/waze/reports/VenueData;->imageByMe:[Z

    aget-boolean v8, v8, v26

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/waze/reports/PhotoPagerSection$VenueImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1227
    move-object/from16 v0, v73

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1e

    .line 1240
    .restart local v6       #pa:Lcom/waze/view/map/ProgressAnimation;
    .restart local v72       #vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;
    :cond_36
    invoke-virtual {v6}, Lcom/waze/view/map/ProgressAnimation;->start()V

    goto :goto_1f

    .line 1342
    .end local v6           #pa:Lcom/waze/view/map/ProgressAnimation;
    .end local v26           #i:I
    .end local v48           #placeImage:Landroid/widget/ImageView;
    .end local v72           #vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;
    .restart local v17       #bIconSet:Z
    .restart local v20       #d:Landroid/graphics/drawable/Drawable;
    .restart local v27       #icon:Ljava/lang/String;
    .restart local v30       #img:Ljava/lang/Integer;
    :cond_37
    sget-object v2, Lcom/waze/ResourceDownloadType;->RES_DOWNLOAD_IMAGE_JAVA:Lcom/waze/ResourceDownloadType;

    invoke-virtual {v2}, Lcom/waze/ResourceDownloadType;->getValue()I

    move-result v2

    .line 1343
    new-instance v3, Lcom/waze/navigate/AddressPreviewActivity$22;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v3, v0, v1}, Lcom/waze/navigate/AddressPreviewActivity$22;-><init>(Lcom/waze/navigate/AddressPreviewActivity;Ljava/lang/String;)V

    .line 1342
    move-object/from16 v0, v27

    invoke-static {v2, v0, v3}, Lcom/waze/ResManager;->downloadRes(ILjava/lang/String;Lcom/waze/DownloadResCallback;)V

    goto/16 :goto_c

    .line 1373
    .end local v20           #d:Landroid/graphics/drawable/Drawable;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v0, v2, Lcom/waze/navigate/AddressItem;->mImageURL:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 1374
    .local v29, imageUrl:Ljava/lang/String;
    if-eqz v29, :cond_19

    .line 1375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    const v3, 0x7f0201d2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1377
    sget-object v2, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v3, v1}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/waze/ifs/ui/ActivityBase;)V

    goto/16 :goto_d

    .line 1381
    .end local v29           #imageUrl:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 1384
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    const v3, 0x7f0203cd

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 1387
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    const v3, 0x7f020194

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 1390
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    const v3, 0x7f02046a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 1393
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLogoImg:Landroid/widget/ImageView;

    const v3, 0x7f02009f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    .line 1412
    .restart local v58       #shareBut:Lcom/waze/settings/DrillDownSettingView;
    :cond_38
    const/16 v2, 0x8

    move-object/from16 v0, v58

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto/16 :goto_e

    .line 1447
    .restart local v24       #favBut:Lcom/waze/settings/DrillDownSettingView;
    :cond_39
    const v2, 0x7f0202f8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setIcon(I)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ADD_TO_FAVORITES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 1449
    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$25;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/navigate/AddressPreviewActivity$25;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_f

    .line 1459
    :cond_3a
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto/16 :goto_f

    .line 1477
    .restart local v50       #removeBut:Lcom/waze/settings/DrillDownSettingView;
    :cond_3b
    const/16 v2, 0x8

    move-object/from16 v0, v50

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto/16 :goto_10

    .line 1486
    .restart local v51       #saveBut:Lcom/waze/settings/DrillDownSettingView;
    :cond_3c
    const/16 v2, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto/16 :goto_11

    .line 1506
    .restart local v59       #showOnMapBut:Lcom/waze/settings/DrillDownSettingView;
    :cond_3d
    const/16 v2, 0x8

    move-object/from16 v0, v59

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto/16 :goto_12

    .line 1523
    .restart local v57       #setStartBut:Lcom/waze/settings/DrillDownSettingView;
    :cond_3e
    const/16 v2, 0x8

    move-object/from16 v0, v57

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    goto/16 :goto_13

    .line 1534
    .restart local v33       #isinvisible:Z
    .restart local v67       #suggestEdit:Landroid/view/View;
    :cond_3f
    const/4 v2, 0x0

    move-object/from16 v0, v67

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1536
    const v2, 0x7f09011a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v66

    check-cast v66, Lcom/waze/settings/DrillDownSettingView;

    .line 1537
    .local v66, suggestBut:Lcom/waze/settings/DrillDownSettingView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SUGGEST_AN_EDIT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v66

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 1538
    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$29;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/navigate/AddressPreviewActivity$29;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    move-object/from16 v0, v66

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1548
    const v2, 0x7f09011b

    move-object/from16 v0, v67

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    const-string v3, "30"

    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1549
    const v2, 0x7f09011c

    move-object/from16 v0, v67

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    .line 1550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_POINTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 1559
    .end local v66           #suggestBut:Lcom/waze/settings/DrillDownSettingView;
    .restart local v25       #flagBut:Lcom/waze/settings/DrillDownSettingView;
    :cond_40
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setVisibility(I)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_REPORT_A_PROBLEM:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 1561
    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$30;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/navigate/AddressPreviewActivity$30;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_15

    .line 1575
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->reporter:Ljava/lang/String;

    if-eqz v2, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->reporter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1576
    :cond_42
    const v2, 0x7f090125

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1577
    const v2, 0x7f09011e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1586
    :goto_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->updater:Ljava/lang/String;

    if-eqz v2, :cond_43

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->updater:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1587
    :cond_43
    const v2, 0x7f090128

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1588
    const v2, 0x7f090121

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_16

    .line 1579
    :cond_44
    const v2, 0x7f090120

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 1580
    .local v19, createdMood:Landroid/widget/ImageView;
    const v2, 0x7f090126

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    .line 1581
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_CREATED_BY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 1580
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1582
    const v2, 0x7f090127

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v3, v3, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->reporter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->reporterMood:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 1584
    .local v23, drawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_20

    .line 1590
    .end local v19           #createdMood:Landroid/widget/ImageView;
    .end local v23           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_45
    const v2, 0x7f090123

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v71

    check-cast v71, Landroid/widget/ImageView;

    .line 1591
    .local v71, updatedMood:Landroid/widget/ImageView;
    const v2, 0x7f090129

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    .line 1592
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_LAST_UPDATED_BY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 1591
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1593
    const v2, 0x7f09012a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v3, v3, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->updater:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->updaterMood:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 1595
    .restart local v23       #drawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v71

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_16

    .line 1371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setAddressOptionsView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2244
    iget-boolean v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mbAddressOptionsViewSet:Z

    if-nez v0, :cond_0

    .line 2245
    iput-boolean v4, p0, Lcom/waze/navigate/AddressPreviewActivity;->mbAddressOptionsViewSet:Z

    .line 2246
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget v1, v1, Lcom/waze/navigate/AddressItem;->index:I

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2247
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2246
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->setAddressOptionsView(IIIZ)V

    .line 2249
    :cond_0
    return-void
.end method

.method private setUpActivity()V
    .locals 18

    .prologue
    .line 289
    const v3, 0x7f030012

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->setContentView(I)V

    .line 291
    const v3, 0x7f090058

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/waze/view/title/TitleBar;

    .line 292
    .local v17, titleBar:Lcom/waze/view/title/TitleBar;
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PREVIEW:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 293
    invoke-virtual/range {v17 .. v17}, Lcom/waze/view/title/TitleBar;->bringToFront()V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navigate/AddressPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 297
    const-string v4, "AddressItemList"

    .line 296
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 295
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItemList:Ljava/util/ArrayList;

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navigate/AddressPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "AddressItemSelected"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mSelectedItem:I

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItemList:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navigate/AddressPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "AddressItem"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/waze/navigate/AddressItem;

    .line 301
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    .line 307
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navigate/AddressPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "AddressItem"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/waze/navigate/AddressItem;

    .line 306
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mEventAddressItem:Lcom/waze/navigate/AddressItem;

    .line 309
    const v3, 0x7f090101

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;

    .line 310
    const v3, 0x7f090102

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mMapMask:Landroid/view/View;

    .line 311
    const v3, 0x7f0900ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/MapView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mMapView:Lcom/waze/MapView;

    .line 312
    const v3, 0x7f0900a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/ifs/ui/ObservableScrollView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navigate/AddressPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v9, v3, Landroid/content/res/Configuration;->orientation:I

    .line 316
    .local v9, display_mode:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-boolean v3, v3, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    if-eqz v3, :cond_4

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mMapView:Lcom/waze/MapView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v3, v4}, Lcom/waze/MapView;->setNativeCanvasReadyEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mMapView:Lcom/waze/MapView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/waze/MapView;->setHandleTouch(Z)V

    .line 320
    const/4 v3, 0x1

    if-ne v9, v3, :cond_3

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navigate/AddressPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v10, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 322
    .local v10, height:I
    const/high16 v3, 0x4234

    move-object/from16 v0, p0

    iget v4, v0, Lcom/waze/navigate/AddressPreviewActivity;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v3, v10, v3

    .line 323
    const/high16 v4, 0x4325

    move-object/from16 v0, p0

    iget v5, v0, Lcom/waze/navigate/AddressPreviewActivity;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    .line 322
    move-object/from16 v0, p0

    iput v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mFrameHeight:I

    .line 324
    move-object/from16 v0, p0

    iget v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mFrameHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x42f0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/waze/navigate/AddressPreviewActivity;->mDensity:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLockHeight:I

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/waze/navigate/AddressPreviewActivity;->mFrameHeight:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 329
    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/waze/navigate/AddressPreviewActivity;->mLockHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/waze/navigate/AddressPreviewActivity;->mDensity:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/waze/navigate/AddressPreviewActivity;->mFrameHeight:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;-><init>(Lcom/waze/navigate/AddressPreviewActivity;IFILcom/waze/ifs/ui/ObservableScrollView;Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;)V

    .line 330
    .local v2, scrollAndTouchListener:Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;

    invoke-virtual {v3, v2}, Lcom/waze/ifs/ui/ObservableScrollView;->setOnScrollListener(Lcom/waze/ifs/ui/ObservableScrollView$OnScrollListener;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;

    invoke-virtual {v3, v2}, Lcom/waze/ifs/ui/ObservableScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;

    new-instance v4, Lcom/waze/navigate/AddressPreviewActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/waze/navigate/AddressPreviewActivity$6;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    invoke-virtual {v3, v4}, Lcom/waze/ifs/ui/ObservableScrollView;->post(Ljava/lang/Runnable;)Z

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;

    new-instance v4, Lcom/waze/navigate/AddressPreviewActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/waze/navigate/AddressPreviewActivity$7;-><init>(Lcom/waze/navigate/AddressPreviewActivity;Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v3}, Lcom/waze/MapView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/waze/navigate/AddressPreviewActivity;->mFrameHeight:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 560
    .end local v2           #scrollAndTouchListener:Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;
    .end local v10           #height:I
    :goto_1
    const v3, 0x7f09012e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 561
    const v3, 0x7f09012f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 562
    const v3, 0x7f090130

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 563
    const v3, 0x7f090131

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v3, v3, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v3, v3, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v3, v3, Lcom/waze/reports/VenueData;->numProducts:I

    if-lez v3, :cond_0

    .line 565
    invoke-direct/range {p0 .. p0}, Lcom/waze/navigate/AddressPreviewActivity;->fillGasPrices()V

    .line 569
    :cond_0
    const v3, 0x7f090111

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/waze/settings/SettingsTitleText;

    .line 570
    .local v16, title:Lcom/waze/settings/SettingsTitleText;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_ACTIONS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-boolean v3, v3, Lcom/waze/navigate/AddressItem;->mIsNavigable:Z

    if-nez v3, :cond_1

    .line 572
    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/waze/settings/SettingsTitleText;->setVisibility(I)V

    .line 575
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/waze/navigate/AddressPreviewActivity;->refreshView()V

    .line 576
    return-void

    .line 304
    .end local v9           #display_mode:I
    .end local v16           #title:Lcom/waze/settings/SettingsTitleText;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItemList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/waze/navigate/AddressPreviewActivity;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/navigate/AddressItem;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    goto/16 :goto_0

    .line 358
    .restart local v9       #display_mode:I
    :cond_3
    const/high16 v3, 0x4382

    move-object/from16 v0, p0

    iget v4, v0, Lcom/waze/navigate/AddressPreviewActivity;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I

    .line 360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mMapView:Lcom/waze/MapView;

    new-instance v4, Lcom/waze/navigate/AddressPreviewActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/waze/navigate/AddressPreviewActivity$8;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    invoke-virtual {v3, v4}, Lcom/waze/MapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 440
    const v3, 0x7f09010f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 441
    .local v15, right:Landroid/view/View;
    new-instance v3, Lcom/waze/navigate/AddressPreviewActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/waze/navigate/AddressPreviewActivity$9;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    invoke-virtual {v15, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    .line 526
    .end local v15           #right:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mMapView:Lcom/waze/MapView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/waze/MapView;->setVisibility(I)V

    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 529
    const/4 v3, 0x1

    if-ne v9, v3, :cond_5

    .line 530
    const v3, 0x7f090106

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 531
    .local v12, logoFrame:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 532
    .local v14, p:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x0

    const/high16 v4, 0x40a0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/waze/navigate/AddressPreviewActivity;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v14, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 533
    invoke-virtual {v12, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    const v3, 0x7f090109

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 536
    .local v11, imagesFrame:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .end local v14           #p:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 537
    .restart local v14       #p:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x0

    const/high16 v4, 0x40e0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/waze/navigate/AddressPreviewActivity;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v14, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 538
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 539
    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 540
    const/16 v3, 0xa

    invoke-virtual {v14, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 541
    const/16 v3, 0xb

    invoke-virtual {v14, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 542
    invoke-virtual {v11, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    const v3, 0x7f090100

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 545
    .local v13, mapWidgets:Landroid/view/View;
    const-string v3, "#f7feff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 547
    .end local v11           #imagesFrame:Landroid/view/View;
    .end local v12           #logoFrame:Landroid/view/View;
    .end local v13           #mapWidgets:Landroid/view/View;
    .end local v14           #p:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/ObservableScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 549
    const v3, 0x7f090109

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 550
    .restart local v11       #imagesFrame:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 551
    .restart local v14       #p:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x4270

    move-object/from16 v0, p0

    iget v6, v0, Lcom/waze/navigate/AddressPreviewActivity;->mDensity:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v14, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 552
    const/4 v3, 0x6

    const v4, 0x7f0900a5

    invoke-virtual {v14, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 553
    invoke-virtual {v11, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    const v3, 0x7f09010f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 556
    .restart local v15       #right:Landroid/view/View;
    const/16 v3, 0x8

    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private thanksForReport()V
    .locals 3

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    .line 1720
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_REPORT_PLACE_THANK_YOU:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flag_verified"

    .line 1719
    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->OpenProgressIconPopup(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    new-instance v0, Lcom/waze/navigate/AddressPreviewActivity$33;

    invoke-direct {v0, p0}, Lcom/waze/navigate/AddressPreviewActivity$33;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    .line 1728
    const-wide/16 v1, 0xfa0

    .line 1722
    invoke-virtual {p0, v0, v1, v2}, Lcom/waze/navigate/AddressPreviewActivity;->postDelayed(Ljava/lang/Runnable;J)V

    .line 1729
    return-void
.end method

.method private unsetAddressOptionsView()V
    .locals 1

    .prologue
    .line 2237
    iget-boolean v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mbAddressOptionsViewSet:Z

    if-eqz v0, :cond_0

    .line 2238
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetAddressOptionsView()V

    .line 2239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mbAddressOptionsViewSet:Z

    .line 2241
    :cond_0
    return-void
.end method


# virtual methods
.method public getAddressItem()Lcom/waze/navigate/AddressItem;
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    return-object v0
.end method

.method public isOpen(Lcom/waze/reports/OpeningHours;)Z
    .locals 18
    .parameter "oh"

    .prologue
    .line 2118
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/waze/reports/OpeningHours;->from:Ljava/lang/String;

    .line 2119
    .local v15, from:Ljava/lang/String;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v15, "00:00"

    .line 2120
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/waze/reports/OpeningHours;->to:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2121
    .local v17, to:Ljava/lang/String;
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v17, "24:00"

    .line 2123
    :cond_3
    const/4 v1, 0x0

    const/16 v8, 0x3a

    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v15, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2124
    .local v3, fromHour:I
    const/4 v1, 0x0

    const/16 v8, 0x3a

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2126
    .local v4, toHour:I
    if-gt v3, v4, :cond_5

    .line 2128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v8, 0x7

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v16, v1, -0x1

    .line 2129
    .local v16, i:I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/waze/reports/OpeningHours;->days:[I

    aget v1, v1, v16

    if-eqz v1, :cond_8

    .line 2131
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2133
    const/4 v1, 0x1

    .line 2170
    :goto_0
    return v1

    .line 2136
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2137
    .local v2, curHour:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2138
    .local v5, curMinute:I
    const/16 v1, 0x3a

    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2139
    .local v6, fromMinute:I
    const/16 v1, 0x3a

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .local v7, toMinute:I
    move-object/from16 v1, p0

    .line 2141
    invoke-direct/range {v1 .. v7}, Lcom/waze/navigate/AddressPreviewActivity;->checkCours(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_0

    .line 2146
    .end local v2           #curHour:I
    .end local v5           #curMinute:I
    .end local v6           #fromMinute:I
    .end local v7           #toMinute:I
    .end local v16           #i:I
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2147
    .restart local v2       #curHour:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v8, 0x7

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v16, v1, -0x1

    .line 2148
    .restart local v16       #i:I
    if-gt v2, v4, :cond_6

    .line 2150
    add-int/lit8 v1, v16, 0x6

    rem-int/lit8 v16, v1, 0x7

    .line 2151
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/waze/reports/OpeningHours;->days:[I

    aget v1, v1, v16

    if-eqz v1, :cond_8

    .line 2153
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2154
    .restart local v5       #curMinute:I
    const/16 v1, 0x3a

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2156
    .restart local v7       #toMinute:I
    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v9, v2

    move v11, v4

    move v12, v5

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/waze/navigate/AddressPreviewActivity;->checkCours(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2158
    .end local v5           #curMinute:I
    .end local v7           #toMinute:I
    :cond_6
    if-lt v2, v3, :cond_8

    .line 2159
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/waze/reports/OpeningHours;->days:[I

    aget v1, v1, v16

    if-eqz v1, :cond_8

    .line 2161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2162
    .restart local v5       #curMinute:I
    const/16 v1, 0x3a

    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2163
    .restart local v6       #fromMinute:I
    const/16 v1, 0x3a

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2165
    .restart local v7       #toMinute:I
    const/16 v11, 0x18

    const/4 v14, 0x0

    move-object/from16 v8, p0

    move v9, v2

    move v10, v3

    move v12, v5

    move v13, v6

    invoke-direct/range {v8 .. v14}, Lcom/waze/navigate/AddressPreviewActivity;->checkCours(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2166
    :cond_7
    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v9, v2

    move v11, v4

    move v12, v5

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/waze/navigate/AddressPreviewActivity;->checkCours(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2170
    .end local v2           #curHour:I
    .end local v5           #curMinute:I
    .end local v6           #fromMinute:I
    .end local v7           #toMinute:I
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method protected myHandleMessage(Landroid/os/Message;)Z
    .locals 17
    .parameter "msg"

    .prologue
    .line 1783
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_ETA:I

    if-ne v1, v2, :cond_0

    .line 1784
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    .line 1785
    .local v11, b:Landroid/os/Bundle;
    const-string v1, "provider"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "distance"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/navigate/AddressPreviewActivity;->onUpdateEta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    const/4 v1, 0x1

    .line 1868
    .end local v11           #b:Landroid/os/Bundle;
    :goto_0
    return v1

    .line 1788
    :cond_0
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sget v2, Lcom/waze/NativeManager;->UH_SEARCH_VENUES:I

    if-ne v1, v2, :cond_7

    .line 1789
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    .line 1790
    .restart local v11       #b:Landroid/os/Bundle;
    const-string v1, "venue_data"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, [Lcom/waze/reports/VenueData;

    .line 1791
    .local v14, possibleVenues:[Lcom/waze/reports/VenueData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget v2, Lcom/waze/NativeManager;->UH_SEARCH_VENUES:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v1, v2, v3}, Lcom/waze/NativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 1792
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 1794
    if-eqz v14, :cond_1

    array-length v1, v14

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1796
    :cond_2
    new-instance v13, Landroid/content/Intent;

    const-class v1, Lcom/waze/ifs/ui/OmniSelectionActivity;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1797
    .local v13, intent:Landroid/content/Intent;
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_TITLE:Ljava/lang/String;

    .line 1798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PLACE_DUPLICATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 1797
    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1799
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_EDIT_BOX_HINT:Ljava/lang/String;

    .line 1800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_PLACE_TO_MERGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 1799
    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1802
    array-length v1, v14

    new-array v10, v1, [Lcom/waze/settings/SettingsValue;

    .line 1804
    .local v10, argValues:[Lcom/waze/settings/SettingsValue;
    const/4 v12, 0x0

    .line 1805
    .local v12, i:I
    array-length v2, v14

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_4

    .line 1813
    array-length v1, v10

    if-ge v12, v1, :cond_3

    .line 1814
    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    .end local v10           #argValues:[Lcom/waze/settings/SettingsValue;
    check-cast v10, [Lcom/waze/settings/SettingsValue;

    .line 1817
    .restart local v10       #argValues:[Lcom/waze/settings/SettingsValue;
    :cond_3
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_VALUES:Ljava/lang/String;

    invoke-virtual {v13, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1818
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_SEARCH:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1819
    sget-object v1, Lcom/waze/ifs/ui/OmniSelectionActivity;->ARG_FILTER:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1820
    const/16 v1, 0x6b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v1}, Lcom/waze/navigate/AddressPreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1821
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1805
    :cond_4
    aget-object v15, v14, v1

    .line 1806
    .local v15, vd:Lcom/waze/reports/VenueData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v3, v3, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget-object v4, v15, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1805
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1807
    :cond_6
    iget-object v3, v15, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v15, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1809
    new-instance v3, Lcom/waze/settings/SettingsValue;

    iget-object v4, v15, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget-object v5, v15, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v3, v10, v12

    .line 1810
    aget-object v3, v10, v12

    invoke-virtual {v15}, Lcom/waze/reports/VenueData;->getAddressString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/waze/settings/SettingsValue;->display2:Ljava/lang/String;

    .line 1811
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1823
    .end local v10           #argValues:[Lcom/waze/settings/SettingsValue;
    .end local v11           #b:Landroid/os/Bundle;
    .end local v12           #i:I
    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #possibleVenues:[Lcom/waze/reports/VenueData;
    .end local v15           #vd:Lcom/waze/reports/VenueData;
    :cond_7
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    if-ne v1, v2, :cond_f

    .line 1824
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/navigate/AddressPreviewActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 1826
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    .line 1827
    .restart local v11       #b:Landroid/os/Bundle;
    const-string v1, "address_item"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/waze/navigate/AddressItem;

    .line 1829
    .local v9, ai:Lcom/waze/navigate/AddressItem;
    if-eqz v9, :cond_8

    iget-object v1, v9, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    if-nez v1, :cond_9

    .line 1830
    :cond_8
    const-string v1, "AddressPreviewActivity.myHandleMessage(UH_SEARCH_ADD_RESULT) - null address"

    invoke-static {v1}, Lcom/waze/Logger;->e(Ljava/lang/String;)V

    .line 1831
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1834
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/waze/navigate/AddressPreviewActivity;->mShouldLoadVenue:Z

    if-eqz v1, :cond_c

    .line 1835
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/waze/navigate/AddressPreviewActivity;->mShouldLoadVenue:Z

    .line 1836
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/AddressPreviewActivity;->mWebViewLoadAnimation:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1838
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/waze/navigate/AddressItem;->setType(Ljava/lang/Integer;)V

    .line 1839
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/waze/navigate/AddressItem;->setId(Ljava/lang/String;)V

    .line 1841
    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getImage()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_a

    .line 1842
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getImage()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/waze/navigate/AddressItem;->setImage(Ljava/lang/Integer;)V

    .line 1845
    :cond_a
    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1846
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/waze/navigate/AddressItem;->setTitle(Ljava/lang/String;)V

    .line 1849
    :cond_b
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    .line 1850
    invoke-direct/range {p0 .. p0}, Lcom/waze/navigate/AddressPreviewActivity;->refreshView()V

    .line 1851
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1854
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v9, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->numImages:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/waze/navigate/AddressPreviewActivity;->mImageArray:Ljava/util/ArrayList;

    .line 1855
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_3
    iget-object v1, v9, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v1, v1, Lcom/waze/reports/VenueData;->numImages:I

    if-lt v12, v1, :cond_e

    .line 1861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/AddressPreviewActivity;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/AddressPreviewActivity;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    invoke-virtual {v1}, Lcom/waze/reports/PlacePhotoGallery;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1862
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/AddressPreviewActivity;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/AddressPreviewActivity;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/waze/reports/PlacePhotoGallery;->updateImages(Ljava/util/ArrayList;)V

    .line 1864
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v1, v1, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/waze/reports/VenueData;->bHasMoreData:Z

    .line 1866
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1856
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/navigate/AddressPreviewActivity;->mImageArray:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v1, Lcom/waze/reports/PhotoPagerSection$VenueImage;

    iget-object v2, v9, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v2, v2, v12

    .line 1857
    iget-object v3, v9, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    aget-object v3, v3, v12

    iget-object v4, v9, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v4, v4, Lcom/waze/reports/VenueData;->imageReporters:[Ljava/lang/String;

    aget-object v4, v4, v12

    .line 1858
    iget-object v5, v9, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v5, v5, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    aget-object v5, v5, v12

    iget-object v6, v9, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v6, v6, Lcom/waze/reports/VenueData;->imageLiked:[Z

    aget-boolean v6, v6, v12

    .line 1859
    iget-object v7, v9, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v7, v7, Lcom/waze/reports/VenueData;->imageByMe:[Z

    aget-boolean v7, v7, v12

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/waze/reports/PhotoPagerSection$VenueImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1856
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1855
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1868
    .end local v9           #ai:Lcom/waze/navigate/AddressItem;
    .end local v11           #b:Landroid/os/Bundle;
    .end local v12           #i:I
    :cond_f
    invoke-super/range {p0 .. p1}, Lcom/waze/ifs/ui/ActivityBase;->myHandleMessage(Landroid/os/Message;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public navigateCallback(I)V
    .locals 1
    .parameter "rc"

    .prologue
    .line 1901
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/navigate/AddressPreviewActivity;->setResult(I)V

    .line 1902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mWasResultSet:Z

    .line 1903
    invoke-virtual {p0}, Lcom/waze/navigate/AddressPreviewActivity;->finish()V

    .line 1904
    return-void
.end method

.method public nextSearchResult(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mSelectedItem:I

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_1

    .line 1884
    :cond_0
    :goto_0
    return-void

    .line 1875
    :cond_1
    iget v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mSelectedItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mSelectedItem:I

    .line 1876
    invoke-direct {p0}, Lcom/waze/navigate/AddressPreviewActivity;->refreshView()V

    .line 1877
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mSelectedItem:I

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemClicked(I)V

    .line 1878
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget v1, v1, Lcom/waze/navigate/AddressItem;->index:I

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1879
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v5}, Lcom/waze/navigate/AddressItem;->getIcon()Ljava/lang/String;

    move-result-object v5

    .line 1878
    invoke-virtual/range {v0 .. v5}, Lcom/waze/navigate/DriveToNativeManager;->centerMapInAddressOptionsView(IIIZLjava/lang/String;)V

    .line 1881
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget v1, v1, Lcom/waze/navigate/AddressItem;->index:I

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemShownBeforeNavigate(I)V

    .line 1883
    const-string v0, "ADS_PREVIEW_SHOWN"

    invoke-direct {p0, v0}, Lcom/waze/navigate/AddressPreviewActivity;->logAnalyticsAds(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 227
    const/16 v3, 0x6a

    if-ne p1, v3, :cond_1

    .line 228
    if-ne p2, v4, :cond_0

    .line 229
    sget-object v3, Lcom/waze/ifs/ui/EditTextDialogActivity;->RET_VAL:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, reason:Ljava/lang/String;
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v4, v4, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v4, v4, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget v5, p0, Lcom/waze/navigate/AddressPreviewActivity;->mFlagType:I

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/waze/NativeManager;->venueFlag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lcom/waze/navigate/AddressPreviewActivity;->thanksForReport()V

    .line 284
    .end local v1           #reason:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const/16 v3, 0x6b

    if-ne p1, v3, :cond_2

    .line 237
    if-ne p2, v4, :cond_0

    .line 238
    sget-object v3, Lcom/waze/ifs/ui/OmniSelectionActivity;->RET_SELECTED_VAL:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, place:Ljava/lang/String;
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v4, v4, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v4, v4, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget v5, p0, Lcom/waze/navigate/AddressPreviewActivity;->mFlagType:I

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/waze/NativeManager;->venueFlag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/waze/navigate/AddressPreviewActivity;->thanksForReport()V

    goto :goto_0

    .line 245
    .end local v0           #place:Ljava/lang/String;
    :cond_2
    const/16 v3, 0x6c

    if-ne p1, v3, :cond_3

    .line 246
    if-ne p2, v4, :cond_0

    .line 247
    sget-object v3, Lcom/waze/ifs/ui/EditTextDialogActivity;->RET_VAL:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .restart local v1       #reason:Ljava/lang/String;
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v4, v4, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v4, v4, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget v5, p0, Lcom/waze/navigate/AddressPreviewActivity;->mFlagType:I

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/waze/NativeManager;->venueFlag(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/waze/navigate/AddressPreviewActivity;->thanksForReport()V

    goto :goto_0

    .line 254
    .end local v1           #reason:Ljava/lang/String;
    :cond_3
    const/16 v3, 0x6d

    if-ne p1, v3, :cond_4

    .line 255
    const/4 v3, 0x3

    if-ne p2, v3, :cond_4

    .line 256
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/waze/navigate/AddressPreviewActivity;->setResult(I)V

    .line 257
    iput-boolean v5, p0, Lcom/waze/navigate/AddressPreviewActivity;->mWasResultSet:Z

    .line 258
    invoke-virtual {p0}, Lcom/waze/navigate/AddressPreviewActivity;->finish()V

    .line 262
    :cond_4
    const/16 v3, 0x14d

    if-ne p1, v3, :cond_7

    .line 263
    if-ne p2, v4, :cond_6

    .line 264
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v2, resultIntent:Landroid/content/Intent;
    const-string v3, "AddressItem"

    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 266
    const v3, 0x800e

    invoke-virtual {p0, v3, v2}, Lcom/waze/navigate/AddressPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 267
    iput-boolean v5, p0, Lcom/waze/navigate/AddressPreviewActivity;->mWasResultSet:Z

    .line 268
    invoke-virtual {p0}, Lcom/waze/navigate/AddressPreviewActivity;->finish()V

    .line 283
    .end local v2           #resultIntent:Landroid/content/Intent;
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 270
    :cond_6
    invoke-virtual {p0, v4}, Lcom/waze/navigate/AddressPreviewActivity;->setResult(I)V

    .line 271
    iput-boolean v5, p0, Lcom/waze/navigate/AddressPreviewActivity;->mWasResultSet:Z

    .line 272
    invoke-virtual {p0}, Lcom/waze/navigate/AddressPreviewActivity;->finish()V

    goto :goto_1

    .line 274
    :cond_7
    if-ne p2, v5, :cond_8

    .line 275
    invoke-virtual {p0, v5}, Lcom/waze/navigate/AddressPreviewActivity;->setResult(I)V

    .line 276
    iput-boolean v5, p0, Lcom/waze/navigate/AddressPreviewActivity;->mWasResultSet:Z

    .line 277
    invoke-virtual {p0}, Lcom/waze/navigate/AddressPreviewActivity;->finish()V

    goto :goto_1

    .line 278
    :cond_8
    if-ne p2, v4, :cond_5

    .line 279
    invoke-virtual {p0, v4}, Lcom/waze/navigate/AddressPreviewActivity;->setResult(I)V

    .line 280
    iput-boolean v5, p0, Lcom/waze/navigate/AddressPreviewActivity;->mWasResultSet:Z

    .line 281
    invoke-virtual {p0}, Lcom/waze/navigate/AddressPreviewActivity;->finish()V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 1754
    iget-boolean v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mWasResultSet:Z

    if-nez v1, :cond_0

    .line 1755
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1756
    .local v0, data:Landroid/content/Intent;
    const-string v1, "position"

    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mSelectedItem:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1757
    const-string v1, "venue"

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1758
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/waze/navigate/AddressPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 1760
    .end local v0           #data:Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 1761
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/high16 v3, 0x4040

    const/4 v4, 0x0

    .line 178
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0, v5}, Lcom/waze/navigate/AddressPreviewActivity;->requestWindowFeature(I)Z

    .line 181
    invoke-virtual {p0}, Lcom/waze/navigate/AddressPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDensity:F

    .line 184
    iget v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->LS_X_FACTOR:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDensity:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->LS_X_FACTOR:F

    .line 185
    iget v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->LS_Y_FACTOR:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDensity:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->LS_Y_FACTOR:F

    .line 187
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    .line 189
    invoke-static {}, Lcom/waze/reports/EditPlaceServicesFragment;->getServices()Lcom/waze/NativeManager$VenueServices;

    .line 191
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->OpenRoutingIntent()V

    .line 193
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    .line 194
    invoke-virtual {p0}, Lcom/waze/navigate/AddressPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 195
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 196
    const-string v1, "AdditionalButton"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mIsAdditionalAddToFavorites:Z

    .line 197
    const-string v1, "ClearAdsContext"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mIsClearAdsContext:Z

    .line 198
    const-string v1, "preview_load_venue"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mShouldLoadVenue:Z

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_ETA:I

    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 203
    invoke-direct {p0}, Lcom/waze/navigate/AddressPreviewActivity;->setUpActivity()V

    .line 205
    const-string v1, "ADS_PREVIEW_SHOWN"

    invoke-direct {p0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->logAnalyticsAds(Ljava/lang/String;)V

    .line 207
    iget-boolean v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mShouldLoadVenue:Z

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 210
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 211
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/waze/NativeManager;->venueGet(Ljava/lang/String;I)V

    .line 213
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mWebViewLoadAnimation:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 215
    new-instance v1, Lcom/waze/navigate/AddressPreviewActivity$5;

    invoke-direct {v1, p0}, Lcom/waze/navigate/AddressPreviewActivity$5;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    .line 221
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    invoke-virtual {v2}, Lcom/waze/NativeManager;->getVenueGetTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 215
    invoke-virtual {p0, v1, v2, v3}, Lcom/waze/navigate/AddressPreviewActivity;->postDelayed(Ljava/lang/Runnable;J)V

    .line 223
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_ETA:I

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 1747
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 1748
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 1749
    iget-boolean v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mIsClearAdsContext:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/waze/analytics/Analytics;->adsContextClear()V

    .line 1750
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1734
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 1735
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 1736
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    invoke-virtual {v0}, Lcom/waze/reports/PlacePhotoGallery;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    invoke-virtual {v0}, Lcom/waze/reports/PlacePhotoGallery;->dismiss()V

    .line 1739
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    .line 1741
    invoke-direct {p0}, Lcom/waze/navigate/AddressPreviewActivity;->unsetAddressOptionsView()V

    .line 1742
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1765
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 1767
    invoke-virtual {p0}, Lcom/waze/navigate/AddressPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1768
    .local v0, display_mode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1769
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;

    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$34;

    invoke-direct {v2, p0}, Lcom/waze/navigate/AddressPreviewActivity$34;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/ObservableScrollView;->post(Ljava/lang/Runnable;)Z

    .line 1777
    :cond_0
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mMapView:Lcom/waze/MapView;

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v1, v2}, Lcom/waze/MapView;->setNativeCanvasReadyEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 1778
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v1}, Lcom/waze/MapView;->onResume()V

    .line 1779
    return-void
.end method

.method public onUpdateEta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "provider"
    .parameter "distance"
    .parameter "id"

    .prologue
    .line 2013
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2018
    :cond_0
    :goto_0
    return-void

    .line 2016
    :cond_1
    const v1, 0x7f09012d

    invoke-virtual {p0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2017
    .local v0, distanceTextView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected openShareActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2253
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/mywaze/MyWazeNativeManager;->getContactLoggedInNTV()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2254
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->IsAccessToContactsEnableNTV()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2256
    invoke-direct {p0}, Lcom/waze/navigate/AddressPreviewActivity;->unsetAddressOptionsView()V

    .line 2258
    sget-object v2, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareSelection:Lcom/waze/share/ShareUtility$ShareType;

    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-static {v2, v4, v3, v4}, Lcom/waze/share/ShareUtility;->OpenShareActivity(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;[Lcom/waze/user/PersonBase;)V

    .line 2282
    :goto_0
    return-void

    .line 2262
    :cond_0
    new-instance v0, Lcom/waze/phone/PhoneRequestAccessDialog;

    new-instance v2, Lcom/waze/navigate/AddressPreviewActivity$35;

    invoke-direct {v2, p0}, Lcom/waze/navigate/AddressPreviewActivity$35;-><init>(Lcom/waze/navigate/AddressPreviewActivity;)V

    invoke-direct {v0, p0, v2}, Lcom/waze/phone/PhoneRequestAccessDialog;-><init>(Landroid/content/Context;Lcom/waze/phone/PhoneRequestAccessDialog$PhoneRequestAccessResultListener;)V

    .line 2271
    .local v0, dialog:Lcom/waze/phone/PhoneRequestAccessDialog;
    invoke-virtual {v0}, Lcom/waze/phone/PhoneRequestAccessDialog;->show()V

    goto :goto_0

    .line 2275
    .end local v0           #dialog:Lcom/waze/phone/PhoneRequestAccessDialog;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/waze/phone/PhoneNumberSignInActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2276
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2277
    const-string v2, "back"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2278
    const-string v2, "fon_shon_rea_son"

    .line 2279
    const-string v3, "FEATURE"

    .line 2278
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2280
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    const/16 v3, 0x6f

    invoke-virtual {v2, v1, v3}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public prevSearchResult(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1887
    iget v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mSelectedItem:I

    if-nez v0, :cond_0

    .line 1896
    :goto_0
    return-void

    .line 1890
    :cond_0
    iget v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mSelectedItem:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mSelectedItem:I

    .line 1891
    invoke-direct {p0}, Lcom/waze/navigate/AddressPreviewActivity;->refreshView()V

    .line 1892
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget v1, v1, Lcom/waze/navigate/AddressItem;->index:I

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1893
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v5}, Lcom/waze/navigate/AddressItem;->getIcon()Ljava/lang/String;

    move-result-object v5

    .line 1892
    invoke-virtual/range {v0 .. v5}, Lcom/waze/navigate/DriveToNativeManager;->centerMapInAddressOptionsView(IIIZLjava/lang/String;)V

    .line 1895
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget v1, v1, Lcom/waze/navigate/AddressItem;->index:I

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemShownBeforeNavigate(I)V

    goto :goto_0
.end method

.method public showReportSubmenu()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x1

    .line 1601
    const-string v5, "PLACES_PLACE_FLAGGING_POPUP_SHOWN"

    const-string v6, "VENUE_ID"

    .line 1602
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v7, v7, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v7, v7, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    .line 1601
    invoke-static {v5, v6, v7}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    iget-object v5, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_WHATS_WRONG_WITH_THIS_PLACEQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 1606
    .local v2, dialogTitle:Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_PLACE_DUPLICATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1607
    iget-object v5, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_PLACE_CLOSED_MOVED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    .line 1608
    iget-object v6, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_PLACE_INAPPROPRIATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 1609
    iget-object v6, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_PLACE_WRONG:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 1610
    iget-object v6, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_RESIDENTIAL_PLACE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 1611
    iget-object v6, p0, Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_FLAG_WRONG_PLACE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1613
    .local v4, options:[Ljava/lang/String;
    new-array v3, v9, [I

    fill-array-data v3, :array_0

    .line 1617
    .local v3, optionValues:[I
    const/4 v5, -0x1

    iput v5, p0, Lcom/waze/navigate/AddressPreviewActivity;->mFlagType:I

    .line 1619
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v5, 0x7f06000f

    invoke-direct {v1, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1620
    .local v1, bob:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1621
    new-instance v5, Lcom/waze/navigate/AddressPreviewActivity$31;

    invoke-direct {v5, p0, v3}, Lcom/waze/navigate/AddressPreviewActivity$31;-><init>(Lcom/waze/navigate/AddressPreviewActivity;[I)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1650
    const v5, 0x7f02015a

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1651
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1652
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1653
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1654
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1655
    return-void

    .line 1613
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method
