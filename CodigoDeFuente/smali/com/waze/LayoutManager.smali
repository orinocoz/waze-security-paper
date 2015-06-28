.class public final Lcom/waze/LayoutManager;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/LayoutManager$QueuedTooltip;,
        Lcom/waze/LayoutManager$WazeRect;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$waze$TooltipType:[I = null

.field private static final TOOLTIP_AUTO_CLOSE_TIMEOUT:I = 0x2710

.field public static final WAZE_LAYOUT_EDIT_HEIGHT:F = 50.0f

.field public static final WAZE_LAYOUT_EDIT_SIDE_MARGIN:F = 2.0f

.field public static final WAZE_LAYOUT_EDIT_TYPE_SIMPLE:I = 0x0

.field public static final WAZE_LAYOUT_EDIT_TYPE_VOICE:I = 0x1


# instance fields
.field private final FILL_PARENT:I

.field private adapter:Lcom/waze/view/popups/MyPageAdapter;

.field private bIsClosureRunning:Z

.field private bIsFriendsBarInitialized:Z

.field private bIsFriendsBarShown:Z

.field private bIsFriendsBarShownFirstTime:Z

.field private bIsPopUpShow:Z

.field private bIsTicker:Z

.field private bIsWaitingFriendsShown:Z

.field private bRefreshPageTime:Z

.field private bWasFriendsBarRefreshedAtLeastOnce:Z

.field private context:Lcom/waze/ifs/ui/ActivityBase;

.field private delayedReportMenu:Lcom/waze/reports/ReportMenu;

.field private inflater:Landroid/view/LayoutInflater;

.field private isFriendsBarVisible:Z

.field private isSearchBarVisible:Z

.field private isSplashVisible:Z

.field private isTooltipFriendsShown:Z

.field private isTooltipMainMenuShown:Z

.field private isTooltipRoadClosureShown:Z

.field private isTooltipShareShown:Z

.field private mAppView:Lcom/waze/MapViewWrapper;

.field private mDotsAnimationOffCount:I

.field private mDotsAnimationOnCount:I

.field private mEditBoxView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIndexTickers:[I

.field private mInterruptTime:I

.field mIsToolTipDisplayed:Z

.field private mLastPageNumber:I

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mNavBar:Lcom/waze/navbar/NavBar;

.field private mNavResult:Lcom/waze/main/navigate/NavigationResult;

.field private mNotifBar:Lcom/waze/notificationbar/NotificationBar;

.field private mOrientationEventPending:Z

.field private mPages:[Landroid/widget/ImageView;

.field private mRefreshPageRunnable:Ljava/lang/Runnable;

.field mReportedViewingFriendsIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldRestoreNearing:Z

.field private mShouldShowTrafficBar:Z

.field private mShowFriendsTip:I

.field private mTicker:Lcom/waze/ticker/MessageTicker;

.field mToolTipQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/LayoutManager$QueuedTooltip;",
            ">;"
        }
    .end annotation
.end field

.field private mTooltipFriends:Landroid/widget/LinearLayout;

.field private mTooltipFriends_ls:Landroid/widget/LinearLayout;

.field private mTooltipMainMenu:Landroid/widget/LinearLayout;

.field private mTooltipRoadClosure:Landroid/widget/LinearLayout;

.field private mTooltipShare:Landroid/widget/LinearLayout;

.field private mTrafficBarView:Lcom/waze/view/navbar/TrafficBarView;

.field private mTypesTickers:[I

.field private mViews:[Landroid/view/View;

.field private mWebView:Lcom/waze/WzWebView;

.field private m_closureMap:Lcom/waze/reports/ClosureMap;

.field private volatile mainMenu:Lcom/waze/menus/MainMenu;

.field private mbPaused:Z

.field private nMaxETA:I

.field private nMenuType:I

.field private nNumberOfViews:I

.field private nOptionalNumber:I

.field private nPageNumber:I

.field private nTickers:I

.field private pendingAddStop:Z

.field protected pendingReportSwipe:Z

.field private volatile popupShown:Z

.field private popups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/waze/view/popups/PopUp;",
            ">;"
        }
    .end annotation
.end field

.field private volatile reportMenu:Lcom/waze/reports/ReportMenu;

.field private sm:Ljava/util/concurrent/Semaphore;

.field private useSwipeableButtons:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$waze$TooltipType()[I
    .locals 3

    .prologue
    .line 122
    sget-object v0, Lcom/waze/LayoutManager;->$SWITCH_TABLE$com$waze$TooltipType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/waze/TooltipType;->values()[Lcom/waze/TooltipType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/waze/TooltipType;->ARRIVAL_SENT:Lcom/waze/TooltipType;

    invoke-virtual {v1}, Lcom/waze/TooltipType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/waze/TooltipType;->ETA:Lcom/waze/TooltipType;

    invoke-virtual {v1}, Lcom/waze/TooltipType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/waze/TooltipType;->ETA_UPDATE_SENT:Lcom/waze/TooltipType;

    invoke-virtual {v1}, Lcom/waze/TooltipType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/waze/TooltipType;->FRIENDS:Lcom/waze/TooltipType;

    invoke-virtual {v1}, Lcom/waze/TooltipType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/waze/TooltipType;->MAIN_MENU:Lcom/waze/TooltipType;

    invoke-virtual {v1}, Lcom/waze/TooltipType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/waze/TooltipType;->NEW_USER_VIEWING:Lcom/waze/TooltipType;

    invoke-virtual {v1}, Lcom/waze/TooltipType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/waze/TooltipType;->ROAD_CLOSURE:Lcom/waze/TooltipType;

    invoke-virtual {v1}, Lcom/waze/TooltipType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/waze/TooltipType;->SHARE:Lcom/waze/TooltipType;

    invoke-virtual {v1}, Lcom/waze/TooltipType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/waze/LayoutManager;->$SWITCH_TABLE$com$waze$TooltipType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/waze/ifs/ui/ActivityBase;)V
    .locals 6
    .parameter "aContext"

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object v2, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    .line 126
    iput-object v2, p0, Lcom/waze/LayoutManager;->mNotifBar:Lcom/waze/notificationbar/NotificationBar;

    .line 127
    iput-object v2, p0, Lcom/waze/LayoutManager;->mTicker:Lcom/waze/ticker/MessageTicker;

    .line 128
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->mOrientationEventPending:Z

    .line 129
    iput-object v2, p0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/LayoutManager;->popups:Ljava/util/List;

    .line 132
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->popupShown:Z

    .line 133
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->bIsClosureRunning:Z

    .line 134
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->pendingReportSwipe:Z

    .line 135
    iput-boolean v3, p0, Lcom/waze/LayoutManager;->mbPaused:Z

    .line 136
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->isSplashVisible:Z

    .line 137
    iput-boolean v3, p0, Lcom/waze/LayoutManager;->isFriendsBarVisible:Z

    .line 138
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->bIsFriendsBarInitialized:Z

    .line 139
    iput v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waze/LayoutManager;->mHandler:Landroid/os/Handler;

    .line 143
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->bIsWaitingFriendsShown:Z

    .line 144
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->bIsTicker:Z

    .line 145
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->bIsPopUpShow:Z

    .line 146
    iput v1, p0, Lcom/waze/LayoutManager;->nMaxETA:I

    .line 149
    iput v1, p0, Lcom/waze/LayoutManager;->nPageNumber:I

    .line 150
    iput v1, p0, Lcom/waze/LayoutManager;->nTickers:I

    .line 151
    iput-boolean v3, p0, Lcom/waze/LayoutManager;->bRefreshPageTime:Z

    .line 155
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->bIsFriendsBarShown:Z

    .line 156
    iput-boolean v3, p0, Lcom/waze/LayoutManager;->bIsFriendsBarShownFirstTime:Z

    .line 158
    iput v4, p0, Lcom/waze/LayoutManager;->mLastPageNumber:I

    .line 159
    iput v1, p0, Lcom/waze/LayoutManager;->nMenuType:I

    .line 160
    const/4 v0, 0x7

    iput v0, p0, Lcom/waze/LayoutManager;->mInterruptTime:I

    .line 161
    iput v1, p0, Lcom/waze/LayoutManager;->nOptionalNumber:I

    .line 162
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->isSearchBarVisible:Z

    .line 163
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->mShouldRestoreNearing:Z

    .line 164
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/waze/LayoutManager;->sm:Ljava/util/concurrent/Semaphore;

    .line 176
    iput v3, p0, Lcom/waze/LayoutManager;->mShowFriendsTip:I

    .line 177
    iput-object v2, p0, Lcom/waze/LayoutManager;->mTrafficBarView:Lcom/waze/view/navbar/TrafficBarView;

    .line 178
    iput-boolean v3, p0, Lcom/waze/LayoutManager;->mShouldShowTrafficBar:Z

    .line 179
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/waze/LayoutManager;->mReportedViewingFriendsIds:Ljava/util/HashSet;

    .line 2171
    iput-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 2172
    iput-object v2, p0, Lcom/waze/LayoutManager;->mAppView:Lcom/waze/MapViewWrapper;

    .line 2173
    iput-object v2, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    .line 2174
    iput-object v2, p0, Lcom/waze/LayoutManager;->mEditBoxView:Landroid/view/View;

    .line 2175
    iput-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    .line 2190
    iput v4, p0, Lcom/waze/LayoutManager;->FILL_PARENT:I

    .line 2194
    iput-boolean v3, p0, Lcom/waze/LayoutManager;->useSwipeableButtons:Z

    .line 2195
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->pendingAddStop:Z

    .line 2585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/waze/LayoutManager;->mToolTipQueue:Ljava/util/ArrayList;

    .line 2586
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->mIsToolTipDisplayed:Z

    .line 189
    iput-object p1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    .line 190
    invoke-direct {p0}, Lcom/waze/LayoutManager;->init()V

    .line 191
    return-void
.end method

.method private AddUserToTimeline(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 24
    .parameter "etaSeconds"
    .parameter "maxEtaSeconds"
    .parameter "pictureUrl"
    .parameter "name"
    .parameter "bIsMySelf"

    .prologue
    .line 1403
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    .line 1404
    .local v16, orientation:I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    .line 1406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f090395

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 1412
    .local v11, endDriveFriendsLayout:Landroid/widget/RelativeLayout;
    :goto_0
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    .line 1413
    const/4 v3, -0x2

    .line 1412
    invoke-direct {v14, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1414
    .local v14, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const-wide/high16 v2, 0x3ff0

    move/from16 v0, p1

    int-to-double v6, v0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v6, v6, v22

    sub-double v19, v2, v6

    .line 1415
    .local v19, start:D
    const-wide v2, 0x3feb333333333333L

    cmpl-double v2, v19, v2

    if-lez v2, :cond_0

    .line 1416
    const-wide v19, 0x3feb333333333333L

    .line 1418
    :cond_0
    const/16 v10, 0x28

    .line 1419
    .local v10, dpValue:I
    const/4 v9, 0x5

    .line 1420
    .local v9, dpFriendsRightValue:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1421
    .local v8, d:F
    int-to-float v2, v10

    mul-float/2addr v2, v8

    float-to-int v0, v2

    move/from16 v17, v0

    .line 1422
    .local v17, padding:I
    int-to-float v2, v9

    mul-float/2addr v2, v8

    float-to-int v0, v2

    move/from16 v18, v0

    .line 1423
    .local v18, rightPadding:I
    const/4 v15, 0x0

    .line 1424
    .local v15, leftPadding:I
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int v13, v2, v17

    .line 1426
    .local v13, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/LayoutManager;->inflater:Landroid/view/LayoutInflater;

    .line 1427
    const v3, 0x7f03005e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v11, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 1426
    check-cast v12, Landroid/widget/RelativeLayout;

    .line 1428
    .local v12, friendLayout:Landroid/widget/RelativeLayout;
    if-eqz p5, :cond_1

    .line 1429
    move/from16 v15, v18

    .line 1430
    const/16 v18, 0x0

    .line 1432
    :cond_1
    int-to-double v2, v13

    mul-double v2, v2, v19

    double-to-int v2, v2

    sub-int v2, v13, v2

    const/4 v3, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v15, v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1433
    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1434
    const v2, 0x7f09028b

    invoke-virtual {v12, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1436
    .local v5, friendImage:Landroid/widget/ImageView;
    if-nez p5, :cond_3

    .line 1437
    const v2, 0x7f0902e7

    invoke-virtual {v12, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1438
    .local v21, tv:Landroid/widget/TextView;
    invoke-static/range {p4 .. p4}, Lcom/waze/share/ShareUtility;->getInitials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1441
    sget-object v2, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1442
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v7

    move-object/from16 v3, p3

    .line 1441
    invoke-virtual/range {v2 .. v7}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 1448
    .end local v21           #tv:Landroid/widget/TextView;
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1449
    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1450
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1451
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 1452
    return-void

    .line 1409
    .end local v5           #friendImage:Landroid/widget/ImageView;
    .end local v8           #d:F
    .end local v9           #dpFriendsRightValue:I
    .end local v10           #dpValue:I
    .end local v11           #endDriveFriendsLayout:Landroid/widget/RelativeLayout;
    .end local v12           #friendLayout:Landroid/widget/RelativeLayout;
    .end local v13           #height:I
    .end local v14           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15           #leftPadding:I
    .end local v17           #padding:I
    .end local v18           #rightPadding:I
    .end local v19           #start:D
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f09039d

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 1408
    .restart local v11       #endDriveFriendsLayout:Landroid/widget/RelativeLayout;
    goto/16 :goto_0

    .line 1444
    .restart local v5       #friendImage:Landroid/widget/ImageView;
    .restart local v8       #d:F
    .restart local v9       #dpFriendsRightValue:I
    .restart local v10       #dpValue:I
    .restart local v12       #friendLayout:Landroid/widget/RelativeLayout;
    .restart local v13       #height:I
    .restart local v14       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v15       #leftPadding:I
    .restart local v17       #padding:I
    .restart local v18       #rightPadding:I
    .restart local v19       #start:D
    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1445
    const v2, 0x7f09028c

    invoke-virtual {v12, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1446
    const v3, 0x7f020167

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private InitPages()V
    .locals 4

    .prologue
    .line 685
    iget-object v1, p0, Lcom/waze/LayoutManager;->mPages:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903a7

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 686
    iget-object v1, p0, Lcom/waze/LayoutManager;->mPages:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903a8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 687
    iget-object v1, p0, Lcom/waze/LayoutManager;->mPages:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903a9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 688
    iget-object v1, p0, Lcom/waze/LayoutManager;->mPages:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903aa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 689
    iget-object v1, p0, Lcom/waze/LayoutManager;->mPages:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903ab

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 690
    return-void
.end method

.method public static OpenAboutPopup(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1769
    new-instance v0, Landroid/app/Dialog;

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    const v3, 0x7f06000f

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1770
    .local v0, dialog:Landroid/app/Dialog;
    const/high16 v2, 0x7f03

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 1772
    const v2, 0x7f09002e

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 1773
    .local v1, titleView:Landroid/webkit/WebView;
    const-string v2, "text/html; charset=utf-8"

    const-string v3, "UTF-8"

    invoke-virtual {v1, p0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    const v2, 0x7f090032

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/LayoutManager$22;

    invoke-direct {v3, v0}, Lcom/waze/LayoutManager$22;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1784
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1785
    return-void
.end method

.method static synthetic access$0(Lcom/waze/LayoutManager;)Lcom/waze/MapViewWrapper;
    .locals 1
    .parameter

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/waze/LayoutManager;->mAppView:Lcom/waze/MapViewWrapper;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/LayoutManager;)Lcom/waze/ifs/ui/ActivityBase;
    .locals 1
    .parameter

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    return-object v0
.end method

.method static synthetic access$10(Lcom/waze/LayoutManager;)I
    .locals 1
    .parameter

    .prologue
    .line 158
    iget v0, p0, Lcom/waze/LayoutManager;->mLastPageNumber:I

    return v0
.end method

.method static synthetic access$11(Lcom/waze/LayoutManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    iput p1, p0, Lcom/waze/LayoutManager;->mLastPageNumber:I

    return-void
.end method

.method static synthetic access$12(Lcom/waze/LayoutManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput p1, p0, Lcom/waze/LayoutManager;->nPageNumber:I

    return-void
.end method

.method static synthetic access$13(Lcom/waze/LayoutManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/waze/LayoutManager;->bRefreshPageTime:Z

    return-void
.end method

.method static synthetic access$14(Lcom/waze/LayoutManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/waze/LayoutManager;->bIsPopUpShow:Z

    return v0
.end method

.method static synthetic access$15(Lcom/waze/LayoutManager;)I
    .locals 1
    .parameter

    .prologue
    .line 139
    iget v0, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    return v0
.end method

.method static synthetic access$16(Lcom/waze/LayoutManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/waze/LayoutManager;->bRefreshPageTime:Z

    return v0
.end method

.method static synthetic access$17(Lcom/waze/LayoutManager;)I
    .locals 1
    .parameter

    .prologue
    .line 149
    iget v0, p0, Lcom/waze/LayoutManager;->nPageNumber:I

    return v0
.end method

.method static synthetic access$18(Lcom/waze/LayoutManager;)[Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$19(Lcom/waze/LayoutManager;)I
    .locals 1
    .parameter

    .prologue
    .line 160
    iget v0, p0, Lcom/waze/LayoutManager;->mInterruptTime:I

    return v0
.end method

.method static synthetic access$2(Lcom/waze/LayoutManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/waze/LayoutManager;->isTooltipFriendsShown:Z

    return v0
.end method

.method static synthetic access$20(Lcom/waze/LayoutManager;)I
    .locals 1
    .parameter

    .prologue
    .line 153
    iget v0, p0, Lcom/waze/LayoutManager;->mDotsAnimationOnCount:I

    return v0
.end method

.method static synthetic access$21(Lcom/waze/LayoutManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput p1, p0, Lcom/waze/LayoutManager;->mDotsAnimationOnCount:I

    return-void
.end method

.method static synthetic access$22(Lcom/waze/LayoutManager;)I
    .locals 1
    .parameter

    .prologue
    .line 157
    iget v0, p0, Lcom/waze/LayoutManager;->mDotsAnimationOffCount:I

    return v0
.end method

.method static synthetic access$23(Lcom/waze/LayoutManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput p1, p0, Lcom/waze/LayoutManager;->mDotsAnimationOffCount:I

    return-void
.end method

.method static synthetic access$24(Lcom/waze/LayoutManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput p1, p0, Lcom/waze/LayoutManager;->mShowFriendsTip:I

    return-void
.end method

.method static synthetic access$25(Lcom/waze/LayoutManager;)I
    .locals 1
    .parameter

    .prologue
    .line 176
    iget v0, p0, Lcom/waze/LayoutManager;->mShowFriendsTip:I

    return v0
.end method

.method static synthetic access$26(Lcom/waze/LayoutManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput p1, p0, Lcom/waze/LayoutManager;->nMaxETA:I

    return-void
.end method

.method static synthetic access$27(Lcom/waze/LayoutManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/waze/LayoutManager;->bIsFriendsBarShown:Z

    return-void
.end method

.method static synthetic access$28(Lcom/waze/LayoutManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/waze/LayoutManager;->bIsFriendsBarShown:Z

    return v0
.end method

.method static synthetic access$29(Lcom/waze/LayoutManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/waze/LayoutManager;->bIsWaitingFriendsShown:Z

    return-void
.end method

.method static synthetic access$3(Lcom/waze/LayoutManager;ZLcom/waze/TooltipType;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2790
    invoke-direct {p0, p1, p2}, Lcom/waze/LayoutManager;->closeTooltip(ZLcom/waze/TooltipType;)V

    return-void
.end method

.method static synthetic access$30(Lcom/waze/LayoutManager;)I
    .locals 1
    .parameter

    .prologue
    .line 146
    iget v0, p0, Lcom/waze/LayoutManager;->nMaxETA:I

    return v0
.end method

.method static synthetic access$31(Lcom/waze/LayoutManager;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1400
    invoke-direct/range {p0 .. p5}, Lcom/waze/LayoutManager;->AddUserToTimeline(IILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/LayoutManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/waze/LayoutManager;->isTooltipRoadClosureShown:Z

    return v0
.end method

.method static synthetic access$5(Lcom/waze/LayoutManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/waze/LayoutManager;->isTooltipMainMenuShown:Z

    return v0
.end method

.method static synthetic access$6(Lcom/waze/LayoutManager;)I
    .locals 1
    .parameter

    .prologue
    .line 159
    iget v0, p0, Lcom/waze/LayoutManager;->nMenuType:I

    return v0
.end method

.method static synthetic access$7(Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2032
    invoke-direct {p0}, Lcom/waze/LayoutManager;->openDelayedReportMenu()V

    return-void
.end method

.method static synthetic access$8(Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2066
    invoke-direct {p0}, Lcom/waze/LayoutManager;->openRoadRecordingMenu()V

    return-void
.end method

.method static synthetic access$9(Lcom/waze/LayoutManager;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private closeTooltip(ZLcom/waze/TooltipType;)V
    .locals 10
    .parameter "isShown"
    .parameter "type"

    .prologue
    const-wide/16 v8, 0x12c

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2791
    if-eqz p1, :cond_1

    .line 2795
    invoke-static {}, Lcom/waze/LayoutManager;->$SWITCH_TABLE$com$waze$TooltipType()[I

    move-result-object v3

    invoke-virtual {p2}, Lcom/waze/TooltipType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2824
    :pswitch_0
    const/4 v1, 0x0

    .line 2825
    .local v1, tooltipLayout:Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 2830
    .local v2, tooltipLayout_ls:Landroid/widget/LinearLayout;
    :goto_0
    if-eqz v1, :cond_0

    .line 2831
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2832
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2833
    new-instance v3, Lcom/waze/LayoutManager$28;

    invoke-direct {v3, p0, v1, p2}, Lcom/waze/LayoutManager$28;-><init>(Lcom/waze/LayoutManager;Landroid/widget/LinearLayout;Lcom/waze/TooltipType;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2847
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2849
    .end local v0           #aa:Landroid/view/animation/AlphaAnimation;
    :cond_0
    if-eqz v2, :cond_1

    .line 2850
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2851
    .restart local v0       #aa:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2852
    new-instance v3, Lcom/waze/LayoutManager$29;

    invoke-direct {v3, p0, v2, p2}, Lcom/waze/LayoutManager$29;-><init>(Lcom/waze/LayoutManager;Landroid/widget/LinearLayout;Lcom/waze/TooltipType;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2866
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2869
    .end local v0           #aa:Landroid/view/animation/AlphaAnimation;
    .end local v1           #tooltipLayout:Landroid/widget/LinearLayout;
    .end local v2           #tooltipLayout_ls:Landroid/widget/LinearLayout;
    :cond_1
    return-void

    .line 2797
    :pswitch_1
    iget-object v1, p0, Lcom/waze/LayoutManager;->mTooltipRoadClosure:Landroid/widget/LinearLayout;

    .line 2798
    .restart local v1       #tooltipLayout:Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 2799
    .restart local v2       #tooltipLayout_ls:Landroid/widget/LinearLayout;
    iput-boolean v5, p0, Lcom/waze/LayoutManager;->isTooltipRoadClosureShown:Z

    goto :goto_0

    .line 2803
    .end local v1           #tooltipLayout:Landroid/widget/LinearLayout;
    .end local v2           #tooltipLayout_ls:Landroid/widget/LinearLayout;
    :pswitch_2
    iget-object v1, p0, Lcom/waze/LayoutManager;->mTooltipMainMenu:Landroid/widget/LinearLayout;

    .line 2804
    .restart local v1       #tooltipLayout:Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 2805
    .restart local v2       #tooltipLayout_ls:Landroid/widget/LinearLayout;
    iput-boolean v5, p0, Lcom/waze/LayoutManager;->isTooltipMainMenuShown:Z

    goto :goto_0

    .line 2812
    .end local v1           #tooltipLayout:Landroid/widget/LinearLayout;
    .end local v2           #tooltipLayout_ls:Landroid/widget/LinearLayout;
    :pswitch_3
    iget-object v1, p0, Lcom/waze/LayoutManager;->mTooltipShare:Landroid/widget/LinearLayout;

    .line 2813
    .restart local v1       #tooltipLayout:Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 2814
    .restart local v2       #tooltipLayout_ls:Landroid/widget/LinearLayout;
    iput-boolean v5, p0, Lcom/waze/LayoutManager;->isTooltipShareShown:Z

    goto :goto_0

    .line 2818
    .end local v1           #tooltipLayout:Landroid/widget/LinearLayout;
    .end local v2           #tooltipLayout_ls:Landroid/widget/LinearLayout;
    :pswitch_4
    iget-object v1, p0, Lcom/waze/LayoutManager;->mTooltipFriends:Landroid/widget/LinearLayout;

    .line 2819
    .restart local v1       #tooltipLayout:Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/waze/LayoutManager;->mTooltipFriends_ls:Landroid/widget/LinearLayout;

    .line 2820
    .restart local v2       #tooltipLayout_ls:Landroid/widget/LinearLayout;
    iput-boolean v5, p0, Lcom/waze/LayoutManager;->isTooltipFriendsShown:Z

    goto :goto_0

    .line 2795
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 3

    .prologue
    .line 2110
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2111
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    return-object v0
.end method

.method private getLocation(I)[I
    .locals 5
    .parameter "viewId"

    .prologue
    .line 2024
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2025
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 2026
    .local v0, location:[I
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2027
    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 2028
    const/4 v2, 0x1

    aget v3, v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 2029
    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/16 v5, 0x8

    .line 449
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/waze/ifs/ui/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/waze/LayoutManager;->inflater:Landroid/view/LayoutInflater;

    .line 451
    iget-object v2, p0, Lcom/waze/LayoutManager;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03007b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 452
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f090387

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/MapViewWrapper;

    iput-object v2, p0, Lcom/waze/LayoutManager;->mAppView:Lcom/waze/MapViewWrapper;

    .line 453
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f09039e

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/navbar/TrafficBarView;

    iput-object v2, p0, Lcom/waze/LayoutManager;->mTrafficBarView:Lcom/waze/view/navbar/TrafficBarView;

    .line 455
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903bd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/LayoutManager$3;

    invoke-direct {v3, p0}, Lcom/waze/LayoutManager$3;-><init>(Lcom/waze/LayoutManager;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    new-array v2, v6, [Landroid/view/View;

    iput-object v2, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    .line 464
    new-array v2, v6, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/waze/LayoutManager;->mPages:[Landroid/widget/ImageView;

    .line 465
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/waze/LayoutManager;->mIndexTickers:[I

    .line 466
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/waze/LayoutManager;->mTypesTickers:[I

    .line 468
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f09038d

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/LayoutManager$4;

    invoke-direct {v3, p0}, Lcom/waze/LayoutManager$4;-><init>(Lcom/waze/LayoutManager;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f090397

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 478
    new-instance v3, Lcom/waze/LayoutManager$5;

    invoke-direct {v3, p0}, Lcom/waze/LayoutManager$5;-><init>(Lcom/waze/LayoutManager;)V

    .line 477
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f09038f

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/LayoutManager$6;

    invoke-direct {v3, p0}, Lcom/waze/LayoutManager$6;-><init>(Lcom/waze/LayoutManager;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    invoke-direct {p0}, Lcom/waze/LayoutManager;->InitPages()V

    .line 538
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f090398

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 539
    new-instance v3, Lcom/waze/LayoutManager$7;

    invoke-direct {v3, p0}, Lcom/waze/LayoutManager$7;-><init>(Lcom/waze/LayoutManager;)V

    .line 538
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903b6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/button/SwipeableButton;

    .line 552
    .local v1, mainReportSwipeableButton:Lcom/waze/view/button/SwipeableButton;
    invoke-virtual {v1}, Lcom/waze/view/button/SwipeableButton;->bringToFront()V

    .line 553
    invoke-virtual {v1, v5}, Lcom/waze/view/button/SwipeableButton;->setVisibility(I)V

    .line 554
    new-instance v2, Lcom/waze/LayoutManager$8;

    invoke-direct {v2, p0}, Lcom/waze/LayoutManager$8;-><init>(Lcom/waze/LayoutManager;)V

    invoke-virtual {v1, v2}, Lcom/waze/view/button/SwipeableButton;->setOnClickListener(Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;)V

    .line 569
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903b3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/button/SwipeableButton;

    .line 570
    .local v0, mainMenuSwipeableButton:Lcom/waze/view/button/SwipeableButton;
    invoke-virtual {v0}, Lcom/waze/view/button/SwipeableButton;->bringToFront()V

    .line 571
    invoke-virtual {v0, v5}, Lcom/waze/view/button/SwipeableButton;->setVisibility(I)V

    .line 572
    new-instance v2, Lcom/waze/LayoutManager$9;

    invoke-direct {v2, p0}, Lcom/waze/LayoutManager$9;-><init>(Lcom/waze/LayoutManager;)V

    invoke-virtual {v0, v2}, Lcom/waze/view/button/SwipeableButton;->setOnClickListener(Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;)V

    .line 604
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903b8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 605
    new-instance v3, Lcom/waze/LayoutManager$10;

    invoke-direct {v3, p0}, Lcom/waze/LayoutManager$10;-><init>(Lcom/waze/LayoutManager;)V

    .line 604
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903b9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 612
    new-instance v3, Lcom/waze/LayoutManager$11;

    invoke-direct {v3, p0}, Lcom/waze/LayoutManager$11;-><init>(Lcom/waze/LayoutManager;)V

    .line 611
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903a2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903ac

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 622
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903a3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 624
    invoke-direct {p0}, Lcom/waze/LayoutManager;->setSplash()V

    .line 626
    return-void
.end method

.method private isAnyTouchClosesToolTip(Lcom/waze/TooltipType;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 2782
    sget-object v0, Lcom/waze/TooltipType;->MAIN_MENU:Lcom/waze/TooltipType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/waze/TooltipType;->FRIENDS:Lcom/waze/TooltipType;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isAutoCloseToolTip(Lcom/waze/TooltipType;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 2786
    sget-object v0, Lcom/waze/TooltipType;->SHARE:Lcom/waze/TooltipType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/waze/TooltipType;->ROAD_CLOSURE:Lcom/waze/TooltipType;

    if-eq p1, v0, :cond_0

    .line 2787
    sget-object v0, Lcom/waze/TooltipType;->ETA_UPDATE_SENT:Lcom/waze/TooltipType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/waze/TooltipType;->ARRIVAL_SENT:Lcom/waze/TooltipType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/waze/TooltipType;->NEW_USER_VIEWING:Lcom/waze/TooltipType;

    if-eq p1, v0, :cond_0

    .line 2786
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private openDelayedReportMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2033
    iget-object v1, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    if-nez v1, :cond_0

    .line 2047
    :goto_0
    return-void

    .line 2037
    :cond_0
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->IsClosureRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2038
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    const-class v2, Lcom/waze/reports/ClosureMap;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2039
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-static {v1}, Lcom/waze/reports/ClosureMap;->SetReportMenu(Lcom/waze/reports/ReportMenu;)V

    .line 2040
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2043
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    iput-object v1, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    .line 2044
    iget-object v1, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v1}, Lcom/waze/reports/ReportMenu;->show()V

    .line 2045
    iget-object v1, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v1, v3}, Lcom/waze/reports/ReportMenu;->open(Z)V

    goto :goto_0
.end method

.method private openRoadRecordingMenu()V
    .locals 1

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    if-nez v0, :cond_0

    .line 2073
    :goto_0
    return-void

    .line 2070
    :cond_0
    iget-object v0, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    iput-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    .line 2071
    iget-object v0, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->show()V

    .line 2072
    iget-object v0, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->showRoadRecording()V

    goto :goto_0
.end method

.method private popupsAdd(Lcom/waze/view/popups/PopUp;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/waze/LayoutManager;->popups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/waze/LayoutManager;->popups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->setPopupShown()V

    .line 393
    return-void
.end method

.method private popupsDismissAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    :goto_0
    iget-object v1, p0, Lcom/waze/LayoutManager;->popups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->setPopupShown()V

    .line 409
    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/waze/LayoutManager;->popups:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/view/popups/PopUp;

    .line 405
    .local v0, p:Lcom/waze/view/popups/PopUp;
    iget-object v1, p0, Lcom/waze/LayoutManager;->popups:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #p:Lcom/waze/view/popups/PopUp;
    check-cast v0, Lcom/waze/view/popups/PopUp;

    .line 406
    .restart local v0       #p:Lcom/waze/view/popups/PopUp;
    invoke-virtual {v0}, Lcom/waze/view/popups/PopUp;->hide()V

    goto :goto_0
.end method

.method private popupsRemove(Lcom/waze/view/popups/PopUp;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/waze/LayoutManager;->popups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/LayoutManager;->popups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->setPopupShown()V

    .line 398
    return-void
.end method

.method private popupsSize()I
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/waze/LayoutManager;->popups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private setCloseToolTipClickListener(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "view"
    .parameter "runnable"

    .prologue
    .line 2561
    new-instance v0, Lcom/waze/LayoutManager$24;

    invoke-direct {v0, p0, p2}, Lcom/waze/LayoutManager$24;-><init>(Lcom/waze/LayoutManager;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2567
    return-void
.end method

.method private setCloseTooltipEvents(Lcom/waze/TooltipType;Landroid/widget/LinearLayout;)V
    .locals 4
    .parameter "type"
    .parameter "currentTooltip"

    .prologue
    .line 2750
    new-instance v0, Lcom/waze/LayoutManager$26;

    invoke-direct {v0, p0, p1}, Lcom/waze/LayoutManager$26;-><init>(Lcom/waze/LayoutManager;Lcom/waze/TooltipType;)V

    .line 2757
    .local v0, closeTooltipRunnable:Ljava/lang/Runnable;
    invoke-direct {p0, p1}, Lcom/waze/LayoutManager;->isAutoCloseToolTip(Lcom/waze/TooltipType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2758
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/waze/LayoutManager;->mIsToolTipDisplayed:Z

    .line 2759
    const-wide/16 v2, 0x2710

    invoke-static {v0, v2, v3}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;J)V

    .line 2762
    :cond_0
    invoke-direct {p0, p1}, Lcom/waze/LayoutManager;->isAnyTouchClosesToolTip(Lcom/waze/TooltipType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2763
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903c1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2764
    .local v1, frame:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2765
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 2766
    new-instance v2, Lcom/waze/LayoutManager$27;

    invoke-direct {v2, p0}, Lcom/waze/LayoutManager$27;-><init>(Lcom/waze/LayoutManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2778
    .end local v1           #frame:Landroid/view/View;
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/waze/LayoutManager;->setCloseToolTipClickListener(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2779
    return-void
.end method

.method private setSplash()V
    .locals 3

    .prologue
    .line 2139
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 2141
    .local v0, nativeManager:Lcom/waze/NativeManager;
    if-nez v0, :cond_0

    .line 2142
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/waze/LayoutManager;->isSplashVisible:Z

    .line 2158
    :goto_0
    return-void

    .line 2153
    :cond_0
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->cancelSplash()V

    .line 2155
    invoke-virtual {v0}, Lcom/waze/NativeManager;->getNavBarManager()Lcom/waze/NavBarManager;

    move-result-object v1

    .line 2156
    .local v1, navBarManager:Lcom/waze/NavBarManager;
    invoke-virtual {v1, p0}, Lcom/waze/NavBarManager;->restore(Lcom/waze/LayoutManager;)V

    goto :goto_0
.end method

.method private setTooltipShowEvents(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 1
    .parameter "currentTooltip"
    .parameter "currentTooltip_ls"
    .parameter "text"

    .prologue
    .line 2730
    new-instance v0, Lcom/waze/LayoutManager$25;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/waze/LayoutManager$25;-><init>(Lcom/waze/LayoutManager;Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 2747
    return-void
.end method


# virtual methods
.method public ChangeFriendsBarButtonType(Z)V
    .locals 4
    .parameter "bIsDay"

    .prologue
    .line 2439
    const/4 v0, 0x0

    .line 2440
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 2441
    .local v1, drawble2:Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_1

    .line 2442
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020176

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2443
    iget-boolean v2, p0, Lcom/waze/LayoutManager;->bIsWaitingFriendsShown:Z

    if-eqz v2, :cond_0

    .line 2444
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02017a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2457
    :goto_0
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f09038d

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2458
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f09038f

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2459
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f090398

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2461
    return-void

    .line 2446
    :cond_0
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020178

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2448
    goto :goto_0

    .line 2449
    :cond_1
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020175

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2450
    iget-boolean v2, p0, Lcom/waze/LayoutManager;->bIsWaitingFriendsShown:Z

    if-eqz v2, :cond_2

    .line 2451
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020179

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2452
    goto :goto_0

    .line 2453
    :cond_2
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020177

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public ChangeReportMenuButton(Z)V
    .locals 4
    .parameter "bIsDay"

    .prologue
    .line 2540
    const/4 v1, 0x0

    .line 2542
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903b6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/button/SwipeableButton;

    .line 2543
    .local v0, button:Lcom/waze/view/button/SwipeableButton;
    if-eqz p1, :cond_1

    .line 2544
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020327

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2549
    :goto_0
    if-eqz v1, :cond_0

    .line 2550
    invoke-virtual {v0, v1}, Lcom/waze/view/button/SwipeableButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2551
    iget-object v2, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    if-eqz v2, :cond_0

    .line 2552
    iget-object v2, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v2, v1}, Lcom/waze/reports/ReportMenu;->setMenuButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2558
    :cond_0
    return-void

    .line 2546
    :cond_1
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020328

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public ChangeSearchBarOrientation(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const v4, 0x7f0903af

    const v3, 0x7f09039f

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2303
    iget-boolean v0, p0, Lcom/waze/LayoutManager;->isSearchBarVisible:Z

    if-eqz v0, :cond_0

    .line 2304
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2305
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2306
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2307
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0903a1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2308
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_ADDRESS__PLACE_OR_CONTACT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 2307
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2316
    :cond_0
    :goto_0
    return-void

    .line 2310
    :cond_1
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2311
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2312
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0903b1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2313
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_ADDRESS__PLACE_OR_CONTACT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 2312
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public CloseAlertTicker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1536
    iget-object v0, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v0, p0}, Lcom/waze/view/popups/AlertTicker;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/AlertTicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/view/popups/AlertTicker;->IsShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v0, p0}, Lcom/waze/view/popups/AlertTicker;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/AlertTicker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/waze/view/popups/AlertTicker;->RemoveAlertTicker(I)V

    .line 1538
    iget-object v0, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v0, p0}, Lcom/waze/view/popups/AlertTicker;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/AlertTicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/view/popups/AlertTicker;->Refresh()V

    .line 1540
    :cond_0
    iget-boolean v0, p0, Lcom/waze/LayoutManager;->mShouldRestoreNearing:Z

    if-eqz v0, :cond_1

    .line 1541
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->mShouldRestoreNearing:Z

    .line 1542
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavBar:Lcom/waze/navbar/NavBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavBar:Lcom/waze/navbar/NavBar;

    invoke-virtual {v0}, Lcom/waze/navbar/NavBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavBar:Lcom/waze/navbar/NavBar;

    invoke-virtual {v0}, Lcom/waze/navbar/NavBar;->restoreNearingPanel()V

    .line 1544
    :cond_1
    return-void
.end method

.method public CloseNavResultPopup()V
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    if-eqz v0, :cond_0

    .line 1736
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v0}, Lcom/waze/main/navigate/NavigationResult;->dismissNavigationResultDialogNoAnimation()V

    .line 1738
    :cond_0
    return-void
.end method

.method public ClosureMapEnableButton(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/waze/LayoutManager;->m_closureMap:Lcom/waze/reports/ClosureMap;

    invoke-virtual {v0, p1}, Lcom/waze/reports/ClosureMap;->EnableNextButton(I)V

    .line 220
    return-void
.end method

.method public CreateEditBox(I)Lcom/waze/EditBox;
    .locals 3
    .parameter "aType"

    .prologue
    .line 318
    packed-switch p1, :pswitch_data_0

    .line 326
    new-instance v0, Lcom/waze/EditBox;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v0, v1}, Lcom/waze/EditBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waze/LayoutManager;->mEditBoxView:Landroid/view/View;

    .line 328
    :goto_0
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->getEditBox()Lcom/waze/EditBox;

    move-result-object v0

    return-object v0

    .line 320
    :pswitch_0
    new-instance v0, Lcom/waze/EditBox;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v0, v1}, Lcom/waze/EditBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waze/LayoutManager;->mEditBoxView:Landroid/view/View;

    goto :goto_0

    .line 323
    :pswitch_1
    iget-object v0, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    const v1, 0x7f03004b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/LayoutManager;->mEditBoxView:Landroid/view/View;

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public CreateWebView(I)Lcom/waze/WzWebView;
    .locals 3
    .parameter "aFlags"

    .prologue
    .line 229
    new-instance v1, Lcom/waze/WzWebView;

    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v1, v2, p1}, Lcom/waze/WzWebView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    .line 230
    new-instance v0, Lcom/waze/LayoutManager$1;

    invoke-direct {v0, p0}, Lcom/waze/LayoutManager$1;-><init>(Lcom/waze/LayoutManager;)V

    .line 235
    .local v0, backCallback:Lcom/waze/WzWebView$WebViewBackCallback;
    iget-object v1, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    invoke-virtual {v1, v0}, Lcom/waze/WzWebView;->setBackCallback(Lcom/waze/WzWebView$WebViewBackCallback;)V

    .line 236
    iget-object v1, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    return-object v1
.end method

.method public HideEditBox()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/waze/LayoutManager;->mEditBoxView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->getEditBox()Lcom/waze/EditBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/EditBox;->HideSoftInput()V

    .line 362
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/waze/LayoutManager;->mEditBoxView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 363
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/LayoutManager;->mEditBoxView:Landroid/view/View;

    .line 366
    :cond_0
    return-void
.end method

.method public HideSoftInput(Landroid/view/View;)V
    .locals 3
    .parameter "aView"

    .prologue
    .line 2120
    invoke-direct {p0}, Lcom/waze/LayoutManager;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2121
    return-void
.end method

.method public HideWebView()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    invoke-virtual {p0, v0}, Lcom/waze/LayoutManager;->HideSoftInput(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/WzWebView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 308
    iget-object v0, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    invoke-virtual {v0}, Lcom/waze/WzWebView;->destroy()V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    .line 311
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 313
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 315
    :cond_0
    return-void
.end method

.method public InitMainMenu()V
    .locals 2

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    if-nez v0, :cond_0

    .line 1852
    new-instance v0, Lcom/waze/menus/MainMenu;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v0, v1, p0}, Lcom/waze/menus/MainMenu;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    iput-object v0, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    .line 1854
    :cond_0
    return-void
.end method

.method public InitPagesDots(IZ)V
    .locals 3
    .parameter "nIndexOfOnDot"
    .parameter "bInitVisiblity"

    .prologue
    .line 693
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    if-lt v0, v1, :cond_1

    .line 703
    if-eqz p2, :cond_0

    .line 704
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    rsub-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_3

    .line 708
    :cond_0
    return-void

    .line 694
    :cond_1
    iget-object v1, p0, Lcom/waze/LayoutManager;->mPages:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    if-ne v0, p1, :cond_2

    .line 697
    iget-object v1, p0, Lcom/waze/LayoutManager;->mPages:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f02012a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 693
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    :cond_2
    iget-object v1, p0, Lcom/waze/LayoutManager;->mPages:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f020129

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 705
    :cond_3
    iget-object v1, p0, Lcom/waze/LayoutManager;->mPages:[Landroid/widget/ImageView;

    rsub-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public InitReportMenu(ZZZ)V
    .locals 6
    .parameter "isRandomUser"
    .parameter "isFoursquareEnabled"
    .parameter "isClosureEnabled"

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    if-nez v0, :cond_0

    .line 1952
    new-instance v0, Lcom/waze/reports/ReportMenu;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/ReportMenu;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;ZZZ)V

    .line 1951
    iput-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    .line 1962
    :cond_0
    return-void
.end method

.method public IsAlerterShown()Z
    .locals 1

    .prologue
    .line 1581
    invoke-static {}, Lcom/waze/view/popups/AlerterPopUp;->IsAlerterShown()Z

    move-result v0

    return v0
.end method

.method public IsClosureRunning()Z
    .locals 1

    .prologue
    .line 2059
    iget-boolean v0, p0, Lcom/waze/LayoutManager;->bIsClosureRunning:Z

    return v0
.end method

.method public IsPopupsShown()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/waze/LayoutManager;->bIsPopUpShow:Z

    return v0
.end method

.method public OpenClosure(ZZZZ)V
    .locals 6
    .parameter "isRandomUser"
    .parameter "isFoursquareEnabled"
    .parameter "isClosureEnabled"
    .parameter "bIsServerRequest"

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    if-nez v0, :cond_0

    .line 2007
    new-instance v0, Lcom/waze/reports/ReportMenu;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/ReportMenu;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;ZZZ)V

    .line 2006
    iput-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    .line 2011
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-static {v0, v1, p0, p4}, Lcom/waze/reports/ClosureMap;->launch(Landroid/content/Context;Lcom/waze/reports/ReportMenu;Lcom/waze/LayoutManager;Z)V

    .line 2013
    return-void
.end method

.method public OpenFriendsOnlinePopUp(I)V
    .locals 4
    .parameter "timer"

    .prologue
    .line 1965
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 1973
    :goto_0
    return-void

    .line 1968
    :cond_0
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/FriendsOnlinePopUp;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/FriendsOnlinePopUp;

    move-result-object v0

    .line 1969
    .local v0, popup:Lcom/waze/view/popups/FriendsOnlinePopUp;
    iget-object v1, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    iget v2, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    invoke-virtual {v0}, Lcom/waze/view/popups/FriendsOnlinePopUp;->GetView()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1970
    invoke-virtual {v0, p1}, Lcom/waze/view/popups/FriendsOnlinePopUp;->setPopUpTimer(I)V

    .line 1971
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    .line 1972
    invoke-virtual {v0, p1}, Lcom/waze/view/popups/FriendsOnlinePopUp;->setCloseTime(I)V

    goto :goto_0
.end method

.method public OpenImageView(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "drawableImage"

    .prologue
    .line 1790
    new-instance v1, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    const v4, 0x7f06000f

    invoke-direct {v1, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1791
    .local v1, dialog:Landroid/app/Dialog;
    const v3, 0x7f030069

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1793
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_CLOSE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 1794
    .local v0, closeButtonTxt:Ljava/lang/String;
    const v3, 0x7f090322

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1796
    const v3, 0x7f09017b

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1797
    .local v2, image:Landroid/widget/ImageView;
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1799
    const v3, 0x7f090032

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/waze/LayoutManager$23;

    invoke-direct {v4, p0, v1}, Lcom/waze/LayoutManager$23;-><init>(Lcom/waze/LayoutManager;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1805
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1806
    return-void
.end method

.method public OpenNavResultPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/waze/user/FriendUserData;ZZ)V
    .locals 32
    .parameter "note"
    .parameter "goodMorning"
    .parameter "title"
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
    .parameter "is_trip_rsp"
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
    .line 1721
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/waze/LayoutManager;->pendingAddStop:Z

    if-eqz v1, :cond_0

    .line 1722
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/waze/LayoutManager;->pendingAddStop:Z

    .line 1723
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/waze/MainActivity;->startStopPointActivity(Z)V

    .line 1732
    :goto_0
    return-void

    .line 1726
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    if-nez v1, :cond_1

    new-instance v1, Lcom/waze/main/navigate/NavigationResult;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v1, v2}, Lcom/waze/main/navigate/NavigationResult;-><init>(Lcom/waze/ifs/ui/ActivityBase;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    .line 1727
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move/from16 v30, p29

    move/from16 v31, p30

    invoke-virtual/range {v1 .. v31}, Lcom/waze/main/navigate/NavigationResult;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/waze/user/FriendUserData;ZZ)V

    goto :goto_0
.end method

.method public OpenPave(ZZZ)V
    .locals 6
    .parameter "isRandomUser"
    .parameter "isFoursquareEnabled"
    .parameter "isClosureEnabled"

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    if-nez v0, :cond_0

    .line 2018
    new-instance v0, Lcom/waze/reports/ReportMenu;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/ReportMenu;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;ZZZ)V

    .line 2017
    iput-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    .line 2020
    :cond_0
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->showRoadRecording()V

    .line 2021
    return-void
.end method

.method public OpenPopUps()V
    .locals 13

    .prologue
    .line 875
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsOnline()I

    move-result v9

    .line 876
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsPending()I

    move-result v10

    .line 875
    invoke-virtual {p0, v9, v10}, Lcom/waze/LayoutManager;->RefreshBar(II)V

    .line 877
    new-instance v9, Lcom/waze/view/popups/MyPageAdapter;

    iget v10, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    iget-object v11, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    invoke-direct {v9, v10, v11}, Lcom/waze/view/popups/MyPageAdapter;-><init>(I[Landroid/view/View;)V

    iput-object v9, p0, Lcom/waze/LayoutManager;->adapter:Lcom/waze/view/popups/MyPageAdapter;

    .line 878
    iget-object v9, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v10, 0x7f09023f

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    .line 879
    .local v5, myPager:Landroid/support/v4/view/ViewPager;
    iget-object v9, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v10, 0x7f0903a4

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/waze/LayoutManager;->slideToBottom(Landroid/view/View;)V

    .line 882
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 883
    iget-object v9, p0, Lcom/waze/LayoutManager;->adapter:Lcom/waze/view/popups/MyPageAdapter;

    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 884
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/waze/LayoutManager;->InitPagesDots(IZ)V

    .line 885
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 887
    iget v9, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    instance-of v9, v9, Lcom/waze/view/popups/PoiPopUp;

    if-eqz v9, :cond_0

    .line 888
    iget-object v9, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    check-cast v9, Lcom/waze/view/popups/PopUp;

    invoke-virtual {v9}, Lcom/waze/view/popups/PopUp;->GetTimer()I

    move-result v9

    if-lez v9, :cond_1

    .line 889
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v9

    sget-object v10, Lcom/waze/PopupAction;->popup_shown:Lcom/waze/PopupAction;

    invoke-virtual {v10}, Lcom/waze/PopupAction;->ordinal()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/waze/NativeManager;->PopupAction(III)V

    .line 890
    const/4 v9, 0x0

    iput v9, p0, Lcom/waze/LayoutManager;->mLastPageNumber:I

    .line 891
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->CloseAlertTicker()V

    .line 895
    :cond_1
    iget-object v9, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    if-nez v9, :cond_2

    .line 972
    :goto_0
    return-void

    .line 899
    :cond_2
    iget v9, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_5

    .line 900
    iget-object v9, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v10, 0x7f0903a6

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 901
    iget-object v9, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    check-cast v9, Lcom/waze/view/popups/PopUp;

    invoke-virtual {v9}, Lcom/waze/view/popups/PopUp;->GetTimer()I

    move-result v9

    if-lez v9, :cond_3

    .line 902
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->SwitchPagePeriodicly()V

    .line 912
    :cond_3
    :goto_1
    new-instance v9, Lcom/waze/LayoutManager$14;

    invoke-direct {v9, p0}, Lcom/waze/LayoutManager$14;-><init>(Lcom/waze/LayoutManager;)V

    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 945
    iget-object v9, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    check-cast v9, Lcom/waze/view/popups/PopUp;

    invoke-virtual {v9}, Lcom/waze/view/popups/PopUp;->GetHeight()I

    move-result v0

    .line 947
    .local v0, Height:I
    iget-object v9, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v10, 0x7f0903a4

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 949
    .local v4, layout:Landroid/widget/RelativeLayout;
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v7, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 955
    .local v7, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 956
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 957
    .local v2, dm:Landroid/util/DisplayMetrics;
    iget-object v9, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Lcom/waze/ifs/ui/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 958
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 960
    const/16 v3, 0x37

    .line 961
    .local v3, dpValue:I
    iget-object v9, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v9}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->density:F

    .line 962
    .local v1, d:F
    int-to-float v9, v3

    mul-float/2addr v9, v1

    float-to-int v6, v9

    .line 963
    .local v6, nHeight:I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v6, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 968
    .end local v1           #d:F
    .end local v2           #dm:Landroid/util/DisplayMetrics;
    .end local v3           #dpValue:I
    .end local v6           #nHeight:I
    .end local v8           #wm:Landroid/view/WindowManager;
    :cond_4
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    .line 969
    invoke-direct {v9, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 968
    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 971
    iget-object v9, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v10, 0x7f0903a4

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 905
    .end local v0           #Height:I
    .end local v4           #layout:Landroid/widget/RelativeLayout;
    .end local v7           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    iget-object v9, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v10, 0x7f0903a6

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 907
    iget-object v9, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    check-cast v9, Lcom/waze/view/popups/PopUp;

    invoke-virtual {v9}, Lcom/waze/view/popups/PopUp;->GetTimer()I

    move-result v9

    if-lez v9, :cond_3

    .line 908
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->SwitchPagePeriodicly()V

    goto/16 :goto_1
.end method

.method public OpenSwipePopups()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 838
    iget-object v0, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    invoke-virtual {p0, v2}, Lcom/waze/LayoutManager;->SearchBarChangeStatus(Z)V

    .line 844
    iput-boolean v3, p0, Lcom/waze/LayoutManager;->bIsPopUpShow:Z

    .line 845
    iput v2, p0, Lcom/waze/LayoutManager;->mLastPageNumber:I

    .line 846
    iput-boolean v3, p0, Lcom/waze/LayoutManager;->bRefreshPageTime:Z

    .line 847
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0903ae

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 849
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->isNearNTV()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 850
    :cond_2
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavBar:Lcom/waze/navbar/NavBar;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavBar:Lcom/waze/navbar/NavBar;

    new-instance v1, Lcom/waze/LayoutManager$13;

    invoke-direct {v1, p0}, Lcom/waze/LayoutManager$13;-><init>(Lcom/waze/LayoutManager;)V

    invoke-virtual {v0, v3, v1}, Lcom/waze/navbar/NavBar;->AlertAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 870
    :cond_3
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->OpenPopUps()V

    goto :goto_0
.end method

.method public OpenSystemMessageWebPopUp(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 1810
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/SystemMessageWeb;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/SystemMessageWeb;

    move-result-object v0

    .line 1811
    .local v0, popup:Lcom/waze/view/popups/SystemMessageWeb;
    invoke-virtual {v0, p1}, Lcom/waze/view/popups/SystemMessageWeb;->show(Ljava/lang/String;)V

    .line 1812
    return-void
.end method

.method public OpenUpdatePricesPopUp(JJ)V
    .locals 2
    .parameter "cb"
    .parameter "lcontext"

    .prologue
    .line 1976
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/UpdateGasPopup;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/UpdateGasPopup;

    move-result-object v0

    .line 1977
    .local v0, popup:Lcom/waze/view/popups/UpdateGasPopup;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/waze/view/popups/UpdateGasPopup;->show(JJ)V

    .line 1978
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/waze/view/popups/UpdateGasPopup;->setCloseTime(I)V

    .line 1979
    return-void
.end method

.method public RefreshBar(II)V
    .locals 10
    .parameter "nFriendsOnline"
    .parameter "nFriendsPending"

    .prologue
    const/4 v9, 0x1

    const v8, 0x7f090396

    const v7, 0x7f09038c

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1220
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1221
    iput v6, p0, Lcom/waze/LayoutManager;->nMaxETA:I

    .line 1224
    :cond_0
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookLoggedInNTV()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1225
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->getContactLoggedInNTV()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1226
    :cond_1
    iget-boolean v3, p0, Lcom/waze/LayoutManager;->isSplashVisible:Z

    if-nez v3, :cond_6

    .line 1227
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->IsAlerterShown()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1228
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->IsPopupsShown()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/NativeManager;->GetShowScreenIconsNTV()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1229
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f09039b

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1230
    const v4, 0x7f02017b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1231
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f090392

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1232
    const v4, 0x7f02017b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1233
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f090393

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1234
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f09039c

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1236
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->showFriendsTooltip()V

    .line 1238
    if-lez p1, :cond_3

    .line 1239
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 1240
    .local v0, driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    new-instance v3, Lcom/waze/LayoutManager$19;

    invoke-direct {v3, p0}, Lcom/waze/LayoutManager$19;-><init>(Lcom/waze/LayoutManager;)V

    invoke-virtual {v0, v3}, Lcom/waze/navigate/DriveToNativeManager;->getEndDriveData(Lcom/waze/navigate/DriveToNativeManager$EndDriveListener;)V

    .line 1338
    .end local v0           #driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    :goto_0
    if-lez p2, :cond_4

    .line 1339
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f090391

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1340
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f09039a

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1341
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f09039a

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1342
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1341
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f090391

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1344
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1343
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1349
    :goto_1
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f090393

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1350
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1349
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1351
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f09039c

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1352
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1351
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    iget-boolean v3, p0, Lcom/waze/LayoutManager;->isFriendsBarVisible:Z

    if-eqz v3, :cond_2

    .line 1355
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 1356
    .local v2, orientation:I
    if-ne v2, v9, :cond_5

    .line 1357
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1358
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1364
    :goto_2
    iput-boolean v9, p0, Lcom/waze/LayoutManager;->bIsFriendsBarInitialized:Z

    .line 1397
    .end local v2           #orientation:I
    :cond_2
    :goto_3
    return-void

    .line 1332
    :cond_3
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f090395

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1333
    .local v1, endDriveFriendsLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1334
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1335
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f09038d

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1336
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f090397

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1346
    .end local v1           #endDriveFriendsLayout:Landroid/widget/RelativeLayout;
    :cond_4
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f09039a

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1347
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f090391

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1360
    .restart local v2       #orientation:I
    :cond_5
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1361
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1367
    .end local v2           #orientation:I
    :cond_6
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookLoggedInNTV()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1368
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->getContactLoggedInNTV()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1369
    iget-boolean v3, p0, Lcom/waze/LayoutManager;->isSplashVisible:Z

    if-nez v3, :cond_8

    .line 1370
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->IsAlerterShown()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1371
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->IsPopupsShown()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/NativeManager;->GetShowScreenIconsNTV()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1373
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->showFriendsTooltip()V

    .line 1375
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 1376
    .restart local v2       #orientation:I
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f09038d

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1377
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f090397

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1379
    if-ne v2, v9, :cond_7

    .line 1380
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1381
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1387
    :goto_4
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f09039b

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1388
    const v4, 0x7f02017c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1389
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f090392

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1390
    const v4, 0x7f02017c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1391
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f090393

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1392
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f09039c

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1383
    :cond_7
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1384
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1394
    .end local v2           #orientation:I
    :cond_8
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1395
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public ResizeWebView(Lcom/waze/LayoutManager$WazeRect;)V
    .locals 5
    .parameter "aRect"

    .prologue
    .line 269
    iget-object v3, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    if-nez v3, :cond_0

    .line 284
    :goto_0
    return-void

    .line 273
    :cond_0
    iget v3, p1, Lcom/waze/LayoutManager$WazeRect;->maxx:I

    iget v4, p1, Lcom/waze/LayoutManager$WazeRect;->minx:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 274
    .local v2, width:I
    iget v3, p1, Lcom/waze/LayoutManager$WazeRect;->maxy:I

    iget v4, p1, Lcom/waze/LayoutManager$WazeRect;->miny:I

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, 0x1

    .line 276
    .local v0, height:I
    iget-object v3, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    invoke-virtual {v3}, Lcom/waze/WzWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 277
    .local v1, webParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 278
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 279
    iget v3, p1, Lcom/waze/LayoutManager$WazeRect;->minx:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 280
    iget v3, p1, Lcom/waze/LayoutManager$WazeRect;->miny:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 282
    iget-object v3, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    invoke-virtual {v3, v1}, Lcom/waze/WzWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->requestLayout()V

    goto :goto_0
.end method

.method public RunDotOffAnimation(Landroid/widget/ImageView;[I)V
    .locals 4
    .parameter "image"
    .parameter "ImagesId"

    .prologue
    .line 1024
    const/4 v1, 0x0

    iput v1, p0, Lcom/waze/LayoutManager;->mDotsAnimationOffCount:I

    .line 1025
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1026
    .local v0, hn:Landroid/os/Handler;
    new-instance v1, Lcom/waze/LayoutManager$17;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/waze/LayoutManager$17;-><init>(Lcom/waze/LayoutManager;[ILandroid/widget/ImageView;Landroid/os/Handler;)V

    .line 1036
    const-wide/16 v2, 0x1e

    .line 1026
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1037
    return-void
.end method

.method public RunDotOnAnimation(Landroid/widget/ImageView;[I)V
    .locals 4
    .parameter "image"
    .parameter "ImagesId"

    .prologue
    .line 1008
    const/4 v1, 0x0

    iput v1, p0, Lcom/waze/LayoutManager;->mDotsAnimationOnCount:I

    .line 1009
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1010
    .local v0, hn:Landroid/os/Handler;
    new-instance v1, Lcom/waze/LayoutManager$16;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/waze/LayoutManager$16;-><init>(Lcom/waze/LayoutManager;[ILandroid/widget/ImageView;Landroid/os/Handler;)V

    .line 1020
    const-wide/16 v2, 0x64

    .line 1010
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1021
    return-void
.end method

.method public SearchBarChangeStatus(Z)V
    .locals 7
    .parameter "bIsVisible"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 633
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->IsPopupsShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f09039f

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 637
    .local v0, searchBarLayout:Landroid/view/View;
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903af

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 639
    .local v1, searchBarLayoutLs:Landroid/view/View;
    if-eqz p1, :cond_2

    .line 640
    iput-boolean v6, p0, Lcom/waze/LayoutManager;->isSearchBarVisible:Z

    .line 641
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903a1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 642
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_ADDRESS__PLACE_OR_CONTACT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 641
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903b1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 644
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_ADDRESS__PLACE_OR_CONTACT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 643
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_1

    .line 648
    invoke-virtual {p0, v0}, Lcom/waze/LayoutManager;->slideToBottomWithFade(Landroid/view/View;)V

    .line 651
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 653
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 655
    invoke-virtual {p0, v1}, Lcom/waze/LayoutManager;->slideToBottomWithFade(Landroid/view/View;)V

    goto :goto_0

    .line 659
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/waze/LayoutManager;->isSearchBarVisible:Z

    .line 660
    invoke-static {}, Lcom/waze/AppService;->getAppResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_3

    .line 661
    invoke-virtual {p0, v0}, Lcom/waze/LayoutManager;->slideToOutWithFade(Landroid/view/View;)V

    .line 662
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 664
    :cond_3
    invoke-virtual {p0, v1}, Lcom/waze/LayoutManager;->slideToOutWithFade(Landroid/view/View;)V

    .line 665
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public SetClosureMap(Lcom/waze/reports/ClosureMap;)V
    .locals 0
    .parameter "mapview"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/waze/LayoutManager;->m_closureMap:Lcom/waze/reports/ClosureMap;

    .line 216
    return-void
.end method

.method public SetDarkViewOffset(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 736
    return-void
.end method

.method public SetFriendsBarVisibilty(Z)V
    .locals 6
    .parameter "bIsVisible"

    .prologue
    const/16 v5, 0x8

    const v4, 0x7f090396

    const v3, 0x7f09038c

    const/4 v2, 0x0

    .line 1455
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1457
    .local v0, orientation:I
    iput-boolean p1, p0, Lcom/waze/LayoutManager;->isFriendsBarVisible:Z

    .line 1459
    iget-boolean v1, p0, Lcom/waze/LayoutManager;->isFriendsBarVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/waze/LayoutManager;->bIsFriendsBarInitialized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/waze/LayoutManager;->IsAlerterShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1460
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->IsPopupsShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1461
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1462
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1463
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1472
    :goto_0
    return-void

    .line 1465
    :cond_0
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1466
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1469
    :cond_1
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1470
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public SetInterruptTime(I)V
    .locals 0
    .parameter "nTime"

    .prologue
    .line 223
    if-lez p1, :cond_0

    .line 224
    iput p1, p0, Lcom/waze/LayoutManager;->mInterruptTime:I

    .line 226
    :cond_0
    return-void
.end method

.method public SetMenuButton()V
    .locals 2

    .prologue
    .line 2435
    iget v0, p0, Lcom/waze/LayoutManager;->nMenuType:I

    iget v1, p0, Lcom/waze/LayoutManager;->nOptionalNumber:I

    invoke-virtual {p0, v0, v1}, Lcom/waze/LayoutManager;->setMenuButtonType(II)V

    .line 2436
    return-void
.end method

.method public SetMenuMainButton()V
    .locals 4

    .prologue
    .line 2394
    const/4 v0, 0x1

    .line 2395
    .local v0, bIsDay:Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 2396
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/navigate/DriveToNativeManager;->isDayMode()Z

    move-result v0

    .line 2398
    :cond_0
    const/4 v1, 0x0

    .line 2399
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/waze/LayoutManager;->nMenuType:I

    if-nez v2, :cond_4

    .line 2400
    if-eqz v0, :cond_3

    .line 2401
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02023e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2427
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 2428
    iget-object v2, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    if-eqz v2, :cond_2

    .line 2429
    iget-object v2, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    invoke-virtual {v2, v1}, Lcom/waze/menus/MainMenu;->setMenuButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2432
    :cond_2
    return-void

    .line 2403
    :cond_3
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020245

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2405
    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/waze/LayoutManager;->nMenuType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 2406
    if-eqz v0, :cond_5

    .line 2407
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020243

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2408
    goto :goto_0

    .line 2409
    :cond_5
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020244

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2411
    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/waze/LayoutManager;->nMenuType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2412
    iget v2, p0, Lcom/waze/LayoutManager;->nOptionalNumber:I

    if-nez v2, :cond_8

    .line 2413
    if-eqz v0, :cond_7

    .line 2414
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02023f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2415
    goto :goto_0

    .line 2416
    :cond_7
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020240

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2418
    goto :goto_0

    .line 2419
    :cond_8
    if-eqz v0, :cond_9

    .line 2420
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020241

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2421
    goto :goto_0

    .line 2423
    :cond_9
    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020242

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2422
    goto/16 :goto_0
.end method

.method public SetPoiAction(Ljava/lang/String;)V
    .locals 1
    .parameter "Action"

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v0, p0}, Lcom/waze/view/popups/PoiPopUp;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/PoiPopUp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/waze/view/popups/PoiPopUp;->SetAction(Ljava/lang/String;)V

    .line 2391
    return-void
.end method

.method public SetPopUpInterrupt(Z)V
    .locals 3
    .parameter "bPermanent"

    .prologue
    .line 826
    if-eqz p1, :cond_1

    .line 827
    iget-object v1, p0, Lcom/waze/LayoutManager;->mRefreshPageRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 828
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f09023f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 829
    .local v0, myPager:Landroid/support/v4/view/ViewPager;
    iget-object v1, p0, Lcom/waze/LayoutManager;->mRefreshPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 830
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/LayoutManager;->mRefreshPageRunnable:Ljava/lang/Runnable;

    .line 835
    .end local v0           #myPager:Landroid/support/v4/view/ViewPager;
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/LayoutManager;->bRefreshPageTime:Z

    goto :goto_0
.end method

.method public ShowBonusWebPopup(ILjava/lang/String;II)V
    .locals 2
    .parameter "iID"
    .parameter "url"
    .parameter "lat"
    .parameter "lon"

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/BonusWebPopUP;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/BonusWebPopUP;

    move-result-object v0

    .line 1062
    .local v0, popup:Lcom/waze/view/popups/BonusWebPopUP;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/waze/view/popups/BonusWebPopUP;->show(ILjava/lang/String;II)V

    .line 1063
    return-void
.end method

.method public ShowEditBox(II)V
    .locals 5
    .parameter "aTopMargin"
    .parameter "aType"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 334
    iget-object v2, p0, Lcom/waze/LayoutManager;->mEditBoxView:Landroid/view/View;

    if-nez v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/waze/LayoutManager;->CreateEditBox(I)Lcom/waze/EditBox;

    .line 337
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 338
    .local v1, textParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 339
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 340
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 342
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/waze/LayoutManager;->mEditBoxView:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    iget-object v2, p0, Lcom/waze/LayoutManager;->mEditBoxView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/waze/LayoutManager;->mEditBoxView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 346
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 348
    iget-object v2, p0, Lcom/waze/LayoutManager;->mEditBoxView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 350
    new-instance v0, Lcom/waze/LayoutManager$2;

    invoke-direct {v0, p0}, Lcom/waze/LayoutManager$2;-><init>(Lcom/waze/LayoutManager;)V

    .line 356
    .local v0, showSoftInput:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/waze/LayoutManager;->mEditBoxView:Landroid/view/View;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    return-void
.end method

.method public ShowSoftInput(Landroid/view/View;)V
    .locals 2
    .parameter "aView"

    .prologue
    .line 2129
    invoke-direct {p0}, Lcom/waze/LayoutManager;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2130
    invoke-direct {p0}, Lcom/waze/LayoutManager;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2131
    return-void
.end method

.method public ShowWebView(Ljava/lang/String;Lcom/waze/LayoutManager$WazeRect;I)V
    .locals 5
    .parameter "aUrl"
    .parameter "aRect"
    .parameter "aFlags"

    .prologue
    .line 240
    iget-object v3, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    if-eqz v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 242
    iget-object v3, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    invoke-virtual {v3}, Lcom/waze/WzWebView;->destroy()V

    .line 243
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    .line 246
    :cond_0
    invoke-virtual {p0, p3}, Lcom/waze/LayoutManager;->CreateWebView(I)Lcom/waze/WzWebView;

    .line 248
    iget-object v3, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    invoke-virtual {v3}, Lcom/waze/WzWebView;->clearView()V

    .line 251
    iget v3, p2, Lcom/waze/LayoutManager$WazeRect;->maxx:I

    iget v4, p2, Lcom/waze/LayoutManager$WazeRect;->minx:I

    sub-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 252
    .local v2, width:I
    iget v3, p2, Lcom/waze/LayoutManager$WazeRect;->maxy:I

    iget v4, p2, Lcom/waze/LayoutManager$WazeRect;->miny:I

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, 0x1

    .line 253
    .local v0, height:I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 254
    .local v1, webParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p2, Lcom/waze/LayoutManager$WazeRect;->minx:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 255
    iget v3, p2, Lcom/waze/LayoutManager$WazeRect;->miny:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 257
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v3, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/waze/WzWebView;->setVisibility(I)V

    .line 261
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 262
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 264
    iget-object v3, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    invoke-virtual {v3, p1}, Lcom/waze/WzWebView;->loadUrl(Ljava/lang/String;)V

    .line 265
    iget-object v3, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    invoke-virtual {v3}, Lcom/waze/WzWebView;->requestFocus()Z

    .line 266
    return-void
.end method

.method public SwitchDot(II)V
    .locals 2
    .parameter "nIndexOfOnDot"
    .parameter "nIndexOfOffDot"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/waze/LayoutManager;->mPages:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const v1, 0x7f02012a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 712
    iget-object v0, p0, Lcom/waze/LayoutManager;->mPages:[Landroid/widget/ImageView;

    aget-object v0, v0, p2

    const v1, 0x7f020129

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 715
    return-void
.end method

.method public SwitchPagePeriodicly()V
    .locals 5

    .prologue
    .line 975
    iget-boolean v1, p0, Lcom/waze/LayoutManager;->bIsPopUpShow:Z

    if-eqz v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f09023f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 977
    .local v0, myPager:Landroid/support/v4/view/ViewPager;
    new-instance v1, Lcom/waze/LayoutManager$15;

    invoke-direct {v1, p0, v0}, Lcom/waze/LayoutManager$15;-><init>(Lcom/waze/LayoutManager;Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Lcom/waze/LayoutManager;->mRefreshPageRunnable:Ljava/lang/Runnable;

    .line 1003
    iget-object v2, p0, Lcom/waze/LayoutManager;->mRefreshPageRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    iget v3, p0, Lcom/waze/LayoutManager;->nPageNumber:I

    aget-object v1, v1, v3

    check-cast v1, Lcom/waze/view/popups/PopUp;

    invoke-virtual {v1}, Lcom/waze/view/popups/PopUp;->GetTimer()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1005
    .end local v0           #myPager:Landroid/support/v4/view/ViewPager;
    :cond_0
    return-void
.end method

.method public UpdateUserPopup(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1}, Lcom/waze/view/popups/UserPopUp;->getInstance(Landroid/app/Activity;)Lcom/waze/view/popups/UserPopUp;

    move-result-object v0

    .line 1072
    .local v0, popup:Lcom/waze/view/popups/UserPopUp;
    invoke-virtual {v0, p1, p2}, Lcom/waze/view/popups/UserPopUp;->update(II)V

    .line 1073
    return-void
.end method

.method public addView(Lcom/waze/view/popups/PopUp;)V
    .locals 4
    .parameter "popup"

    .prologue
    .line 1837
    iget-boolean v2, p0, Lcom/waze/LayoutManager;->mbPaused:Z

    if-eqz v2, :cond_0

    .line 1847
    :goto_0
    return-void

    .line 1839
    :cond_0
    invoke-virtual {p1}, Lcom/waze/view/popups/PopUp;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1840
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1843
    :cond_1
    invoke-direct {p0, p1}, Lcom/waze/LayoutManager;->popupsAdd(Lcom/waze/view/popups/PopUp;)V

    .line 1844
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903bd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1845
    .local v0, asrPopup:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1846
    .local v1, index:I
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public callCloseAllPopups(I)V
    .locals 4
    .parameter "byUser"

    .prologue
    .line 1083
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 1084
    .local v0, nm:Lcom/waze/NativeManager;
    sget-object v1, Lcom/waze/PopupAction;->popup_hidden:Lcom/waze/PopupAction;

    invoke-virtual {v1}, Lcom/waze/PopupAction;->ordinal()I

    move-result v1

    iget v2, p0, Lcom/waze/LayoutManager;->mLastPageNumber:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/NativeManager;->PopupAction(III)V

    .line 1085
    const/4 v1, -0x1

    iput v1, p0, Lcom/waze/LayoutManager;->mLastPageNumber:I

    .line 1086
    invoke-virtual {v0, p1}, Lcom/waze/NativeManager;->CloseAllPopups(I)V

    .line 1087
    return-void
.end method

.method public cancelSplash()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1815
    iget-object v0, p0, Lcom/waze/LayoutManager;->mAppView:Lcom/waze/MapViewWrapper;

    invoke-virtual {v0}, Lcom/waze/MapViewWrapper;->getMapView()Lcom/waze/MapView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/MapView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1816
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0903b3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1817
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0903b6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1818
    iput-boolean v2, p0, Lcom/waze/LayoutManager;->isSplashVisible:Z

    .line 1819
    return-void
.end method

.method public changeVoicePopupState(Z)V
    .locals 8
    .parameter "state"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1687
    const/4 p1, 0x1

    .line 1688
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    .line 1689
    .local v1, nativeManager:Lcom/waze/NativeManager;
    iget-object v4, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f0903be

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1690
    .local v3, status:Landroid/widget/TextView;
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_WAIT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1691
    const v4, 0x7f0203cf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1692
    iget-object v4, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f0903bf

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 1693
    .local v2, progressBar:Landroid/widget/ProgressBar;
    if-eqz p1, :cond_0

    .line 1694
    iget-object v4, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    const v5, 0x7f040004

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1695
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1696
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1697
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1703
    .end local v0           #animation:Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 1699
    :cond_0
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1700
    invoke-virtual {v3}, Landroid/widget/TextView;->clearAnimation()V

    .line 1701
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public closeFriendsOnlinePopup()V
    .locals 2

    .prologue
    .line 1155
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/FriendsOnlinePopUp;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/FriendsOnlinePopUp;

    move-result-object v0

    .line 1156
    .local v0, popup:Lcom/waze/view/popups/FriendsOnlinePopUp;
    invoke-virtual {v0}, Lcom/waze/view/popups/FriendsOnlinePopUp;->hide()V

    .line 1157
    return-void
.end method

.method public closePoi()V
    .locals 2

    .prologue
    .line 1055
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/PoiPopUp;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/PoiPopUp;

    move-result-object v0

    .line 1056
    .local v0, popup:Lcom/waze/view/popups/PoiPopUp;
    invoke-virtual {v0}, Lcom/waze/view/popups/PoiPopUp;->hide()V

    .line 1058
    return-void
.end method

.method public closeProgressPopup()V
    .locals 2

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0903ba

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1635
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0903bb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/map/ProgressAnimation;

    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->stop()V

    .line 1636
    return-void
.end method

.method public closeShareTooltip()V
    .locals 2

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/waze/LayoutManager;->isTooltipShareShown:Z

    sget-object v1, Lcom/waze/TooltipType;->SHARE:Lcom/waze/TooltipType;

    invoke-direct {p0, v0, v1}, Lcom/waze/LayoutManager;->closeTooltip(ZLcom/waze/TooltipType;)V

    .line 630
    return-void
.end method

.method public closeThumbsUpPopup()V
    .locals 2

    .prologue
    .line 1547
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/ThumbsUpPopUP;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/ThumbsUpPopUP;

    move-result-object v0

    .line 1548
    .local v0, popup:Lcom/waze/view/popups/ThumbsUpPopUP;
    invoke-virtual {v0}, Lcom/waze/view/popups/ThumbsUpPopUP;->hide()V

    .line 1549
    return-void
.end method

.method public closeUserPopup()V
    .locals 2

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1}, Lcom/waze/view/popups/UserPopUp;->getInstance(Landroid/app/Activity;)Lcom/waze/view/popups/UserPopUp;

    move-result-object v0

    .line 1077
    .local v0, popup:Lcom/waze/view/popups/UserPopUp;
    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {v0}, Lcom/waze/view/popups/UserPopUp;->hide()V

    .line 1080
    :cond_0
    return-void
.end method

.method public closeVoicePopup()V
    .locals 3

    .prologue
    .line 1706
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0903bd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1707
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0903be

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1708
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 1709
    return-void
.end method

.method public createNavBar()Lcom/waze/navbar/NavBar;
    .locals 3

    .prologue
    .line 1883
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->getLanguageRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1884
    new-instance v0, Lcom/waze/navbar/NavBar;

    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0903ad

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/waze/LayoutManager;->getBottomBar()Lcom/waze/view/navbar/BottomBar;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/waze/navbar/NavBar;-><init>(Landroid/view/View;Lcom/waze/view/navbar/BottomBar;)V

    iput-object v0, p0, Lcom/waze/LayoutManager;->mNavBar:Lcom/waze/navbar/NavBar;

    .line 1889
    :goto_0
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavBar:Lcom/waze/navbar/NavBar;

    return-object v0

    .line 1886
    :cond_0
    new-instance v0, Lcom/waze/navbar/NavBar;

    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0903ac

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/waze/LayoutManager;->getBottomBar()Lcom/waze/view/navbar/BottomBar;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/waze/navbar/NavBar;-><init>(Landroid/view/View;Lcom/waze/view/navbar/BottomBar;)V

    iput-object v0, p0, Lcom/waze/LayoutManager;->mNavBar:Lcom/waze/navbar/NavBar;

    goto :goto_0
.end method

.method public dismiss(Lcom/waze/view/popups/PopUp;)V
    .locals 1
    .parameter "popup"

    .prologue
    .line 1831
    invoke-direct {p0, p1}, Lcom/waze/LayoutManager;->popupsRemove(Lcom/waze/view/popups/PopUp;)V

    .line 1832
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1833
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1834
    return-void
.end method

.method public displayBottomPrivacyMessage()V
    .locals 4

    .prologue
    .line 1822
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->getBottomNotification()Lcom/waze/view/bottom/BottomNotification;

    move-result-object v0

    .line 1823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ADDING_YOU_TO_THE_MAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1824
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 1825
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_TAP_FOR_OPTIONS:Lcom/waze/strings/DisplayStrings;

    .line 1824
    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1823
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1825
    const/4 v2, 0x5

    .line 1822
    invoke-virtual {v0, v1, v2}, Lcom/waze/view/bottom/BottomNotification;->setShortMessage(Ljava/lang/String;I)V

    .line 1827
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->getBottomNotification()Lcom/waze/view/bottom/BottomNotification;

    move-result-object v0

    sget-object v1, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->MY_WAZE_ACTIVITY:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    invoke-virtual {v0, v1}, Lcom/waze/view/bottom/BottomNotification;->setListener(Lcom/waze/view/bottom/BottomNotificationOnClickIntent;)V

    .line 1828
    return-void
.end method

.method public displayVoiceError()V
    .locals 4

    .prologue
    .line 2365
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 2366
    .local v0, nativeManager:Lcom/waze/NativeManager;
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903be

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2367
    .local v1, status:Landroid/widget/TextView;
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NO_CONNECTION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2368
    const v2, 0x7f0203cf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2369
    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 2370
    return-void
.end method

.method public displayVoiceListening()V
    .locals 4

    .prologue
    .line 2379
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 2380
    .local v0, nativeManager:Lcom/waze/NativeManager;
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903be

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2381
    .local v1, status:Landroid/widget/TextView;
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LISTENINGPPP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2382
    const v2, 0x7f0203ce

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2383
    return-void
.end method

.method public displayVoiceWait()V
    .locals 3

    .prologue
    .line 2373
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 2374
    .local v0, nativeManager:Lcom/waze/NativeManager;
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0903be

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2375
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_WAIT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 2374
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2376
    return-void
.end method

.method public doneCloseAllPopups()V
    .locals 10

    .prologue
    const v9, 0x7f0903a4

    const v8, 0x7f09023f

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1098
    iput-boolean v5, p0, Lcom/waze/LayoutManager;->bIsPopUpShow:Z

    .line 1099
    iget-object v3, p0, Lcom/waze/LayoutManager;->mRefreshPageRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 1100
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 1101
    .local v1, myPager:Landroid/support/v4/view/ViewPager;
    iget-object v3, p0, Lcom/waze/LayoutManager;->mRefreshPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1102
    iput-object v7, p0, Lcom/waze/LayoutManager;->mRefreshPageRunnable:Ljava/lang/Runnable;

    .line 1104
    .end local v1           #myPager:Landroid/support/v4/view/ViewPager;
    :cond_0
    iput v5, p0, Lcom/waze/LayoutManager;->nPageNumber:I

    .line 1105
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsOnline()I

    move-result v3

    .line 1106
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsPending()I

    move-result v4

    .line 1105
    invoke-virtual {p0, v3, v4}, Lcom/waze/LayoutManager;->RefreshBar(II)V

    .line 1107
    iput-boolean v5, p0, Lcom/waze/LayoutManager;->bIsTicker:Z

    .line 1108
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/waze/LayoutManager;->slideToOut(Landroid/view/View;)V

    .line 1109
    iget v3, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    if-lez v3, :cond_1

    .line 1110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    if-lt v0, v3, :cond_4

    .line 1114
    iput v5, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    .line 1115
    iput-object v7, p0, Lcom/waze/LayoutManager;->adapter:Lcom/waze/view/popups/MyPageAdapter;

    .line 1118
    .end local v0           #i:I
    :cond_1
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0903ae

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 1121
    .restart local v1       #myPager:Landroid/support/v4/view/ViewPager;
    invoke-virtual {v1, v6}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1122
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 1128
    .local v2, nm:Lcom/waze/NativeManager;
    invoke-virtual {v2}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->isNearNTV()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1129
    :cond_2
    iget-object v3, p0, Lcom/waze/LayoutManager;->mNavBar:Lcom/waze/navbar/NavBar;

    if-eqz v3, :cond_3

    .line 1130
    iget-object v3, p0, Lcom/waze/LayoutManager;->mNavBar:Lcom/waze/navbar/NavBar;

    invoke-virtual {v3, v5}, Lcom/waze/navbar/NavBar;->ChangeToAlertMode(Z)V

    .line 1134
    :cond_3
    return-void

    .line 1111
    .end local v1           #myPager:Landroid/support/v4/view/ViewPager;
    .end local v2           #nm:Lcom/waze/NativeManager;
    .restart local v0       #i:I
    :cond_4
    iget-object v3, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    aget-object v3, v3, v0

    check-cast v3, Lcom/waze/view/popups/PopUp;

    invoke-virtual {v3}, Lcom/waze/view/popups/PopUp;->hide()V

    .line 1112
    iget-object v3, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    aput-object v7, v3, v0

    .line 1110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAppView()Lcom/waze/MapViewWrapper;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/waze/LayoutManager;->mAppView:Lcom/waze/MapViewWrapper;

    return-object v0
.end method

.method public getBottomBar()Lcom/waze/view/navbar/BottomBar;
    .locals 2

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090389

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/navbar/BottomBar;

    return-object v0
.end method

.method public getBottomNotification()Lcom/waze/view/bottom/BottomNotification;
    .locals 2

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f09038a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/bottom/BottomNotification;

    return-object v0
.end method

.method public getDelayedReportButtonLocation()[I
    .locals 1

    .prologue
    .line 2336
    const v0, 0x7f0903b8

    invoke-direct {p0, v0}, Lcom/waze/LayoutManager;->getLocation(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getEditBox()Lcom/waze/EditBox;
    .locals 3

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, editBox:Lcom/waze/EditBox;
    iget-object v1, p0, Lcom/waze/LayoutManager;->mEditBoxView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/waze/LayoutManager;->mEditBoxView:Landroid/view/View;

    sget-object v2, Lcom/waze/EditBox;->WAZE_EDITBOX_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0           #editBox:Lcom/waze/EditBox;
    check-cast v0, Lcom/waze/EditBox;

    .line 211
    .restart local v0       #editBox:Lcom/waze/EditBox;
    :cond_0
    return-object v0
.end method

.method public getMainLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getMainMenu()Lcom/waze/menus/MainMenu;
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    return-object v0
.end method

.method public getNotifyFriends()[Lcom/waze/user/FriendUserData;
    .locals 1

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    if-eqz v0, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v0}, Lcom/waze/main/navigate/NavigationResult;->getNotifyFriends()[Lcom/waze/user/FriendUserData;

    move-result-object v0

    .line 1745
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRoadRecordingTabLocation()[I
    .locals 1

    .prologue
    .line 2341
    const v0, 0x7f0903b9

    invoke-direct {p0, v0}, Lcom/waze/LayoutManager;->getLocation(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Lcom/waze/WzWebView;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/waze/LayoutManager;->mWebView:Lcom/waze/WzWebView;

    return-object v0
.end method

.method public hideAlerterPopup()V
    .locals 3

    .prologue
    .line 1621
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/AlerterPopUp;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/AlerterPopUp;

    move-result-object v0

    .line 1622
    .local v0, popup:Lcom/waze/view/popups/AlerterPopUp;
    invoke-virtual {v0}, Lcom/waze/view/popups/AlerterPopUp;->hide()V

    .line 1623
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsOnline()I

    move-result v1

    .line 1624
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsPending()I

    move-result v2

    .line 1623
    invoke-virtual {p0, v1, v2}, Lcom/waze/LayoutManager;->RefreshBar(II)V

    .line 1625
    return-void
.end method

.method public isAnyMenuOpen()Z
    .locals 1

    .prologue
    .line 2361
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->mainMenuInit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/waze/LayoutManager;->reportMenuShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPoiPreloaded(I)Z
    .locals 2
    .parameter "iID"

    .prologue
    .line 1048
    invoke-static {}, Lcom/waze/view/popups/PoiPopUp;->hasInstance()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1051
    :goto_0
    return v1

    .line 1050
    :cond_0
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/PoiPopUp;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/PoiPopUp;

    move-result-object v0

    .line 1051
    .local v0, popup:Lcom/waze/view/popups/PoiPopUp;
    invoke-virtual {v0, p1}, Lcom/waze/view/popups/PoiPopUp;->isPreloaded(I)Z

    move-result v1

    goto :goto_0
.end method

.method public isPopupShown()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/waze/LayoutManager;->popupShown:Z

    return v0
.end method

.method public isSplashVisible()Z
    .locals 1

    .prologue
    .line 2386
    iget-boolean v0, p0, Lcom/waze/LayoutManager;->isSplashVisible:Z

    return v0
.end method

.method public mainMenuInit()Z
    .locals 1

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    iget-boolean v0, v0, Lcom/waze/menus/MainMenu;->isVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mainMenuShown()Z
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    iget-boolean v0, v0, Lcom/waze/menus/MainMenu;->isVisible:Z

    if-nez v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1568
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->IsAccountDetailsShown()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1569
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->IsNameYourWazerShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1567
    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method makeEasing(Landroid/view/View;D)V
    .locals 12
    .parameter "view"
    .parameter "finalX"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 741
    const-wide/high16 v8, 0x4069

    .line 742
    .local v8, mFinalX:D
    const-wide/16 v10, 0x0

    .line 745
    .local v10, mStartX:D
    new-instance v0, Lcom/waze/animation/easing/AnimationEasingManager;

    new-instance v1, Lcom/waze/LayoutManager$12;

    invoke-direct {v1, p0, p1}, Lcom/waze/LayoutManager$12;-><init>(Lcom/waze/LayoutManager;Landroid/view/View;)V

    invoke-direct {v0, v1}, Lcom/waze/animation/easing/AnimationEasingManager;-><init>(Lcom/waze/animation/easing/AnimationEasingManager$EasingCallback;)V

    .line 761
    .local v0, manager:Lcom/waze/animation/easing/AnimationEasingManager;
    const-class v1, Lcom/waze/animation/easing/Bounce;

    sget-object v2, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseOut:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x4069

    const/16 v7, 0x9c4

    invoke-virtual/range {v0 .. v7}, Lcom/waze/animation/easing/AnimationEasingManager;->start(Ljava/lang/Class;Lcom/waze/animation/easing/AnimationEasingManager$EaseType;DDI)V

    .line 762
    return-void
.end method

.method public navResultOpenAddFromActivity()V
    .locals 1

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    if-eqz v0, :cond_0

    .line 1763
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v0}, Lcom/waze/main/navigate/NavigationResult;->openAddFromActivity()V

    .line 1765
    :cond_0
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 8
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v7, 0x8005

    const v6, 0x8004

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 2200
    const/4 v2, 0x3

    if-ne p3, v2, :cond_2

    .line 2201
    iget-object v2, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    if-eqz v2, :cond_0

    .line 2202
    iget-object v2, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    invoke-virtual {v2}, Lcom/waze/menus/MainMenu;->dismiss()V

    .line 2204
    :cond_0
    iget-object v2, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    if-eqz v2, :cond_1

    .line 2205
    iget-object v2, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v2}, Lcom/waze/reports/ReportMenu;->dismiss()V

    .line 2207
    :cond_1
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->closeUserPopup()V

    .line 2210
    :cond_2
    const v2, 0x8001

    if-eq p2, v2, :cond_3

    .line 2211
    const v2, 0x8002

    if-eq p2, v2, :cond_3

    .line 2212
    const v2, 0x8008

    if-eq p2, v2, :cond_3

    .line 2213
    const v2, 0x8010

    if-ne p2, v2, :cond_9

    .line 2214
    :cond_3
    iget-object v2, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    if-eqz v2, :cond_4

    .line 2215
    iget-object v2, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/waze/reports/ReportMenu;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 2239
    :cond_4
    :goto_0
    if-ne p2, v7, :cond_8

    .line 2240
    const/16 v2, 0x3e9

    if-ne p3, v2, :cond_5

    .line 2241
    invoke-static {}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getInstance()Lcom/waze/rtalerts/RTAlertsNativeManager;

    move-result-object v1

    .line 2243
    .local v1, mgr:Lcom/waze/rtalerts/RTAlertsNativeManager;
    const-string v2, "PopUp alert id"

    invoke-virtual {p4, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2245
    .local v0, alertId:I
    invoke-virtual {v1, v0}, Lcom/waze/rtalerts/RTAlertsNativeManager;->showAlertPopUp(I)V

    .line 2246
    iget-object v2, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v2}, Lcom/waze/reports/ReportMenu;->dismiss()V

    .line 2248
    .end local v0           #alertId:I
    .end local v1           #mgr:Lcom/waze/rtalerts/RTAlertsNativeManager;
    :cond_5
    const/16 v2, 0x3ea

    if-ne p3, v2, :cond_7

    .line 2249
    iget-object v2, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    invoke-virtual {v2}, Lcom/waze/menus/MainMenu;->close()V

    .line 2250
    :cond_6
    invoke-virtual {p0, v3}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 2252
    :cond_7
    if-ne p3, v4, :cond_8

    .line 2253
    iget-object v2, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    invoke-virtual {v2}, Lcom/waze/menus/MainMenu;->close()V

    .line 2257
    :cond_8
    return-void

    .line 2217
    :cond_9
    const v2, 0x8003

    if-eq p2, v2, :cond_a

    .line 2218
    if-eq p2, v7, :cond_a

    .line 2219
    if-eq p2, v6, :cond_a

    const v2, 0x8006

    if-eq p2, v2, :cond_a

    .line 2220
    const v2, 0x8007

    if-eq p2, v2, :cond_a

    .line 2221
    const v2, 0x8009

    if-eq p2, v2, :cond_a

    .line 2222
    const v2, 0x800d

    if-eq p2, v2, :cond_a

    .line 2223
    const v2, 0x800a

    if-eq p2, v2, :cond_a

    const/16 v2, 0x200

    if-ne p2, v2, :cond_e

    .line 2224
    :cond_a
    if-eq p3, v4, :cond_b

    if-eq p3, v3, :cond_b

    .line 2225
    if-ne p3, v5, :cond_c

    .line 2226
    :cond_b
    iget-object v2, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    if-eqz v2, :cond_c

    .line 2227
    iget-object v2, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    invoke-virtual {v2}, Lcom/waze/menus/MainMenu;->dismiss()V

    .line 2230
    :cond_c
    if-eq p2, v6, :cond_d

    if-ne p3, v3, :cond_d

    .line 2231
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/MainActivity;->startNavigateActivity()V

    .line 2233
    :cond_d
    if-ne p3, v5, :cond_4

    .line 2234
    iput-boolean v3, p0, Lcom/waze/LayoutManager;->pendingAddStop:Z

    goto :goto_0

    .line 2236
    :cond_e
    const v2, 0x8011

    if-ne p2, v2, :cond_4

    .line 2237
    iget-object v2, p0, Lcom/waze/LayoutManager;->mNavBar:Lcom/waze/navbar/NavBar;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/waze/navbar/NavBar;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onBackPressed()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 370
    invoke-direct {p0}, Lcom/waze/LayoutManager;->popupsSize()I

    move-result v0

    .line 372
    .local v0, count:I
    if-gtz v0, :cond_1

    iget v4, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    if-lez v4, :cond_0

    .line 373
    iget-object v4, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    iget v5, p0, Lcom/waze/LayoutManager;->nPageNumber:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    .line 374
    iget-object v2, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    iget v4, p0, Lcom/waze/LayoutManager;->nPageNumber:I

    aget-object v2, v2, v4

    check-cast v2, Lcom/waze/view/popups/PopUp;

    invoke-virtual {v2}, Lcom/waze/view/popups/PopUp;->onBackPressed()V

    move v2, v3

    .line 386
    :cond_0
    :goto_0
    return v2

    .line 383
    :cond_1
    iget-object v2, p0, Lcom/waze/LayoutManager;->popups:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/view/popups/PopUp;

    .line 384
    .local v1, popup:Lcom/waze/view/popups/PopUp;
    invoke-virtual {v1}, Lcom/waze/view/popups/PopUp;->onBackPressed()V

    move v2, v3

    .line 386
    goto :goto_0
.end method

.method public onLanguageInitialized()V
    .locals 5

    .prologue
    .line 2346
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 2347
    .local v0, nativeManager:Lcom/waze/NativeManager;
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SLIDE_TO_NAVIGATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 2348
    .local v2, slideText:Ljava/lang/String;
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_REPORT_TRAFFIC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 2349
    .local v1, reportTrafficText:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/waze/LayoutManager;->useSwipeableButtons:Z

    if-eqz v3, :cond_0

    .line 2350
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0903b3

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/button/SwipeableButton;

    invoke-virtual {v3, v2}, Lcom/waze/view/button/SwipeableButton;->setText(Ljava/lang/String;)V

    .line 2351
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0903b6

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/button/SwipeableButton;

    .line 2352
    invoke-virtual {v3, v1}, Lcom/waze/view/button/SwipeableButton;->setText(Ljava/lang/String;)V

    .line 2354
    :cond_0
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0903be

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2355
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_WAIT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 2354
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2356
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0903c0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2357
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_TAP_TO_CANCEL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 2356
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2358
    return-void
.end method

.method public onMainMenuClosed()V
    .locals 0

    .prologue
    .line 2320
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 9
    .parameter "orientation"

    .prologue
    const v8, 0x7f0903b7

    const/4 v7, 0x1

    .line 2261
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 2262
    .local v0, mainActivity:Lcom/waze/MainActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->IsRunning()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2263
    :cond_0
    iput-boolean v7, p0, Lcom/waze/LayoutManager;->mOrientationEventPending:Z

    .line 2300
    :goto_0
    return-void

    .line 2267
    :cond_1
    iget-object v6, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    if-eqz v6, :cond_2

    .line 2268
    iget-object v6, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v6, p1}, Lcom/waze/reports/ReportMenu;->onOrientationChanged(I)V

    .line 2270
    :cond_2
    iget-object v6, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    if-eqz v6, :cond_3

    .line 2271
    iget-object v6, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v6, p1}, Lcom/waze/reports/ReportMenu;->onOrientationChanged(I)V

    .line 2273
    :cond_3
    iget-object v6, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    if-eqz v6, :cond_4

    .line 2274
    iget-object v6, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    invoke-virtual {v6, p1}, Lcom/waze/menus/MainMenu;->onOrientationChanged(I)V

    .line 2276
    :cond_4
    iget-object v6, p0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    if-eqz v6, :cond_5

    .line 2277
    iget-object v6, p0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v6, p1}, Lcom/waze/main/navigate/NavigationResult;->onOrientationChanged(I)V

    .line 2279
    :cond_5
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    .line 2280
    .local v3, nativeManager:Lcom/waze/NativeManager;
    if-eqz v3, :cond_6

    .line 2281
    invoke-virtual {v3}, Lcom/waze/NativeManager;->getNavBarManager()Lcom/waze/NavBarManager;

    move-result-object v4

    .line 2282
    .local v4, navBarManager:Lcom/waze/NavBarManager;
    invoke-virtual {v4, p1}, Lcom/waze/NavBarManager;->onOrientationChanged(I)V

    .line 2284
    .end local v4           #navBarManager:Lcom/waze/NavBarManager;
    :cond_6
    const/4 v6, 0x2

    if-ne p1, v6, :cond_8

    .line 2285
    iget-object v6, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2286
    .local v2, movingButtons:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2287
    .local v1, movingButtonParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    .line 2288
    .local v5, scale:F
    const/high16 v6, 0x42c8

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2289
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2298
    .end local v1           #movingButtonParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #movingButtons:Landroid/view/View;
    .end local v5           #scale:F
    :cond_7
    :goto_1
    invoke-virtual {p0, p1}, Lcom/waze/LayoutManager;->ChangeSearchBarOrientation(I)V

    goto :goto_0

    .line 2290
    :cond_8
    if-ne p1, v7, :cond_7

    .line 2291
    iget-object v6, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2292
    .restart local v2       #movingButtons:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2293
    .restart local v1       #movingButtonParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    .line 2294
    .restart local v5       #scale:F
    const/high16 v6, 0x4316

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2295
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 2323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/LayoutManager;->mbPaused:Z

    .line 2324
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2327
    iput-boolean v2, p0, Lcom/waze/LayoutManager;->mbPaused:Z

    .line 2328
    iget-boolean v1, p0, Lcom/waze/LayoutManager;->mOrientationEventPending:Z

    if-eqz v1, :cond_0

    .line 2329
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2330
    .local v0, orientation:I
    invoke-virtual {p0, v0}, Lcom/waze/LayoutManager;->onOrientationChanged(I)V

    .line 2331
    iput-boolean v2, p0, Lcom/waze/LayoutManager;->mOrientationEventPending:Z

    .line 2333
    .end local v0           #orientation:I
    :cond_0
    return-void
.end method

.method public openAlertPopup(Lcom/waze/rtalerts/RTAlertsAlertData;IILjava/lang/String;I)V
    .locals 3
    .parameter "alertData"
    .parameter "x"
    .parameter "y"
    .parameter "sUserImageUrl"
    .parameter "nTimeout"

    .prologue
    .line 1139
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 1147
    :goto_0
    return-void

    .line 1142
    :cond_0
    new-instance v0, Lcom/waze/view/popups/AlertPopUp;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v0, v1, p0}, Lcom/waze/view/popups/AlertPopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 1143
    .local v0, popup:Lcom/waze/view/popups/AlertPopUp;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/waze/view/popups/AlertPopUp;->InitView(Lcom/waze/rtalerts/RTAlertsAlertData;IILjava/lang/String;)V

    .line 1144
    invoke-virtual {v0, p5}, Lcom/waze/view/popups/AlertPopUp;->setPopUpTimer(I)V

    .line 1145
    iget-object v1, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    iget v2, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    aput-object v0, v1, v2

    .line 1146
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    goto :goto_0
.end method

.method public openAlertTicker(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "nType"
    .parameter "mMood"
    .parameter "UserImageUrl"
    .parameter "Index"

    .prologue
    const/4 v2, 0x1

    .line 1521
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/AlertTicker;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/AlertTicker;

    move-result-object v0

    .line 1523
    .local v0, popup:Lcom/waze/view/popups/AlertTicker;
    invoke-virtual {v0}, Lcom/waze/view/popups/AlertTicker;->IsShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1524
    invoke-virtual {v0, v2}, Lcom/waze/view/popups/AlertTicker;->ChangeImage(Z)V

    .line 1527
    :cond_0
    iget-object v1, p0, Lcom/waze/LayoutManager;->mNavBar:Lcom/waze/navbar/NavBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/waze/LayoutManager;->mNavBar:Lcom/waze/navbar/NavBar;

    invoke-virtual {v1}, Lcom/waze/navbar/NavBar;->canMinimizeNearing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1528
    iput-boolean v2, p0, Lcom/waze/LayoutManager;->mShouldRestoreNearing:Z

    .line 1529
    iget-object v1, p0, Lcom/waze/LayoutManager;->mNavBar:Lcom/waze/navbar/NavBar;

    invoke-virtual {v1}, Lcom/waze/navbar/NavBar;->minimizeNearingPanel()V

    .line 1531
    :cond_1
    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/waze/view/popups/AlertTicker;->show(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1533
    return-void
.end method

.method public openBeepPopup(Lcom/waze/rtalerts/RTAlertsThumbsUpData;Ljava/lang/String;I)V
    .locals 3
    .parameter "thumbsUpData"
    .parameter "UserImageUrl"
    .parameter "nTimeOut"

    .prologue
    .line 1497
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 1506
    :goto_0
    return-void

    .line 1500
    :cond_0
    new-instance v0, Lcom/waze/view/popups/BeepPopUp;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v0, v1, p0}, Lcom/waze/view/popups/BeepPopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 1501
    .local v0, popup:Lcom/waze/view/popups/BeepPopUp;
    invoke-virtual {v0, p1, p2}, Lcom/waze/view/popups/BeepPopUp;->GetView(Lcom/waze/rtalerts/RTAlertsThumbsUpData;Ljava/lang/String;)Landroid/view/View;

    .line 1502
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/LayoutManager;->bIsTicker:Z

    .line 1503
    invoke-virtual {v0, p3}, Lcom/waze/view/popups/BeepPopUp;->setPopUpTimer(I)V

    .line 1504
    iget-object v1, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    iget v2, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    aput-object v0, v1, v2

    .line 1505
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    goto :goto_0
.end method

.method public openCommentPopup(Lcom/waze/rtalerts/RTAlertsCommentData;Ljava/lang/String;I)V
    .locals 3
    .parameter "commentData"
    .parameter "UserImageUrl"
    .parameter "nTimeout"

    .prologue
    .line 1475
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 1483
    :goto_0
    return-void

    .line 1478
    :cond_0
    new-instance v0, Lcom/waze/view/popups/CommentPopUP;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v0, v1, p0}, Lcom/waze/view/popups/CommentPopUP;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 1479
    .local v0, popup:Lcom/waze/view/popups/CommentPopUP;
    invoke-virtual {v0, p1, p2}, Lcom/waze/view/popups/CommentPopUP;->GetView(Lcom/waze/rtalerts/RTAlertsCommentData;Ljava/lang/String;)Landroid/view/View;

    .line 1480
    invoke-virtual {v0, p3}, Lcom/waze/view/popups/CommentPopUP;->setPopUpTimer(I)V

    .line 1481
    iget-object v1, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    iget v2, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    aput-object v0, v1, v2

    .line 1482
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    goto :goto_0
.end method

.method public openDelayedReportAfterClosure()V
    .locals 2

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    if-nez v0, :cond_0

    .line 2056
    :goto_0
    return-void

    .line 2053
    :cond_0
    iget-object v0, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    iput-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    .line 2054
    iget-object v0, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->show()V

    .line 2055
    iget-object v0, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportMenu;->open(Z)V

    goto :goto_0
.end method

.method public openMainMenu()V
    .locals 2

    .prologue
    .line 1857
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->asrCancel()V

    .line 1858
    iget-object v0, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    if-nez v0, :cond_0

    .line 1859
    new-instance v0, Lcom/waze/menus/MainMenu;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v0, v1, p0}, Lcom/waze/menus/MainMenu;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    iput-object v0, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    .line 1861
    :cond_0
    iget-object v0, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    invoke-virtual {v0}, Lcom/waze/menus/MainMenu;->open()V

    .line 1862
    return-void
.end method

.method public openPingPopup(Lcom/waze/rtalerts/RTAlertsAlertData;ZLjava/lang/String;I)V
    .locals 3
    .parameter "alertData"
    .parameter "bIsPrivatePing"
    .parameter "sUserImageUrl"
    .parameter "nTimeout"

    .prologue
    .line 1167
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 1176
    :goto_0
    return-void

    .line 1170
    :cond_0
    new-instance v0, Lcom/waze/view/popups/PingPopUP;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v0, v1, p0}, Lcom/waze/view/popups/PingPopUP;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 1171
    .local v0, popup:Lcom/waze/view/popups/PingPopUP;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/LayoutManager;->bIsTicker:Z

    .line 1172
    invoke-virtual {v0, p1, p2, p3}, Lcom/waze/view/popups/PingPopUP;->GetView(Lcom/waze/rtalerts/RTAlertsAlertData;ZLjava/lang/String;)Landroid/view/View;

    .line 1173
    invoke-virtual {v0, p4}, Lcom/waze/view/popups/PingPopUP;->setPopUpTimer(I)V

    .line 1174
    iget-object v1, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    iget v2, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    aput-object v0, v1, v2

    .line 1175
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    goto :goto_0
.end method

.method public openPoi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 19
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
    .line 673
    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 682
    :goto_0
    return-void

    .line 676
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/waze/view/popups/PoiPopUp;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/PoiPopUp;

    move-result-object v1

    .line 677
    .local v1, popup:Lcom/waze/view/popups/PoiPopUp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    move/from16 v18, v0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 678
    invoke-virtual/range {v1 .. v16}, Lcom/waze/view/popups/PoiPopUp;->GetView(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 677
    aput-object v2, v17, v18

    .line 680
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/waze/view/popups/PoiPopUp;->setPopUpTimer(I)V

    .line 681
    move-object/from16 v0, p0

    iget v2, v0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    goto :goto_0
.end method

.method public openProgressPopup(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0903ba

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1629
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0903bb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/map/ProgressAnimation;

    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->start()V

    .line 1630
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0903bc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1631
    return-void
.end method

.method public openReportMenu(ZZZ)V
    .locals 7
    .parameter "isRandomUser"
    .parameter "isFoursquareEnabled"
    .parameter "isClosureEnabled"

    .prologue
    const/4 v6, 0x0

    .line 1913
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->IsPopupsShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1914
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 1917
    :cond_0
    const-string v0, "REPORT_BUTTON"

    invoke-static {v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 1919
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->asrCancel()V

    .line 1920
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->removeDelayedReportButton()V

    .line 1921
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    if-nez v0, :cond_1

    .line 1923
    new-instance v0, Lcom/waze/reports/ReportMenu;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/ReportMenu;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;ZZZ)V

    .line 1922
    iput-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    .line 1925
    :cond_1
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->removeReportForm()V

    .line 1926
    invoke-virtual {p0, v6}, Lcom/waze/LayoutManager;->setClosureRunning(Z)V

    .line 1927
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0, v6}, Lcom/waze/reports/ReportMenu;->open(Z)V

    .line 1928
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->show()V

    .line 1929
    iget-boolean v0, p0, Lcom/waze/LayoutManager;->pendingReportSwipe:Z

    if-eqz v0, :cond_2

    .line 1930
    iput-boolean v6, p0, Lcom/waze/LayoutManager;->pendingReportSwipe:Z

    .line 1931
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->showTrafficJamReport()V

    .line 1933
    :cond_2
    return-void
.end method

.method public openSharePopup(Lcom/waze/user/UserData;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "user"
    .parameter "nType"
    .parameter "sMeetingId"
    .parameter "LocationText"

    .prologue
    .line 1509
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 1518
    :goto_0
    return-void

    .line 1512
    :cond_0
    new-instance v0, Lcom/waze/view/popups/SharePopup;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v0, v1, p0}, Lcom/waze/view/popups/SharePopup;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 1513
    .local v0, popup:Lcom/waze/view/popups/SharePopup;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/waze/view/popups/SharePopup;->GetView(Lcom/waze/user/UserData;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 1514
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/LayoutManager;->bIsTicker:Z

    .line 1515
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/popups/SharePopup;->setPopUpTimer(I)V

    .line 1516
    iget-object v1, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    iget v2, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    aput-object v0, v1, v2

    .line 1517
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    goto :goto_0
.end method

.method public openThumbsUpPopup(Lcom/waze/rtalerts/RTAlertsThumbsUpData;Ljava/lang/String;I)V
    .locals 3
    .parameter "thumbsUpData"
    .parameter "UserImageUrl"
    .parameter "nTimeOut"

    .prologue
    .line 1486
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 1494
    :goto_0
    return-void

    .line 1489
    :cond_0
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/ThumbsUpPopUP;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/ThumbsUpPopUP;

    move-result-object v0

    .line 1490
    .local v0, popup:Lcom/waze/view/popups/ThumbsUpPopUP;
    invoke-virtual {v0, p1, p2}, Lcom/waze/view/popups/ThumbsUpPopUP;->GetView(Lcom/waze/rtalerts/RTAlertsThumbsUpData;Ljava/lang/String;)Landroid/view/View;

    .line 1491
    invoke-virtual {v0, p3}, Lcom/waze/view/popups/ThumbsUpPopUP;->setPopUpTimer(I)V

    .line 1492
    iget-object v1, p0, Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;

    iget v2, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    aput-object v0, v1, v2

    .line 1493
    iget v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/waze/LayoutManager;->nNumberOfViews:I

    goto :goto_0
.end method

.method public openUserPopup(Lcom/waze/user/UserData;II)V
    .locals 2
    .parameter "data"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1066
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1}, Lcom/waze/view/popups/UserPopUp;->getInstance(Landroid/app/Activity;)Lcom/waze/view/popups/UserPopUp;

    move-result-object v0

    .line 1067
    .local v0, popup:Lcom/waze/view/popups/UserPopUp;
    invoke-virtual {v0, p1, p2, p3}, Lcom/waze/view/popups/UserPopUp;->show(Lcom/waze/user/UserData;II)V

    .line 1068
    return-void
.end method

.method protected openVoiceControlTip()V
    .locals 4

    .prologue
    .line 1639
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    .line 1640
    .local v1, nativeManager:Lcom/waze/NativeManager;
    new-instance v0, Landroid/app/Dialog;

    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    const v3, 0x7f06000f

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1641
    .local v0, dialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/waze/ifs/ui/ActivityBase;->setDialog(Landroid/app/Dialog;)V

    .line 1642
    const v2, 0x7f030133

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 1643
    const v2, 0x7f0907cd

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1644
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_LATER_CAPITAL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 1643
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1645
    const v2, 0x7f0907cf

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1646
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ENABLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 1645
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1647
    const v2, 0x7f0907c9

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1648
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_DRIVE_SAFE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 1647
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1649
    const v2, 0x7f0907ca

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1650
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PASSING_YOUR_HAND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 1649
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1651
    const v2, 0x7f0907cc

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/LayoutManager$20;

    invoke-direct {v3, p0, v0}, Lcom/waze/LayoutManager$20;-><init>(Lcom/waze/LayoutManager;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1659
    const v2, 0x7f0907ce

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/LayoutManager$21;

    invoke-direct {v3, p0, v0}, Lcom/waze/LayoutManager$21;-><init>(Lcom/waze/LayoutManager;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1670
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1671
    return-void
.end method

.method public openVoicePopup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0903bd

    .line 1674
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1675
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 1676
    .local v0, driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->isDayMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1677
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1678
    const v2, 0x7f020436

    .line 1677
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1683
    :goto_0
    invoke-virtual {p0, v3}, Lcom/waze/LayoutManager;->changeVoicePopupState(Z)V

    .line 1684
    return-void

    .line 1680
    :cond_0
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1681
    const v2, 0x7f020438

    .line 1680
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public preCloseAllPopups()V
    .locals 4

    .prologue
    .line 1090
    iget v0, p0, Lcom/waze/LayoutManager;->mLastPageNumber:I

    if-ltz v0, :cond_0

    .line 1091
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/PopupAction;->popup_hidden:Lcom/waze/PopupAction;

    invoke-virtual {v1}, Lcom/waze/PopupAction;->ordinal()I

    move-result v1

    iget v2, p0, Lcom/waze/LayoutManager;->mLastPageNumber:I

    .line 1092
    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/NativeManager;->PopupAction(III)V

    .line 1093
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/LayoutManager;->mLastPageNumber:I

    .line 1095
    :cond_0
    return-void
.end method

.method public preparePoi(ILjava/lang/String;)V
    .locals 2
    .parameter "iID"
    .parameter "promotionUrl"

    .prologue
    .line 1040
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/PoiPopUp;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/PoiPopUp;

    move-result-object v0

    .line 1041
    .local v0, popup:Lcom/waze/view/popups/PoiPopUp;
    invoke-virtual {v0, p1, p2}, Lcom/waze/view/popups/PoiPopUp;->prepare(ILjava/lang/String;)V

    .line 1042
    return-void
.end method

.method public removeDelayedReportButton()V
    .locals 3

    .prologue
    .line 1895
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0903b8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/map/MovingImageButton;

    .line 1896
    .local v0, delayedReportButton:Lcom/waze/view/map/MovingImageButton;
    invoke-virtual {v0}, Lcom/waze/view/map/MovingImageButton;->stop()V

    .line 1897
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/map/MovingImageButton;->setVisibility(I)V

    .line 1898
    return-void
.end method

.method public removeRoadPavingTab()V
    .locals 3

    .prologue
    .line 2092
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0903b9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/map/MovingImageButton;

    .line 2093
    .local v0, roadRecordingTab:Lcom/waze/view/map/MovingImageButton;
    invoke-virtual {v0}, Lcom/waze/view/map/MovingImageButton;->stop()V

    .line 2094
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/map/MovingImageButton;->setVisibility(I)V

    .line 2095
    return-void
.end method

.method public reportMenuShown()Z
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    iget-boolean v0, v0, Lcom/waze/reports/ReportMenu;->isVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlerterPopupCloseTime(I)V
    .locals 2
    .parameter "timer"

    .prologue
    .line 1616
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/AlerterPopUp;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/AlerterPopUp;

    move-result-object v0

    .line 1617
    .local v0, popup:Lcom/waze/view/popups/AlerterPopUp;
    invoke-virtual {v0, p1}, Lcom/waze/view/popups/AlerterPopUp;->setCloseTime(I)V

    .line 1618
    return-void
.end method

.method public setClosureRunning(Z)V
    .locals 0
    .parameter "bIsRunning"

    .prologue
    .line 2063
    iput-boolean p1, p0, Lcom/waze/LayoutManager;->bIsClosureRunning:Z

    .line 2064
    return-void
.end method

.method public setDelayedReport(Lcom/waze/reports/ReportMenu;)V
    .locals 4
    .parameter "reportMenu"

    .prologue
    .line 2078
    iget-object v2, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f0903b8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/map/MovingImageButton;

    .line 2079
    .local v0, delayedReportButton:Lcom/waze/view/map/MovingImageButton;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/waze/view/map/MovingImageButton;->setVisibility(I)V

    .line 2080
    invoke-virtual {v0}, Lcom/waze/view/map/MovingImageButton;->start()V

    .line 2081
    invoke-virtual {p1}, Lcom/waze/reports/ReportMenu;->getDelayedReportButtonResource()I

    move-result v1

    .line 2082
    .local v1, resId:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2088
    :goto_0
    return-void

    .line 2086
    :cond_0
    invoke-virtual {v0, v1}, Lcom/waze/view/map/MovingImageButton;->setImageResource(I)V

    .line 2087
    iput-object p1, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    goto :goto_0
.end method

.method public setMenuButtonType(II)V
    .locals 5
    .parameter "type"
    .parameter "OptionalNumberOfWatching"

    .prologue
    .line 2469
    const/4 v0, 0x1

    .line 2470
    .local v0, bIsDay:Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v3, v4, :cond_3

    .line 2471
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/DriveToNativeManager;->isDayMode()Z

    move-result v0

    .line 2473
    invoke-virtual {p0, v0}, Lcom/waze/LayoutManager;->ChangeReportMenuButton(Z)V

    .line 2475
    invoke-virtual {p0, v0}, Lcom/waze/LayoutManager;->ChangeFriendsBarButtonType(Z)V

    .line 2477
    iget-object v3, p0, Lcom/waze/LayoutManager;->mTrafficBarView:Lcom/waze/view/navbar/TrafficBarView;

    invoke-virtual {v3, v0}, Lcom/waze/view/navbar/TrafficBarView;->setDayMode(Z)V

    .line 2485
    :cond_0
    iget-object v3, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0903b3

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/button/SwipeableButton;

    .line 2486
    .local v1, button:Lcom/waze/view/button/SwipeableButton;
    const/4 v2, 0x0

    .line 2487
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    iput p1, p0, Lcom/waze/LayoutManager;->nMenuType:I

    .line 2488
    iput p2, p0, Lcom/waze/LayoutManager;->nOptionalNumber:I

    .line 2489
    if-nez p1, :cond_5

    .line 2490
    if-eqz v0, :cond_4

    .line 2491
    iget-object v3, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02023e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2519
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2520
    invoke-virtual {p0}, Lcom/waze/LayoutManager;->mainMenuInit()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2521
    iget-object v3, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    invoke-virtual {v3, v2}, Lcom/waze/menus/MainMenu;->setMenuButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2522
    invoke-virtual {v1, v2}, Lcom/waze/view/button/SwipeableButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2536
    .end local v1           #button:Lcom/waze/view/button/SwipeableButton;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    return-void

    .line 2479
    :cond_3
    iget v3, p0, Lcom/waze/LayoutManager;->nMenuType:I

    if-ne v3, p1, :cond_0

    goto :goto_1

    .line 2493
    .restart local v1       #button:Lcom/waze/view/button/SwipeableButton;
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v3, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020245

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2495
    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    if-ne p1, v3, :cond_7

    .line 2496
    if-eqz v0, :cond_6

    .line 2497
    iget-object v3, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020243

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2498
    goto :goto_0

    .line 2499
    :cond_6
    iget-object v3, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020244

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2501
    goto :goto_0

    :cond_7
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 2502
    if-nez p2, :cond_9

    .line 2503
    if-eqz v0, :cond_8

    .line 2504
    iget-object v3, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02023f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2505
    goto :goto_0

    .line 2506
    :cond_8
    iget-object v3, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020240

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2508
    goto :goto_0

    .line 2509
    :cond_9
    if-eqz v0, :cond_a

    .line 2510
    iget-object v3, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020241

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2511
    goto :goto_0

    .line 2513
    :cond_a
    iget-object v3, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020242

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2512
    goto/16 :goto_0

    .line 2524
    :cond_b
    invoke-virtual {v1, v2}, Lcom/waze/view/button/SwipeableButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2525
    iget-object v3, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    if-eqz v3, :cond_2

    .line 2526
    iget-object v3, p0, Lcom/waze/LayoutManager;->mainMenu:Lcom/waze/menus/MainMenu;

    invoke-virtual {v3, v2}, Lcom/waze/menus/MainMenu;->setMenuButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method public setPopupShown()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/waze/LayoutManager;->popups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/waze/LayoutManager;->popupShown:Z

    .line 423
    return-void

    .line 422
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRoadPavingTab(Lcom/waze/reports/ReportMenu;)V
    .locals 3
    .parameter "reportMenu"

    .prologue
    .line 2100
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0903b9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/map/MovingImageButton;

    .line 2101
    .local v0, roadRecordingTab:Lcom/waze/view/map/MovingImageButton;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/map/MovingImageButton;->setVisibility(I)V

    .line 2102
    invoke-virtual {v0}, Lcom/waze/view/map/MovingImageButton;->start()V

    .line 2103
    const v1, 0x7f020319

    invoke-virtual {v0, v1}, Lcom/waze/view/map/MovingImageButton;->setImageResource(I)V

    .line 2104
    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->refreshDrawableState()V

    .line 2105
    iput-object p1, p0, Lcom/waze/LayoutManager;->delayedReportMenu:Lcom/waze/reports/ReportMenu;

    .line 2106
    return-void
.end method

.method public showAlerterPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .parameter "titleStr"
    .parameter "Desc"
    .parameter "iconName"
    .parameter "distanceStr"
    .parameter "is_cancelable"
    .parameter "can_send_thumbs_up"

    .prologue
    .line 1598
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/AlerterPopUp;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/AlerterPopUp;

    move-result-object v0

    .local v0, popup:Lcom/waze/view/popups/AlerterPopUp;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 1599
    invoke-virtual/range {v0 .. v6}, Lcom/waze/view/popups/AlerterPopUp;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1600
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsOnline()I

    move-result v1

    .line 1601
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/mywaze/MyWazeNativeManager;->getNumberOfFriendsPending()I

    move-result v2

    .line 1600
    invoke-virtual {p0, v1, v2}, Lcom/waze/LayoutManager;->RefreshBar(II)V

    .line 1602
    return-void
.end method

.method public showEtaUpdatePopUp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "style"
    .parameter "title"
    .parameter "header"
    .parameter "body"
    .parameter "timeout"

    .prologue
    .line 1561
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/EtaUpdatePopUp;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/EtaUpdatePopUp;

    move-result-object v0

    .local v0, popup:Lcom/waze/view/popups/EtaUpdatePopUp;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1562
    invoke-virtual/range {v0 .. v5}, Lcom/waze/view/popups/EtaUpdatePopUp;->show(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1563
    return-void
.end method

.method public showFollowingToolTip(Lcom/waze/TooltipType;ILcom/waze/user/FriendUserData;)V
    .locals 12
    .parameter "type"
    .parameter "numFriends"
    .parameter "fud"

    .prologue
    const v11, 0x7f090744

    const v10, 0x7f090743

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 2663
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v5

    .line 2664
    .local v5, mainActivity:Lcom/waze/MainActivity;
    iget-object v0, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f09038b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/LayoutManager;->mTooltipShare:Landroid/widget/LinearLayout;

    .line 2665
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v6

    .line 2667
    .local v6, nm:Lcom/waze/NativeManager;
    const/4 v7, 0x0

    .line 2669
    .local v7, text:Ljava/lang/String;
    sget-object v0, Lcom/waze/TooltipType;->SHARE:Lcom/waze/TooltipType;

    if-ne p1, v0, :cond_1

    .line 2670
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_ETA_SENTE_SEE_PEOPLE_VIEWING_YOUR_DRIVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 2705
    :cond_0
    :goto_0
    if-nez v7, :cond_7

    .line 2725
    :goto_1
    return-void

    .line 2671
    :cond_1
    sget-object v0, Lcom/waze/TooltipType;->ETA_UPDATE_SENT:Lcom/waze/TooltipType;

    if-ne p1, v0, :cond_3

    .line 2672
    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2674
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_ETA_UPDATE_SENT_TO_PS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 2675
    invoke-virtual {p3}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 2674
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2676
    goto :goto_0

    :cond_2
    if-lt p2, v2, :cond_0

    .line 2678
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_ETA_UPDATE_SENT_TO_PD_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 2679
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    .line 2678
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2681
    goto :goto_0

    :cond_3
    sget-object v0, Lcom/waze/TooltipType;->ARRIVAL_SENT:Lcom/waze/TooltipType;

    if-ne p1, v0, :cond_5

    .line 2682
    if-ne p2, v2, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2684
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_ARRIVAL_NOTIFICATION_SENT_TO_PS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 2685
    invoke-virtual {p3}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 2684
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2686
    goto :goto_0

    :cond_4
    if-lt p2, v2, :cond_0

    .line 2689
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_ARRIVAL_NOTIFICATION_SENT_TO_PD_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 2690
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    .line 2688
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2692
    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/waze/TooltipType;->NEW_USER_VIEWING:Lcom/waze/TooltipType;

    if-ne p1, v0, :cond_0

    .line 2693
    if-ne p2, v2, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2695
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_PS_IS_VIEWING_YOUR_DRIVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 2696
    invoke-virtual {p3}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 2695
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2697
    goto/16 :goto_0

    :cond_6
    if-lt p2, v2, :cond_0

    .line 2700
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_PD_FRIENDS_ARE_VIEWING_YOUR_DRIVE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 2701
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    .line 2699
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2698
    goto/16 :goto_0

    .line 2707
    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/waze/user/FriendUserData;->getImage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2708
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTooltipShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2709
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTooltipShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2710
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTooltipShare:Landroid/widget/LinearLayout;

    const v1, 0x7f090745

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2711
    .local v3, iv:Landroid/widget/ImageView;
    const v0, 0x7f0203a3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2712
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    invoke-virtual {p3}, Lcom/waze/user/FriendUserData;->getImage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 2718
    .end local v3           #iv:Landroid/widget/ImageView;
    :goto_2
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTooltipShare:Landroid/widget/LinearLayout;

    const v1, 0x7f09072b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2720
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTooltipShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2721
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTooltipShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 2722
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTooltipShare:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/waze/view/anim/AnimationUtils;->slideTooltip(Landroid/view/View;)V

    .line 2724
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTooltipShare:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/waze/LayoutManager;->setCloseTooltipEvents(Lcom/waze/TooltipType;Landroid/widget/LinearLayout;)V

    goto/16 :goto_1

    .line 2714
    :cond_8
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTooltipShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2715
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTooltipShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public showFriendOnTheWayPopup(Lcom/waze/user/FriendUserData;I)V
    .locals 0
    .parameter "friendLocation"
    .parameter "iTimeOut"

    .prologue
    .line 1607
    return-void
.end method

.method public showFriendsTooltip()V
    .locals 3

    .prologue
    .line 1180
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->IsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    iget v0, p0, Lcom/waze/LayoutManager;->mShowFriendsTip:I

    if-lez v0, :cond_0

    .line 1183
    new-instance v0, Lcom/waze/LayoutManager$18;

    invoke-direct {v0, p0}, Lcom/waze/LayoutManager$18;-><init>(Lcom/waze/LayoutManager;)V

    .line 1214
    const-wide/16 v1, 0x1388

    .line 1183
    invoke-static {v0, v1, v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;J)V

    .line 1217
    :cond_0
    return-void
.end method

.method public showMapProblemReport(ZZZ)V
    .locals 6
    .parameter "isRandomUser"
    .parameter "isFoursquareEnabled"
    .parameter "isClosureEnabled"

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    if-nez v0, :cond_0

    .line 1996
    new-instance v0, Lcom/waze/reports/ReportMenu;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/ReportMenu;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;ZZZ)V

    .line 1995
    iput-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    .line 1998
    :cond_0
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportMenu;->open(Z)V

    .line 1999
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->show()V

    .line 2000
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->showMapProblemReport()V

    .line 2001
    return-void
.end method

.method public showMessageTicker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "title"
    .parameter "text"
    .parameter "icon"
    .parameter "timeout"

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTicker:Lcom/waze/ticker/MessageTicker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/waze/ticker/MessageTicker;

    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0903a3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/waze/ticker/MessageTicker;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/waze/LayoutManager;->mTicker:Lcom/waze/ticker/MessageTicker;

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTicker:Lcom/waze/ticker/MessageTicker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/waze/ticker/MessageTicker;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1593
    return-void
.end method

.method public showNotificationMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "msg"
    .parameter "icon"
    .parameter "nType"

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNotifBar:Lcom/waze/notificationbar/NotificationBar;

    if-nez v0, :cond_0

    .line 1586
    new-instance v0, Lcom/waze/notificationbar/NotificationBar;

    iget-object v1, p0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0903a2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v0, v1, v2}, Lcom/waze/notificationbar/NotificationBar;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waze/LayoutManager;->mNotifBar:Lcom/waze/notificationbar/NotificationBar;

    .line 1587
    :cond_0
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNotifBar:Lcom/waze/notificationbar/NotificationBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/waze/notificationbar/NotificationBar;->showMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1588
    return-void
.end method

.method public showToolTip(Lcom/waze/TooltipType;ILcom/waze/user/FriendUserData;JI)V
    .locals 16
    .parameter "type"
    .parameter "numUsers"
    .parameter "userData"
    .parameter "cb"
    .parameter "intParam"

    .prologue
    .line 2593
    invoke-direct/range {p0 .. p1}, Lcom/waze/LayoutManager;->isAutoCloseToolTip(Lcom/waze/TooltipType;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/waze/LayoutManager;->mIsToolTipDisplayed:Z

    if-eqz v3, :cond_0

    .line 2594
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/LayoutManager;->mToolTipQueue:Ljava/util/ArrayList;

    new-instance v3, Lcom/waze/LayoutManager$QueuedTooltip;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/waze/LayoutManager$QueuedTooltip;-><init>(Lcom/waze/LayoutManager;Lcom/waze/TooltipType;ILcom/waze/user/FriendUserData;JI)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2660
    :goto_0
    return-void

    .line 2598
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v13

    .line 2600
    .local v13, nm:Lcom/waze/NativeManager;
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-eqz v3, :cond_1

    .line 2601
    move-wide/from16 v0, p4

    move/from16 v2, p6

    invoke-virtual {v13, v0, v1, v2}, Lcom/waze/NativeManager;->callCallbackInt(JI)V

    .line 2604
    :cond_1
    invoke-static {}, Lcom/waze/LayoutManager;->$SWITCH_TABLE$com$waze$TooltipType()[I

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/waze/TooltipType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2650
    const/4 v11, 0x0

    .line 2651
    .local v11, currentTooltip:Landroid/widget/LinearLayout;
    const/4 v12, 0x0

    .line 2652
    .local v12, currentTooltip_ls:Landroid/widget/LinearLayout;
    const/4 v14, 0x0

    .line 2657
    .local v14, text:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v14}, Lcom/waze/LayoutManager;->setTooltipShowEvents(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 2659
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/waze/LayoutManager;->setCloseTooltipEvents(Lcom/waze/TooltipType;Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 2606
    .end local v11           #currentTooltip:Landroid/widget/LinearLayout;
    .end local v12           #currentTooltip_ls:Landroid/widget/LinearLayout;
    .end local v14           #text:Ljava/lang/String;
    :pswitch_0
    const/4 v12, 0x0

    .line 2607
    .restart local v12       #currentTooltip_ls:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/waze/LayoutManager;->isTooltipRoadClosureShown:Z

    .line 2608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0903b5

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/LayoutManager;->mTooltipRoadClosure:Landroid/widget/LinearLayout;

    .line 2609
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/waze/LayoutManager;->mTooltipRoadClosure:Landroid/widget/LinearLayout;

    .line 2612
    .restart local v11       #currentTooltip:Landroid/widget/LinearLayout;
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_IF_THERESS_A_ROAD_CLOSURE_OR_A_MAP_PROBLEM__REPORT_IT_HERE_:Lcom/waze/strings/DisplayStrings;

    .line 2611
    invoke-virtual {v13, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v14

    .line 2613
    .restart local v14       #text:Ljava/lang/String;
    goto :goto_1

    .line 2616
    .end local v11           #currentTooltip:Landroid/widget/LinearLayout;
    .end local v12           #currentTooltip_ls:Landroid/widget/LinearLayout;
    .end local v14           #text:Ljava/lang/String;
    :pswitch_1
    const/4 v12, 0x0

    .line 2617
    .restart local v12       #currentTooltip_ls:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/waze/LayoutManager;->isTooltipMainMenuShown:Z

    .line 2618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f0903b4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/LayoutManager;->mTooltipMainMenu:Landroid/widget/LinearLayout;

    .line 2619
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/waze/LayoutManager;->mTooltipMainMenu:Landroid/widget/LinearLayout;

    .line 2622
    .restart local v11       #currentTooltip:Landroid/widget/LinearLayout;
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_TAP_HERE_FOR_NAVIGATION__SETTINGS__AND_MORE_:Lcom/waze/strings/DisplayStrings;

    .line 2621
    invoke-virtual {v13, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v14

    .line 2623
    .restart local v14       #text:Ljava/lang/String;
    goto :goto_1

    .line 2629
    .end local v11           #currentTooltip:Landroid/widget/LinearLayout;
    .end local v12           #currentTooltip_ls:Landroid/widget/LinearLayout;
    .end local v14           #text:Ljava/lang/String;
    :pswitch_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/waze/LayoutManager;->isTooltipShareShown:Z

    .line 2630
    invoke-virtual/range {p0 .. p3}, Lcom/waze/LayoutManager;->showFollowingToolTip(Lcom/waze/TooltipType;ILcom/waze/user/FriendUserData;)V

    goto :goto_0

    .line 2634
    :pswitch_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/waze/LayoutManager;->isTooltipFriendsShown:Z

    .line 2635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f090390

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/LayoutManager;->mTooltipFriends:Landroid/widget/LinearLayout;

    .line 2636
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/waze/LayoutManager;->mTooltipFriends:Landroid/widget/LinearLayout;

    .line 2637
    .restart local v11       #currentTooltip:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;

    const v4, 0x7f090399

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/LayoutManager;->mTooltipFriends_ls:Landroid/widget/LinearLayout;

    .line 2638
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/waze/LayoutManager;->mTooltipFriends_ls:Landroid/widget/LinearLayout;

    .line 2641
    .restart local v12       #currentTooltip_ls:Landroid/widget/LinearLayout;
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_TAP_HERE_TO_FIND_FRIENDS_ON_WAZE_:Lcom/waze/strings/DisplayStrings;

    .line 2640
    invoke-virtual {v13, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v14

    .line 2642
    .restart local v14       #text:Ljava/lang/String;
    goto/16 :goto_1

    .line 2646
    .end local v11           #currentTooltip:Landroid/widget/LinearLayout;
    .end local v12           #currentTooltip_ls:Landroid/widget/LinearLayout;
    .end local v14           #text:Ljava/lang/String;
    :pswitch_4
    const/4 v3, 0x1

    sput-boolean v3, Lcom/waze/main/navigate/NavigationResult;->mForceShowTooltipEta:Z

    goto/16 :goto_0

    .line 2604
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public showTrafficDetectionPopup(ZZZ)V
    .locals 2
    .parameter "isRandomUser"
    .parameter "isFoursquareEnabled"
    .parameter "isClosureEnabled"

    .prologue
    .line 1555
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0, p1, p2, p3}, Lcom/waze/view/popups/TrafficDetectionPopUp;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;ZZZ)Lcom/waze/view/popups/TrafficDetectionPopUp;

    move-result-object v0

    .line 1557
    .local v0, popup:Lcom/waze/view/popups/TrafficDetectionPopUp;
    invoke-virtual {v0}, Lcom/waze/view/popups/TrafficDetectionPopUp;->show()V

    .line 1558
    return-void
.end method

.method public showTrafficJamReport(ZZZ)V
    .locals 6
    .parameter "isRandomUser"
    .parameter "isFoursquareEnabled"
    .parameter "isClosureEnabled"

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    if-nez v0, :cond_0

    .line 1985
    new-instance v0, Lcom/waze/reports/ReportMenu;

    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/ReportMenu;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;ZZZ)V

    .line 1984
    iput-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    .line 1987
    :cond_0
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportMenu;->open(Z)V

    .line 1988
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->show()V

    .line 1989
    iget-object v0, p0, Lcom/waze/LayoutManager;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->showTrafficJamReport()V

    .line 1990
    return-void
.end method

.method public slideToBottom(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 772
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 775
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    const v2, 0x7f040017

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 776
    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 777
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 778
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 780
    return-void
.end method

.method public slideToBottomWithFade(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 788
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 789
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    const v2, 0x7f040018

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 790
    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 792
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 793
    return-void
.end method

.method public slideToOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 801
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    const v2, 0x7f04001a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 802
    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 803
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 805
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 806
    return-void
.end method

.method public slideToOutWithFade(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 814
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    const v2, 0x7f04001b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 815
    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 817
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 818
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 819
    return-void
.end method

.method toolTipClosed(Lcom/waze/TooltipType;)V
    .locals 8
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 2872
    invoke-direct {p0, p1}, Lcom/waze/LayoutManager;->isAutoCloseToolTip(Lcom/waze/TooltipType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2873
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->mIsToolTipDisplayed:Z

    .line 2874
    iget-object v0, p0, Lcom/waze/LayoutManager;->mToolTipQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2875
    iget-object v0, p0, Lcom/waze/LayoutManager;->mToolTipQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/waze/LayoutManager$QueuedTooltip;

    .line 2876
    .local v7, nextTip:Lcom/waze/LayoutManager$QueuedTooltip;
    iget-object v1, v7, Lcom/waze/LayoutManager$QueuedTooltip;->type:Lcom/waze/TooltipType;

    iget v2, v7, Lcom/waze/LayoutManager$QueuedTooltip;->numUsers:I

    iget-object v3, v7, Lcom/waze/LayoutManager$QueuedTooltip;->userData:Lcom/waze/user/FriendUserData;

    iget-wide v4, v7, Lcom/waze/LayoutManager$QueuedTooltip;->cb:J

    iget v6, v7, Lcom/waze/LayoutManager$QueuedTooltip;->intParam:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/waze/LayoutManager;->showToolTip(Lcom/waze/TooltipType;ILcom/waze/user/FriendUserData;JI)V

    .line 2879
    .end local v7           #nextTip:Lcom/waze/LayoutManager$QueuedTooltip;
    :cond_0
    return-void
.end method

.method public trafficBarClose()V
    .locals 2

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTrafficBarView:Lcom/waze/view/navbar/TrafficBarView;

    if-eqz v0, :cond_0

    .line 2900
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTrafficBarView:Lcom/waze/view/navbar/TrafficBarView;

    invoke-virtual {v0}, Lcom/waze/view/navbar/TrafficBarView;->reset()V

    .line 2902
    :cond_0
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTrafficBarView:Lcom/waze/view/navbar/TrafficBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/navbar/TrafficBarView;->setVisibility(I)V

    .line 2903
    return-void
.end method

.method public trafficBarSet(II[I[I)V
    .locals 3
    .parameter "current_percent"
    .parameter "total_time"
    .parameter "levels"
    .parameter "lengths"

    .prologue
    const/4 v1, 0x0

    .line 2888
    iget-object v2, p0, Lcom/waze/LayoutManager;->mTrafficBarView:Lcom/waze/view/navbar/TrafficBarView;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/waze/view/navbar/TrafficBarView;->setTime(II[I[I)V

    .line 2890
    iget-boolean v2, p0, Lcom/waze/LayoutManager;->mShouldShowTrafficBar:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/waze/LayoutManager;->mTrafficBarView:Lcom/waze/view/navbar/TrafficBarView;

    invoke-virtual {v2}, Lcom/waze/view/navbar/TrafficBarView;->canShow()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 2891
    .local v0, show:Z
    :goto_0
    iget-object v2, p0, Lcom/waze/LayoutManager;->mTrafficBarView:Lcom/waze/view/navbar/TrafficBarView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/waze/view/navbar/TrafficBarView;->setVisibility(I)V

    .line 2892
    return-void

    .end local v0           #show:Z
    :cond_0
    move v0, v1

    .line 2890
    goto :goto_0

    .line 2891
    .restart local v0       #show:Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public trafficBarSetHidden(Z)V
    .locals 4
    .parameter "hidden"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2882
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/waze/LayoutManager;->mShouldShowTrafficBar:Z

    .line 2883
    iget-boolean v1, p0, Lcom/waze/LayoutManager;->mShouldShowTrafficBar:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/waze/LayoutManager;->mTrafficBarView:Lcom/waze/view/navbar/TrafficBarView;

    invoke-virtual {v1}, Lcom/waze/view/navbar/TrafficBarView;->canShow()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    .line 2884
    .local v0, show:Z
    :goto_1
    iget-object v1, p0, Lcom/waze/LayoutManager;->mTrafficBarView:Lcom/waze/view/navbar/TrafficBarView;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/waze/view/navbar/TrafficBarView;->setVisibility(I)V

    .line 2885
    return-void

    .end local v0           #show:Z
    :cond_0
    move v1, v3

    .line 2882
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2883
    goto :goto_1

    .line 2884
    .restart local v0       #show:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_2
.end method

.method public trafficBarShowPopUp(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/waze/LayoutManager;->mTrafficBarView:Lcom/waze/view/navbar/TrafficBarView;

    invoke-virtual {v0, p1}, Lcom/waze/view/navbar/TrafficBarView;->appearifyTheTip(I)V

    .line 2896
    return-void
.end method

.method public updateAlerterPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "titleStr"
    .parameter "iconName"
    .parameter "distanceStr"

    .prologue
    .line 1611
    iget-object v1, p0, Lcom/waze/LayoutManager;->context:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {v1, p0}, Lcom/waze/view/popups/AlerterPopUp;->getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/AlerterPopUp;

    move-result-object v0

    .line 1612
    .local v0, popup:Lcom/waze/view/popups/AlerterPopUp;
    invoke-virtual {v0, p1, p2, p3}, Lcom/waze/view/popups/AlerterPopUp;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    return-void
.end method

.method public updateNavResultPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "eta"
    .parameter "time"
    .parameter "distance"
    .parameter "isWaypoint"

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    if-eqz v0, :cond_0

    .line 1751
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/waze/main/navigate/NavigationResult;->updateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1753
    :cond_0
    return-void
.end method

.method public updateNavResultShare(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1756
    .local p1, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    if-eqz v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/waze/LayoutManager;->mNavResult:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v0, p1}, Lcom/waze/main/navigate/NavigationResult;->updateShare(Ljava/util/ArrayList;)V

    .line 1759
    :cond_0
    return-void
.end method
