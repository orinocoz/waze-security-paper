.class public Lcom/waze/reports/AddPlaceNewFragment;
.super Landroid/app/Fragment;
.source "AddPlaceNewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;,
        Lcom/waze/reports/AddPlaceNewFragment$TextValidator;
    }
.end annotation


# instance fields
.field private mCategoriesPlaceHolder:Landroid/widget/LinearLayout;

.field private mCategoryPtsView:Lcom/waze/ifs/ui/PointsView;

.field private mCityStreetMain:Landroid/widget/TextView;

.field private mCityStreetSub:Landroid/widget/TextView;

.field private mDtNm:Lcom/waze/navigate/DriveToNativeManager;

.field private mETNumber:Landroid/widget/EditText;

.field private mEarnedPoints:I

.field private mHasContentValidator:Lcom/waze/reports/AddPlaceNewFragment$TextValidator;

.field mIsResidential:Z

.field private mMapImage:Landroid/widget/ImageView;

.field private mMapView:Lcom/waze/MapView;

.field private mMustAdd:Landroid/view/View;

.field private final mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

.field private mNm:Lcom/waze/NativeManager;

.field private mNumberWatcher:Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;

.field private mReplaceMapRunnable:Ljava/lang/Runnable;

.field private mValidatedPointsViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/ifs/ui/PointsView;",
            ">;"
        }
    .end annotation
.end field

.field mVenue:Lcom/waze/reports/VenueData;

.field private mbAddressOptionsViewSet:Z

.field private r:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 104
    iput v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I

    .line 113
    iput-boolean v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mIsResidential:Z

    .line 114
    iput-boolean v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mbAddressOptionsViewSet:Z

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mValidatedPointsViews:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Lcom/waze/reports/AddPlaceNewFragment$1;

    invoke-direct {v0, p0}, Lcom/waze/reports/AddPlaceNewFragment$1;-><init>(Lcom/waze/reports/AddPlaceNewFragment;)V

    iput-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mHasContentValidator:Lcom/waze/reports/AddPlaceNewFragment$TextValidator;

    .line 127
    new-instance v0, Lcom/waze/reports/AddPlaceNewFragment$2;

    invoke-direct {v0, p0}, Lcom/waze/reports/AddPlaceNewFragment$2;-><init>(Lcom/waze/reports/AddPlaceNewFragment;)V

    iput-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/AddPlaceNewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/waze/reports/AddPlaceNewFragment;->setAddressOptionsView()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/reports/AddPlaceNewFragment;)Lcom/waze/navigate/DriveToNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mDtNm:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/reports/AddPlaceNewFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 104
    iget v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I

    return v0
.end method

.method static synthetic access$3(Lcom/waze/reports/AddPlaceNewFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput p1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I

    return-void
.end method

.method static synthetic access$4(Lcom/waze/reports/AddPlaceNewFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mValidatedPointsViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/reports/AddPlaceNewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/waze/reports/AddPlaceNewFragment;->checkIfUSerIsGood()V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/reports/AddPlaceNewFragment;)Lcom/waze/MapView;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/reports/AddPlaceNewFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mReplaceMapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8(Lcom/waze/reports/AddPlaceNewFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9(Lcom/waze/reports/AddPlaceNewFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private checkIfUSerIsGood()V
    .locals 6

    .prologue
    .line 410
    const/4 v0, 0x1

    .line 412
    .local v0, bUserGood:Z
    iget-object v3, p0, Lcom/waze/reports/AddPlaceNewFragment;->mValidatedPointsViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 419
    iget-boolean v3, p0, Lcom/waze/reports/AddPlaceNewFragment;->mIsResidential:Z

    if-eqz v3, :cond_1

    .line 420
    iget-object v3, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-boolean v3, v3, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    if-nez v3, :cond_1

    .line 421
    iget-object v3, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900b6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 422
    .local v1, must:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/view/anim/AnimationUtils;->flashView(Landroid/view/View;)V

    .line 423
    const/4 v0, 0x0

    .line 427
    .end local v1           #must:Landroid/view/View;
    :cond_1
    if-nez v0, :cond_3

    .line 440
    :goto_1
    return-void

    .line 412
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/ifs/ui/PointsView;

    .line 413
    .local v2, pv:Lcom/waze/ifs/ui/PointsView;
    invoke-virtual {v2}, Lcom/waze/ifs/ui/PointsView;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 414
    invoke-static {v2}, Lcom/waze/view/anim/AnimationUtils;->flashView(Landroid/view/View;)V

    .line 415
    const/4 v0, 0x0

    goto :goto_0

    .line 430
    .end local v2           #pv:Lcom/waze/ifs/ui/PointsView;
    :cond_3
    iget-object v3, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mETNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/waze/reports/VenueData;->houseNumber:Ljava/lang/String;

    .line 432
    iget v3, p0, Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v4, v4, Lcom/waze/reports/VenueData;->numNewImages:I

    sget-object v5, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Images:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v5}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I

    .line 433
    iget-boolean v3, p0, Lcom/waze/reports/AddPlaceNewFragment;->mIsResidential:Z

    if-nez v3, :cond_4

    .line 434
    iget v3, p0, Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I

    sget-object v4, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Categories:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v4}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I

    .line 436
    :cond_4
    iget v3, p0, Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I

    sget-object v4, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->CreatePlace:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v4}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I

    .line 438
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    invoke-static {v3, v4}, Lcom/waze/utils/EditTextUtils;->closeKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 439
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/waze/reports/AddPlaceFlowActivity;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v5, p0, Lcom/waze/reports/AddPlaceNewFragment;->mEarnedPoints:I

    invoke-virtual {v3, v4, v5}, Lcom/waze/reports/AddPlaceFlowActivity;->sendVenue(Lcom/waze/reports/VenueData;I)V

    goto :goto_1
.end method

.method private setAddressOptionsView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 149
    iget-boolean v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mbAddressOptionsViewSet:Z

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mDtNm:Lcom/waze/navigate/DriveToNativeManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->longitude:I

    iget-object v3, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v3, v3, Lcom/waze/reports/VenueData;->latitude:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->setAddressOptionsView(IIIZ)V

    .line 151
    iput-boolean v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mbAddressOptionsViewSet:Z

    .line 153
    :cond_0
    return-void
.end method

.method private setUpFragment()V
    .locals 14

    .prologue
    .line 255
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f090058

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/waze/view/title/TitleBarTextButton;

    .line 256
    .local v13, titleButtonBar:Lcom/waze/view/title/TitleBarTextButton;
    iget-boolean v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mIsResidential:Z

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_RESIDENTIAL_PLACE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v13, v1, v4}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 262
    :goto_0
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900b8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/text/WazeTextView;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mNm:Lcom/waze/NativeManager;

    .line 263
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_DONE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {v1, v4}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900a7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/text/WazeTextView;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mNm:Lcom/waze/NativeManager;

    .line 266
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_TELL_US_MORE_ABOUT_THIS_PLACE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-virtual {v1, v4}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900b7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/waze/reports/AddPlaceNewFragment$3;

    invoke-direct {v4, p0}, Lcom/waze/reports/AddPlaceNewFragment$3;-><init>(Lcom/waze/reports/AddPlaceNewFragment;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900a8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsTitleText;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mNm:Lcom/waze/NativeManager;

    .line 277
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_CATEGORIES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-virtual {v1, v4}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900aa

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsTitleText;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mNm:Lcom/waze/NativeManager;

    .line 280
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_ADDRESS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-virtual {v1, v4}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 282
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->City:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v1}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v3

    .line 284
    .local v3, pts:I
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900ae

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/ifs/ui/PointsView;

    .line 285
    .local v2, cityPts:Lcom/waze/ifs/ui/PointsView;
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900ac

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/text/WazeTextView;

    iput-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCityStreetMain:Landroid/widget/TextView;

    .line 286
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900ad

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/text/WazeTextView;

    iput-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCityStreetSub:Landroid/widget/TextView;

    .line 288
    new-instance v0, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;

    const/4 v4, 0x0

    .line 289
    new-instance v5, Lcom/waze/reports/AddPlaceNewFragment$4;

    invoke-direct {v5, p0}, Lcom/waze/reports/AddPlaceNewFragment$4;-><init>(Lcom/waze/reports/AddPlaceNewFragment;)V

    .line 295
    const-string v6, ""

    .line 288
    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;-><init>(Lcom/waze/reports/AddPlaceNewFragment;Lcom/waze/ifs/ui/PointsView;IZLcom/waze/reports/AddPlaceNewFragment$TextValidator;Ljava/lang/String;Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;)V

    .line 296
    .local v0, watcher:Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCityStreetMain:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 298
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCityStreetMain:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_STREET_NAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCityStreetSub:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_CITY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900ab

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 301
    new-instance v4, Lcom/waze/reports/AddPlaceNewFragment$5;

    invoke-direct {v4, p0}, Lcom/waze/reports/AddPlaceNewFragment$5;-><init>(Lcom/waze/reports/AddPlaceNewFragment;)V

    .line 300
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->HouseNumber:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v1}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v3

    .line 311
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900b0

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/waze/ifs/ui/PointsView;

    .line 312
    .local v6, numberPts:Lcom/waze/ifs/ui/PointsView;
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900af

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mETNumber:Landroid/widget/EditText;

    .line 314
    new-instance v4, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;

    const/4 v8, 0x0

    iget-boolean v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mIsResidential:Z

    if-eqz v1, :cond_1

    .line 315
    iget-object v9, p0, Lcom/waze/reports/AddPlaceNewFragment;->mHasContentValidator:Lcom/waze/reports/AddPlaceNewFragment$TextValidator;

    .line 316
    :goto_1
    const-string v10, ""

    .line 314
    const/4 v11, 0x0

    move-object v5, p0

    move v7, v3

    invoke-direct/range {v4 .. v11}, Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;-><init>(Lcom/waze/reports/AddPlaceNewFragment;Lcom/waze/ifs/ui/PointsView;IZLcom/waze/reports/AddPlaceNewFragment$TextValidator;Ljava/lang/String;Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;)V

    .line 313
    iput-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mNumberWatcher:Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;

    .line 317
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mETNumber:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mNumberWatcher:Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 318
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mETNumber:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_HOUSE_NUMBER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 320
    iget-boolean v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mIsResidential:Z

    if-eqz v1, :cond_3

    .line 321
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900a6

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900a7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900a9

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900a8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900b1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsTitleText;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mNm:Lcom/waze/NativeManager;

    .line 329
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-virtual {v1, v4}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900b5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMustAdd:Landroid/view/View;

    .line 332
    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMustAdd:Landroid/view/View;

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-boolean v1, v1, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900b6

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mNm:Lcom/waze/NativeManager;

    .line 334
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_RESIDENCE_MUST_SET_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 333
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900b3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/MapView;

    iput-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    .line 337
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v1, v4}, Lcom/waze/MapView;->setNativeCanvasReadyEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 338
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900b4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapImage:Landroid/widget/ImageView;

    .line 339
    new-instance v12, Lcom/waze/reports/AddPlaceNewFragment$6;

    invoke-direct {v12, p0}, Lcom/waze/reports/AddPlaceNewFragment$6;-><init>(Lcom/waze/reports/AddPlaceNewFragment;)V

    .line 348
    .local v12, mapClick:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900b2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/waze/MapView;->setHandleTouch(Z)V

    .line 351
    new-instance v1, Lcom/waze/reports/AddPlaceNewFragment$7;

    invoke-direct {v1, p0}, Lcom/waze/reports/AddPlaceNewFragment$7;-><init>(Lcom/waze/reports/AddPlaceNewFragment;)V

    iput-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mReplaceMapRunnable:Ljava/lang/Runnable;

    .line 372
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    iget-object v4, p0, Lcom/waze/reports/AddPlaceNewFragment;->mReplaceMapRunnable:Ljava/lang/Runnable;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v1, v4, v7, v8}, Lcom/waze/MapView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    .end local v12           #mapClick:Landroid/view/View$OnClickListener;
    :goto_3
    return-void

    .line 259
    .end local v0           #watcher:Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;
    .end local v2           #cityPts:Lcom/waze/ifs/ui/PointsView;
    .end local v3           #pts:I
    .end local v6           #numberPts:Lcom/waze/ifs/ui/PointsView;
    :cond_0
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_NEW_PLACE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v13, v1, v4}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    goto/16 :goto_0

    .line 316
    .restart local v0       #watcher:Lcom/waze/reports/AddPlaceNewFragment$TextPointsWatcherImplementation;
    .restart local v2       #cityPts:Lcom/waze/ifs/ui/PointsView;
    .restart local v3       #pts:I
    .restart local v6       #numberPts:Lcom/waze/ifs/ui/PointsView;
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 332
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 374
    :cond_3
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900b1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v4, 0x7f0900b2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private unsetAddressOptionsView()V
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mbAddressOptionsViewSet:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mDtNm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetAddressOptionsView()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mbAddressOptionsViewSet:Z

    .line 160
    :cond_0
    return-void
.end method


# virtual methods
.method addCategoryLine(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .locals 10
    .parameter "categoriesPlace"
    .parameter "id"
    .parameter "top"
    .parameter "bottom"
    .parameter "bClearable"

    .prologue
    const v9, 0x7f09076c

    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 484
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f03012c

    invoke-virtual {v5, v7, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 486
    .local v2, newLine:Landroid/view/View;
    const v5, 0x7f09076e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/text/WazeTextView;

    .line 487
    .local v4, topView:Lcom/waze/view/text/WazeTextView;
    invoke-virtual {v4, p3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    const v5, 0x7f09076f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/text/WazeTextView;

    .line 490
    .local v0, bottomView:Lcom/waze/view/text/WazeTextView;
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 491
    invoke-virtual {v0, p4}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    :goto_0
    if-eqz p5, :cond_1

    .line 497
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/waze/reports/AddPlaceNewFragment$9;

    invoke-direct {v6, p0, p2}, Lcom/waze/reports/AddPlaceNewFragment$9;-><init>(Lcom/waze/reports/AddPlaceNewFragment;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 521
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 522
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceNewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 523
    return-object v2

    .line 493
    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {v0, v8}, Lcom/waze/view/text/WazeTextView;->setVisibility(I)V

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 508
    iget-object v5, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCategoryPtsView:Lcom/waze/ifs/ui/PointsView;

    if-eqz v5, :cond_2

    .line 509
    iget-object v5, p0, Lcom/waze/reports/AddPlaceNewFragment;->mValidatedPointsViews:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCategoryPtsView:Lcom/waze/ifs/ui/PointsView;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 511
    :cond_2
    const v5, 0x7f09076d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/waze/ifs/ui/PointsView;

    iput-object v5, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCategoryPtsView:Lcom/waze/ifs/ui/PointsView;

    .line 512
    iget-object v5, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCategoryPtsView:Lcom/waze/ifs/ui/PointsView;

    invoke-virtual {v5, v6}, Lcom/waze/ifs/ui/PointsView;->setVisibility(I)V

    .line 513
    iget-object v5, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v5, v5, Lcom/waze/reports/VenueData;->numCategories:I

    if-lez v5, :cond_3

    const/4 v1, 0x1

    .line 514
    .local v1, isValid:Z
    :goto_2
    iget-object v5, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCategoryPtsView:Lcom/waze/ifs/ui/PointsView;

    invoke-virtual {v5, v1}, Lcom/waze/ifs/ui/PointsView;->setValid(Z)V

    .line 515
    iget-object v5, p0, Lcom/waze/reports/AddPlaceNewFragment;->mValidatedPointsViews:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCategoryPtsView:Lcom/waze/ifs/ui/PointsView;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v5, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCategoryPtsView:Lcom/waze/ifs/ui/PointsView;

    sget-object v7, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Categories:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v7}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/waze/ifs/ui/PointsView;->setPoints(I)V

    .line 517
    iget-object v5, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCategoryPtsView:Lcom/waze/ifs/ui/PointsView;

    invoke-virtual {v5, v1, v1, v6}, Lcom/waze/ifs/ui/PointsView;->setIsOn(ZZZ)V

    goto :goto_1

    .end local v1           #isValid:Z
    :cond_3
    move v1, v6

    .line 513
    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 219
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/waze/reports/AddPlaceNewFragment;->setUpFragment()V

    .line 221
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onResume()V

    .line 222
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 209
    if-eqz p1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/AddPlaceNewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mVenue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/VenueData;

    iput-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/AddPlaceNewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsResidential"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 211
    iput-boolean v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mIsResidential:Z

    .line 214
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 176
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceNewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 177
    const/4 v1, 0x3

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 179
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mNm:Lcom/waze/NativeManager;

    .line 180
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mDtNm:Lcom/waze/navigate/DriveToNativeManager;

    .line 182
    const v0, 0x7f03000d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mValidatedPointsViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    invoke-direct {p0}, Lcom/waze/reports/AddPlaceNewFragment;->setUpFragment()V

    .line 187
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mETNumber:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v0, v0, Lcom/waze/reports/VenueData;->houseNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/text/WazeTextView;

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    return-object v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v0, v0, Lcom/waze/reports/VenueData;->houseNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 197
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mReplaceMapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/waze/MapView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 228
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 229
    invoke-direct {p0}, Lcom/waze/reports/AddPlaceNewFragment;->unsetAddressOptionsView()V

    .line 231
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 232
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 236
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v1, v0}, Lcom/waze/MapView;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v1}, Lcom/waze/MapView;->onResume()V

    .line 239
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    iget-object v2, p0, Lcom/waze/reports/AddPlaceNewFragment;->mReplaceMapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/waze/MapView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 241
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMapView:Lcom/waze/MapView;

    iget-object v2, p0, Lcom/waze/reports/AddPlaceNewFragment;->mReplaceMapRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Lcom/waze/MapView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    invoke-direct {p0}, Lcom/waze/reports/AddPlaceNewFragment;->setAddressOptionsView()V

    .line 244
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mDtNm:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v2, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->longitude:I

    iget-object v3, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v3, v3, Lcom/waze/reports/VenueData;->latitude:I

    const/16 v4, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->zoomOnMap(III)V

    .line 246
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mMustAdd:Landroid/view/View;

    iget-object v2, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-boolean v2, v2, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceNewFragment;->updateVenueFields()V

    .line 251
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 252
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/AddPlaceNewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mVenue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/AddPlaceNewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsResidential"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mIsResidential:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 204
    return-void
.end method

.method public refreshAddress()V
    .locals 0

    .prologue
    .line 529
    return-void
.end method

.method refreshCategories()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 443
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCategoriesPlaceHolder:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 476
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCategoriesPlaceHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 446
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    if-eqz v0, :cond_1

    .line 447
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v0, v0, Lcom/waze/reports/VenueData;->numCategories:I

    if-lt v9, v0, :cond_2

    .line 458
    .end local v9           #i:I
    :cond_1
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v11

    .line 460
    .local v11, nm:Lcom/waze/NativeManager;
    iget-object v3, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCategoriesPlaceHolder:Landroid/widget/LinearLayout;

    .line 461
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_TAP_TO_ADD_CATEGORIES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v6, v4

    .line 460
    invoke-virtual/range {v2 .. v7}, Lcom/waze/reports/AddPlaceNewFragment;->addCategoryLine(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v8

    .line 463
    .local v8, add:Landroid/view/View;
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v0, v0, Lcom/waze/reports/VenueData;->numCategories:I

    if-nez v0, :cond_4

    .line 464
    const v0, 0x7f020225

    .line 463
    :goto_2
    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 466
    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 468
    new-instance v0, Lcom/waze/reports/AddPlaceNewFragment$8;

    invoke-direct {v0, p0}, Lcom/waze/reports/AddPlaceNewFragment$8;-><init>(Lcom/waze/reports/AddPlaceNewFragment;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 449
    .end local v8           #add:Landroid/view/View;
    .end local v11           #nm:Lcom/waze/NativeManager;
    .restart local v9       #i:I
    :cond_2
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCategoriesPlaceHolder:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v0, v0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    aget-object v2, v0, v9

    .line 450
    iget-object v0, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v0, v0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-static {v0}, Lcom/waze/reports/EditPlaceCategoriesHolder;->getCategoryById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    .line 449
    invoke-virtual/range {v0 .. v5}, Lcom/waze/reports/AddPlaceNewFragment;->addCategoryLine(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v10

    .line 451
    .local v10, line:Landroid/view/View;
    if-nez v9, :cond_3

    .line 452
    const v0, 0x7f020226

    .line 451
    :goto_3
    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 454
    invoke-virtual {v10, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 447
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 453
    :cond_3
    const v0, 0x7f020224

    goto :goto_3

    .line 465
    .end local v9           #i:I
    .end local v10           #line:Landroid/view/View;
    .restart local v8       #add:Landroid/view/View;
    .restart local v11       #nm:Lcom/waze/NativeManager;
    :cond_4
    const v0, 0x7f020223

    goto :goto_2
.end method

.method refreshMapLocation()V
    .locals 0

    .prologue
    .line 479
    return-void
.end method

.method public setResidential(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mIsResidential:Z

    .line 170
    return-void
.end method

.method public setVenue(Lcom/waze/reports/VenueData;)V
    .locals 0
    .parameter "venue"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    .line 166
    return-void
.end method

.method updateVenueFields()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/high16 v3, 0x3f00

    .line 380
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 381
    :cond_0
    iget-object v2, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCityStreetMain:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCityStreetSub:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    :goto_1
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v2, 0x7f0900b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/PointsView;

    .line 392
    .local v0, numberPts:Lcom/waze/ifs/ui/PointsView;
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mETNumber:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mETNumber:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 395
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mETNumber:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setAlpha(F)V

    .line 396
    invoke-virtual {v0, v3}, Lcom/waze/ifs/ui/PointsView;->setAlpha(F)V

    .line 403
    :goto_2
    iget-boolean v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mIsResidential:Z

    if-nez v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->r:Landroid/view/View;

    const v2, 0x7f0900a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCategoriesPlaceHolder:Landroid/widget/LinearLayout;

    .line 405
    invoke-virtual {p0}, Lcom/waze/reports/AddPlaceNewFragment;->refreshCategories()V

    .line 407
    :cond_2
    return-void

    .line 381
    .end local v0           #numberPts:Lcom/waze/ifs/ui/PointsView;
    :cond_3
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    goto :goto_0

    .line 383
    :cond_4
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 384
    :cond_5
    iget-object v2, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCityStreetMain:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, ""

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCityStreetSub:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 384
    :cond_6
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    goto :goto_3

    .line 387
    :cond_7
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCityStreetMain:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCityStreetSub:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/reports/AddPlaceNewFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mCityStreetSub:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 398
    .restart local v0       #numberPts:Lcom/waze/ifs/ui/PointsView;
    :cond_8
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mETNumber:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 399
    iget-object v1, p0, Lcom/waze/reports/AddPlaceNewFragment;->mETNumber:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setAlpha(F)V

    .line 400
    invoke-virtual {v0, v4}, Lcom/waze/ifs/ui/PointsView;->setAlpha(F)V

    goto :goto_2
.end method
