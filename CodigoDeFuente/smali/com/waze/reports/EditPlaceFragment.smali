.class public Lcom/waze/reports/EditPlaceFragment;
.super Landroid/app/Fragment;
.source "EditPlaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/reports/EditPlaceFragment$LengthValidator;,
        Lcom/waze/reports/EditPlaceFragment$PaternValidator;,
        Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;,
        Lcom/waze/reports/EditPlaceFragment$TextValidator;
    }
.end annotation


# instance fields
.field private mAboutEdit:Lcom/waze/view/text/WazeTextView;

.field private mCategoriesPtsView:Lcom/waze/ifs/ui/PointsView;

.field private mCityStreetMain:Lcom/waze/view/text/WazeTextView;

.field private mCityStreetSub:Lcom/waze/view/text/WazeTextView;

.field private mDensity:F

.field private mDidEdit:Z

.field private mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

.field private mETName:Landroid/widget/EditText;

.field private mETNumber:Landroid/widget/EditText;

.field private mETPhone:Landroid/widget/EditText;

.field private mETWebsite:Landroid/widget/EditText;

.field private mEarnedPoints:I

.field private mHasContentValidator:Lcom/waze/reports/EditPlaceFragment$TextValidator;

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

.field private mIsRolling:Z

.field private mIsUploading:Z

.field private mMapImage:Landroid/widget/ImageView;

.field private mMapView:Lcom/waze/MapView;

.field private final mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

.field private mNm:Lcom/waze/NativeManager;

.field private mOrigVenue:Lcom/waze/reports/VenueData;

.field private mPhotoPagerSection:Lcom/waze/reports/PhotoPagerSection;

.field private mPrevPoints:I

.field private mReplaceMapRunnable:Ljava/lang/Runnable;

.field private mScrollY:I

.field private mTyd:Lcom/waze/reports/ThankYouDialog;

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

.field private mVenue:Lcom/waze/reports/VenueData;

.field private mWasAddressOptionsViewSet:Z

.field private mWereCategoriesChanged:Z

.field private mWereCategoriesPointsGiven:Z

.field private r:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 159
    iput v2, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    .line 160
    iput v2, p0, Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I

    .line 161
    iput-boolean v2, p0, Lcom/waze/reports/EditPlaceFragment;->mIsUploading:Z

    .line 162
    iput-boolean v2, p0, Lcom/waze/reports/EditPlaceFragment;->mIsRolling:Z

    .line 163
    iput-boolean v2, p0, Lcom/waze/reports/EditPlaceFragment;->mWereCategoriesChanged:Z

    .line 164
    iput-boolean v2, p0, Lcom/waze/reports/EditPlaceFragment;->mWereCategoriesPointsGiven:Z

    .line 165
    iput-boolean v2, p0, Lcom/waze/reports/EditPlaceFragment;->mWasAddressOptionsViewSet:Z

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mValidatedPointsViews:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Lcom/waze/reports/EditPlaceFragment$1;

    invoke-direct {v0, p0}, Lcom/waze/reports/EditPlaceFragment$1;-><init>(Lcom/waze/reports/EditPlaceFragment;)V

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mHasContentValidator:Lcom/waze/reports/EditPlaceFragment$TextValidator;

    .line 176
    new-instance v0, Lcom/waze/reports/EditPlaceFragment$2;

    invoke-direct {v0, p0}, Lcom/waze/reports/EditPlaceFragment$2;-><init>(Lcom/waze/reports/EditPlaceFragment;)V

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    .line 196
    iput-boolean v2, p0, Lcom/waze/reports/EditPlaceFragment;->mDidEdit:Z

    .line 206
    iput v2, p0, Lcom/waze/reports/EditPlaceFragment;->mScrollY:I

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/reports/EditPlaceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->setAddressOptionsView()V

    return-void
.end method

.method static synthetic access$10(Lcom/waze/reports/EditPlaceFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/waze/reports/EditPlaceFragment;->mIsUploading:Z

    return v0
.end method

.method static synthetic access$11(Lcom/waze/reports/EditPlaceFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$13(Lcom/waze/reports/EditPlaceFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mImageArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$14(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/PhotoPagerSection;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mPhotoPagerSection:Lcom/waze/reports/PhotoPagerSection;

    return-object v0
.end method

.method static synthetic access$15(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/MapView;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/waze/reports/EditPlaceFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mMapImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/waze/reports/EditPlaceFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mReplaceMapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$18(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    return-object v0
.end method

.method static synthetic access$19(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/view/text/WazeTextView;
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mAboutEdit:Lcom/waze/view/text/WazeTextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/navigate/DriveToNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method static synthetic access$20(Lcom/waze/reports/EditPlaceFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 160
    iget v0, p0, Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I

    return v0
.end method

.method static synthetic access$21(Lcom/waze/reports/EditPlaceFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput p1, p0, Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I

    return-void
.end method

.method static synthetic access$22(Lcom/waze/reports/EditPlaceFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/waze/reports/EditPlaceFragment;->mIsRolling:Z

    return-void
.end method

.method static synthetic access$23(Lcom/waze/reports/EditPlaceFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 979
    invoke-direct {p0, p1}, Lcom/waze/reports/EditPlaceFragment;->setPointsWheels(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/reports/EditPlaceFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mValidatedPointsViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/reports/EditPlaceFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 159
    iget v0, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    return v0
.end method

.method static synthetic access$5(Lcom/waze/reports/EditPlaceFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput p1, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    return-void
.end method

.method static synthetic access$6(Lcom/waze/reports/EditPlaceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1150
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->onEdit()V

    return-void
.end method

.method static synthetic access$7(Lcom/waze/reports/EditPlaceFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 206
    iget v0, p0, Lcom/waze/reports/EditPlaceFragment;->mScrollY:I

    return v0
.end method

.method static synthetic access$8(Lcom/waze/reports/EditPlaceFragment;)F
    .locals 1
    .parameter

    .prologue
    .line 191
    iget v0, p0, Lcom/waze/reports/EditPlaceFragment;->mDensity:F

    return v0
.end method

.method static synthetic access$9(Lcom/waze/reports/EditPlaceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->checkIfUSerIsGood()V

    return-void
.end method

.method private checkIfUSerIsGood()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 356
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mETNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, houseNumber:Ljava/lang/String;
    const/4 v1, 0x1

    .line 360
    .local v1, isUserGood:Z
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mValidatedPointsViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_8

    .line 371
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v4, v4, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v4, v4, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    iget-object v4, v4, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 372
    if-eqz v1, :cond_2

    .line 374
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v7, 0x7f090242

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/waze/reports/EditPlaceFragment;->focusOnView(Landroid/view/View;)V

    .line 376
    :cond_2
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v7, 0x7f090244

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/waze/view/anim/AnimationUtils;->flashView(Landroid/view/View;)V

    .line 377
    const/4 v1, 0x0

    .line 380
    :cond_3
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v4, v4, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    iget-object v4, v4, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 381
    if-eqz v1, :cond_4

    .line 383
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v7, 0x7f090246

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/waze/reports/EditPlaceFragment;->focusOnView(Landroid/view/View;)V

    .line 385
    :cond_4
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v7, 0x7f090249

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/waze/view/anim/AnimationUtils;->flashView(Landroid/view/View;)V

    .line 386
    const/4 v1, 0x0

    .line 389
    :cond_5
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v4, v4, Lcom/waze/reports/VenueData;->numCategories:I

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    iget v4, v4, Lcom/waze/reports/VenueData;->numCategories:I

    if-eqz v4, :cond_7

    .line 390
    if-eqz v1, :cond_6

    .line 392
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v7, 0x7f090251

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/waze/reports/EditPlaceFragment;->focusOnView(Landroid/view/View;)V

    .line 394
    :cond_6
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mCategoriesPtsView:Lcom/waze/ifs/ui/PointsView;

    invoke-static {v4}, Lcom/waze/view/anim/AnimationUtils;->flashView(Landroid/view/View;)V

    .line 395
    const/4 v1, 0x0

    .line 398
    :cond_7
    if-nez v1, :cond_a

    .line 410
    :goto_1
    return-void

    .line 360
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/ifs/ui/PointsView;

    .line 361
    .local v3, pv:Lcom/waze/ifs/ui/PointsView;
    invoke-virtual {v3}, Lcom/waze/ifs/ui/PointsView;->isValid()Z

    move-result v7

    if-nez v7, :cond_0

    .line 362
    if-eqz v1, :cond_9

    .line 364
    invoke-direct {p0, v3}, Lcom/waze/reports/EditPlaceFragment;->focusOnView(Landroid/view/View;)V

    .line 366
    :cond_9
    invoke-static {v3}, Lcom/waze/view/anim/AnimationUtils;->flashView(Landroid/view/View;)V

    .line 367
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 400
    .end local v3           #pv:Lcom/waze/ifs/ui/PointsView;
    :cond_a
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iput-object v0, v4, Lcom/waze/reports/VenueData;->houseNumber:Ljava/lang/String;

    .line 402
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v7, p0, Lcom/waze/reports/EditPlaceFragment;->mETName:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    .line 403
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v7, p0, Lcom/waze/reports/EditPlaceFragment;->mETPhone:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/waze/reports/VenueData;->phoneNumber:Ljava/lang/String;

    .line 404
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v7, p0, Lcom/waze/reports/EditPlaceFragment;->mETWebsite:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/waze/reports/VenueData;->website:Ljava/lang/String;

    .line 406
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v7, v4, Lcom/waze/reports/VenueData;->numNewImages:I

    iget-boolean v4, p0, Lcom/waze/reports/EditPlaceFragment;->mIsUploading:Z

    if-eqz v4, :cond_b

    move v4, v5

    :goto_2
    add-int v2, v7, v4

    .line 407
    .local v2, photosTaken:I
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/waze/reports/EditPlaceFlowActivity;

    iget-object v7, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v8, p0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    if-lez v2, :cond_c

    .line 408
    :goto_3
    iget v6, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    .line 407
    invoke-virtual {v4, v7, v8, v5, v6}, Lcom/waze/reports/EditPlaceFlowActivity;->sendVenue(Lcom/waze/reports/VenueData;Lcom/waze/reports/VenueData;ZI)V

    .line 409
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_PLEASE_WAIT___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->OpenProgressPopup(Ljava/lang/String;)V

    goto :goto_1

    .end local v2           #photosTaken:I
    :cond_b
    move v4, v6

    .line 406
    goto :goto_2

    .restart local v2       #photosTaken:I
    :cond_c
    move v5, v6

    .line 407
    goto :goto_3
.end method

.method private final focusOnView(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 413
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f0900a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 414
    .local v1, sv:Landroid/widget/ScrollView;
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 417
    move-object v0, p1

    .line 419
    .local v0, child:Landroid/view/View;
    new-instance v2, Lcom/waze/reports/EditPlaceFragment$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/waze/reports/EditPlaceFragment$4;-><init>(Lcom/waze/reports/EditPlaceFragment;Landroid/widget/ScrollView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 425
    return-void

    .line 415
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .restart local p1
    goto :goto_0
.end method

.method private getOpeningHoursString(Lcom/waze/reports/VenueData;)Ljava/lang/String;
    .locals 4
    .parameter "vd"

    .prologue
    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 891
    .local v0, bob:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p1, Lcom/waze/reports/VenueData;->numOpeningHours:I

    if-lt v1, v3, :cond_1

    .line 898
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 899
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 902
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 892
    :cond_1
    iget-object v3, p1, Lcom/waze/reports/VenueData;->openingHours:[Lcom/waze/reports/OpeningHours;

    aget-object v2, v3, v1

    .line 893
    .local v2, oh:Lcom/waze/reports/OpeningHours;
    invoke-virtual {v2}, Lcom/waze/reports/OpeningHours;->getDaysString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {v2}, Lcom/waze/reports/OpeningHours;->getHoursString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 891
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private imageArrayLoad()V
    .locals 10

    .prologue
    .line 717
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v4, v4, Lcom/waze/reports/VenueData;->numImages:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/waze/reports/EditPlaceFragment;->mImageArray:Ljava/util/ArrayList;

    .line 718
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v3, v3, Lcom/waze/reports/VenueData;->numImages:I

    if-lt v9, v3, :cond_0

    .line 735
    return-void

    .line 721
    :cond_0
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v1, v3, v9

    .line 722
    .local v1, uri:Ljava/lang/String;
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    aget-object v2, v3, v9

    .line 723
    .local v2, thumbUri:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 724
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 725
    .local v8, f:Ljava/io/File;
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 727
    new-instance v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/waze/reports/PhotoPagerSection$VenueImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 733
    .end local v8           #f:Ljava/io/File;
    .local v0, vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;
    :goto_1
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 730
    .end local v0           #vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;
    :cond_1
    new-instance v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v3, v3, Lcom/waze/reports/VenueData;->imageReporters:[Ljava/lang/String;

    aget-object v3, v3, v9

    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v4, v4, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    aget-object v4, v4, v9

    .line 731
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v5, v5, Lcom/waze/reports/VenueData;->imageLiked:[Z

    aget-boolean v5, v5, v9

    iget-object v6, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v6, v6, Lcom/waze/reports/VenueData;->imageByMe:[Z

    aget-boolean v6, v6, v9

    const/4 v7, 0x0

    .line 730
    invoke-direct/range {v0 .. v7}, Lcom/waze/reports/PhotoPagerSection$VenueImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 729
    .restart local v0       #vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;
    goto :goto_1
.end method

.method private onEdit()V
    .locals 3

    .prologue
    .line 1151
    iget-boolean v1, p0, Lcom/waze/reports/EditPlaceFragment;->mDidEdit:Z

    if-eqz v1, :cond_0

    .line 1155
    :goto_0
    return-void

    .line 1152
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/reports/EditPlaceFragment;->mDidEdit:Z

    .line 1153
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v2, 0x7f090058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBarTextButton;

    .line 1154
    .local v0, titleButtonBar:Lcom/waze/view/title/TitleBarTextButton;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBarTextButton;->setCloseButtonDisabled(Z)V

    goto :goto_0
.end method

.method private roll(Landroid/widget/ScrollView;Landroid/widget/ScrollView;ZZ)V
    .locals 8
    .parameter "sv"
    .parameter "sv2"
    .parameter "up"
    .parameter "last"

    .prologue
    .line 1122
    new-instance v0, Lcom/waze/animation/easing/AnimationEasingManager;

    new-instance v1, Lcom/waze/reports/EditPlaceFragment$19;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/waze/reports/EditPlaceFragment$19;-><init>(Lcom/waze/reports/EditPlaceFragment;ZLandroid/widget/ScrollView;Landroid/widget/ScrollView;)V

    invoke-direct {v0, v1}, Lcom/waze/animation/easing/AnimationEasingManager;-><init>(Lcom/waze/animation/easing/AnimationEasingManager$EasingCallback;)V

    .line 1145
    .local v0, manager:Lcom/waze/animation/easing/AnimationEasingManager;
    if-eqz p4, :cond_0

    const-class v1, Lcom/waze/animation/easing/Elastic;

    :goto_0
    sget-object v2, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseOut:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    const-wide/16 v3, 0x0

    const/high16 v5, 0x41a0

    iget v6, p0, Lcom/waze/reports/EditPlaceFragment;->mDensity:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    if-eqz p4, :cond_1

    .line 1146
    const/16 v7, 0x258

    .line 1145
    :goto_1
    invoke-virtual/range {v0 .. v7}, Lcom/waze/animation/easing/AnimationEasingManager;->start(Ljava/lang/Class;Lcom/waze/animation/easing/AnimationEasingManager$EaseType;DDI)V

    .line 1148
    return-void

    .line 1145
    :cond_0
    const-class v1, Lcom/waze/animation/easing/Circ;

    goto :goto_0

    .line 1147
    :cond_1
    const/16 v7, 0x64

    goto :goto_1
.end method

.method private setAddressOptionsView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 264
    iget-boolean v0, p0, Lcom/waze/reports/EditPlaceFragment;->mWasAddressOptionsViewSet:Z

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->longitude:I

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v3, v3, Lcom/waze/reports/VenueData;->latitude:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->setAddressOptionsView(IIIZ)V

    .line 266
    iput-boolean v4, p0, Lcom/waze/reports/EditPlaceFragment;->mWasAddressOptionsViewSet:Z

    .line 268
    :cond_0
    return-void
.end method

.method private setEditTextAndPoints(IILcom/waze/strings/DisplayStrings;Ljava/lang/String;ILcom/waze/reports/EditPlaceFragment$TextValidator;)Landroid/widget/EditText;
    .locals 8
    .parameter "pointsViewId"
    .parameter "editTextId"
    .parameter "hint"
    .parameter "initialValue"
    .parameter "points"
    .parameter "validator"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/ifs/ui/PointsView;

    .line 740
    .local v2, pv:Lcom/waze/ifs/ui/PointsView;
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 742
    .local v7, et:Landroid/widget/EditText;
    invoke-virtual {v7, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 743
    new-instance v0, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;

    .line 744
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p5

    move-object v4, p6

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;-><init>(Lcom/waze/reports/EditPlaceFragment;Lcom/waze/ifs/ui/PointsView;ILcom/waze/reports/EditPlaceFragment$TextValidator;Ljava/lang/String;Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;)V

    .line 743
    invoke-virtual {v7, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 745
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    invoke-virtual {v0, p3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 746
    return-object v7
.end method

.method private setPointsWheels(Z)V
    .locals 14
    .parameter "animate"

    .prologue
    .line 980
    iget-boolean v11, p0, Lcom/waze/reports/EditPlaceFragment;->mIsRolling:Z

    if-eqz v11, :cond_0

    .line 1118
    :goto_0
    return-void

    .line 981
    :cond_0
    iget-object v11, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v12, 0x7f090268

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ScrollView;

    .line 982
    .local v9, onesSV:Landroid/widget/ScrollView;
    iget-object v11, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v12, 0x7f090264

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ScrollView;

    .line 984
    .local v10, tensSV:Landroid/widget/ScrollView;
    iget-object v11, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v12, 0x7f090262

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 985
    .local v8, layout:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_1

    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    if-lez v11, :cond_1

    .line 986
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 987
    if-eqz p1, :cond_1

    .line 988
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    invoke-direct {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 989
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v11, 0xc8

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 990
    invoke-virtual {v8, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 994
    .end local v0           #aa:Landroid/view/animation/AlphaAnimation;
    :cond_1
    if-eqz p1, :cond_7

    .line 995
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I

    iget v12, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    if-le v11, v12, :cond_4

    .line 997
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/waze/reports/EditPlaceFragment;->mIsRolling:Z

    .line 998
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I

    iget v12, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    sub-int/2addr v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    const/4 v7, 0x1

    .line 1000
    .local v7, last:Z
    :goto_1
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I

    rem-int/lit8 v3, v11, 0xa

    .line 1001
    .local v3, below:I
    add-int/lit8 v11, v3, 0x9

    rem-int/lit8 v5, v11, 0xa

    .line 1002
    .local v5, center:I
    add-int/lit8 v11, v3, 0x8

    rem-int/lit8 v1, v11, 0xa

    .line 1004
    .local v1, above:I
    const v11, 0x7f090265

    invoke-virtual {v9, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1005
    .local v2, aboveTV:Landroid/widget/TextView;
    const v11, 0x7f090267

    invoke-virtual {v9, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1006
    .local v4, belowTV:Landroid/widget/TextView;
    const v11, 0x7f090266

    invoke-virtual {v9, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1007
    .local v6, centerTV:Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    const/4 v11, 0x0

    const/high16 v12, 0x4220

    iget v13, p0, Lcom/waze/reports/EditPlaceFragment;->mDensity:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v9, v11, v12}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1013
    if-nez v3, :cond_3

    .line 1015
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I

    div-int/lit8 v3, v11, 0xa

    .line 1016
    add-int/lit8 v11, v3, 0x9

    rem-int/lit8 v5, v11, 0xa

    .line 1017
    add-int/lit8 v11, v3, 0x8

    rem-int/lit8 v1, v11, 0xa

    .line 1019
    const v11, 0x7f090265

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #aboveTV:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1020
    .restart local v2       #aboveTV:Landroid/widget/TextView;
    const v11, 0x7f090267

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #belowTV:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 1021
    .restart local v4       #belowTV:Landroid/widget/TextView;
    const v11, 0x7f090266

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #centerTV:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 1022
    .restart local v6       #centerTV:Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    const/4 v11, 0x0

    const/high16 v12, 0x4220

    iget v13, p0, Lcom/waze/reports/EditPlaceFragment;->mDensity:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1026
    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11, v7}, Lcom/waze/reports/EditPlaceFragment;->roll(Landroid/widget/ScrollView;Landroid/widget/ScrollView;ZZ)V

    goto/16 :goto_0

    .line 998
    .end local v1           #above:I
    .end local v2           #aboveTV:Landroid/widget/TextView;
    .end local v3           #below:I
    .end local v4           #belowTV:Landroid/widget/TextView;
    .end local v5           #center:I
    .end local v6           #centerTV:Landroid/widget/TextView;
    .end local v7           #last:Z
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1028
    .restart local v1       #above:I
    .restart local v2       #aboveTV:Landroid/widget/TextView;
    .restart local v3       #below:I
    .restart local v4       #belowTV:Landroid/widget/TextView;
    .restart local v5       #center:I
    .restart local v6       #centerTV:Landroid/widget/TextView;
    .restart local v7       #last:Z
    :cond_3
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I

    div-int/lit8 v1, v11, 0xa

    .line 1029
    const v11, 0x7f090265

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #aboveTV:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1030
    .restart local v2       #aboveTV:Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1032
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v9, v11, v12, v7}, Lcom/waze/reports/EditPlaceFragment;->roll(Landroid/widget/ScrollView;Landroid/widget/ScrollView;ZZ)V

    goto/16 :goto_0

    .line 1036
    .end local v1           #above:I
    .end local v2           #aboveTV:Landroid/widget/TextView;
    .end local v3           #below:I
    .end local v4           #belowTV:Landroid/widget/TextView;
    .end local v5           #center:I
    .end local v6           #centerTV:Landroid/widget/TextView;
    .end local v7           #last:Z
    :cond_4
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I

    iget v12, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    if-ge v11, v12, :cond_7

    .line 1038
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/waze/reports/EditPlaceFragment;->mIsRolling:Z

    .line 1039
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    iget v12, p0, Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I

    sub-int/2addr v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    const/4 v7, 0x1

    .line 1041
    .restart local v7       #last:Z
    :goto_2
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I

    rem-int/lit8 v1, v11, 0xa

    .line 1042
    .restart local v1       #above:I
    add-int/lit8 v11, v1, 0x1

    rem-int/lit8 v5, v11, 0xa

    .line 1043
    .restart local v5       #center:I
    add-int/lit8 v11, v1, 0x2

    rem-int/lit8 v3, v11, 0xa

    .line 1045
    .restart local v3       #below:I
    const v11, 0x7f090265

    invoke-virtual {v9, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1046
    .restart local v2       #aboveTV:Landroid/widget/TextView;
    const v11, 0x7f090267

    invoke-virtual {v9, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1047
    .restart local v4       #belowTV:Landroid/widget/TextView;
    const v11, 0x7f090266

    invoke-virtual {v9, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1048
    .restart local v6       #centerTV:Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1054
    const/16 v11, 0x9

    if-ne v1, v11, :cond_6

    .line 1056
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I

    div-int/lit8 v1, v11, 0xa

    .line 1057
    add-int/lit8 v11, v1, 0x1

    rem-int/lit8 v5, v11, 0xa

    .line 1058
    add-int/lit8 v11, v1, 0x2

    rem-int/lit8 v3, v11, 0xa

    .line 1060
    const v11, 0x7f090265

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #aboveTV:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1061
    .restart local v2       #aboveTV:Landroid/widget/TextView;
    const v11, 0x7f090267

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #belowTV:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 1062
    .restart local v4       #belowTV:Landroid/widget/TextView;
    const v11, 0x7f090266

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #centerTV:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 1063
    .restart local v6       #centerTV:Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1068
    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11, v7}, Lcom/waze/reports/EditPlaceFragment;->roll(Landroid/widget/ScrollView;Landroid/widget/ScrollView;ZZ)V

    goto/16 :goto_0

    .line 1039
    .end local v1           #above:I
    .end local v2           #aboveTV:Landroid/widget/TextView;
    .end local v3           #below:I
    .end local v4           #belowTV:Landroid/widget/TextView;
    .end local v5           #center:I
    .end local v6           #centerTV:Landroid/widget/TextView;
    .end local v7           #last:Z
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1070
    .restart local v1       #above:I
    .restart local v2       #aboveTV:Landroid/widget/TextView;
    .restart local v3       #below:I
    .restart local v4       #belowTV:Landroid/widget/TextView;
    .restart local v5       #center:I
    .restart local v6       #centerTV:Landroid/widget/TextView;
    .restart local v7       #last:Z
    :cond_6
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mPrevPoints:I

    div-int/lit8 v1, v11, 0xa

    .line 1071
    const v11, 0x7f090265

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #aboveTV:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1072
    .restart local v2       #aboveTV:Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1074
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v11, v12, v7}, Lcom/waze/reports/EditPlaceFragment;->roll(Landroid/widget/ScrollView;Landroid/widget/ScrollView;ZZ)V

    goto/16 :goto_0

    .line 1079
    .end local v1           #above:I
    .end local v2           #aboveTV:Landroid/widget/TextView;
    .end local v3           #below:I
    .end local v4           #belowTV:Landroid/widget/TextView;
    .end local v5           #center:I
    .end local v6           #centerTV:Landroid/widget/TextView;
    .end local v7           #last:Z
    :cond_7
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    rem-int/lit8 v5, v11, 0xa

    .line 1080
    .restart local v5       #center:I
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    add-int/lit8 v11, v11, 0x9

    rem-int/lit8 v1, v11, 0xa

    .line 1081
    .restart local v1       #above:I
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    add-int/lit8 v11, v11, 0x1

    rem-int/lit8 v3, v11, 0xa

    .line 1083
    .restart local v3       #below:I
    const v11, 0x7f090265

    invoke-virtual {v9, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1084
    .restart local v2       #aboveTV:Landroid/widget/TextView;
    const v11, 0x7f090267

    invoke-virtual {v9, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1085
    .restart local v4       #belowTV:Landroid/widget/TextView;
    const v11, 0x7f090266

    invoke-virtual {v9, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1086
    .restart local v6       #centerTV:Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    const/4 v11, 0x0

    const/high16 v12, 0x41a0

    iget v13, p0, Lcom/waze/reports/EditPlaceFragment;->mDensity:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v9, v11, v12}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1091
    new-instance v11, Lcom/waze/reports/EditPlaceFragment$17;

    invoke-direct {v11, p0, v9}, Lcom/waze/reports/EditPlaceFragment$17;-><init>(Lcom/waze/reports/EditPlaceFragment;Landroid/widget/ScrollView;)V

    invoke-virtual {v9, v11}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 1099
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    div-int/lit8 v5, v11, 0xa

    .line 1100
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    add-int/lit8 v11, v11, 0x9

    rem-int/lit8 v1, v11, 0xa

    .line 1101
    iget v11, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    add-int/lit8 v11, v11, 0x1

    rem-int/lit8 v3, v11, 0xa

    .line 1103
    const v11, 0x7f090265

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #aboveTV:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1104
    .restart local v2       #aboveTV:Landroid/widget/TextView;
    const v11, 0x7f090267

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #belowTV:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 1105
    .restart local v4       #belowTV:Landroid/widget/TextView;
    const v11, 0x7f090266

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #centerTV:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 1106
    .restart local v6       #centerTV:Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1107
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    const/4 v11, 0x0

    const/high16 v12, 0x41a0

    iget v13, p0, Lcom/waze/reports/EditPlaceFragment;->mDensity:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1111
    new-instance v11, Lcom/waze/reports/EditPlaceFragment$18;

    invoke-direct {v11, p0, v10}, Lcom/waze/reports/EditPlaceFragment$18;-><init>(Lcom/waze/reports/EditPlaceFragment;Landroid/widget/ScrollView;)V

    invoke-virtual {v10, v11}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private setUpFragment()V
    .locals 45

    .prologue
    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090058

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Lcom/waze/view/title/TitleBarTextButton;

    .line 429
    .local v44, titleButtonBar:Lcom/waze/view/title/TitleBarTextButton;
    invoke-virtual/range {p0 .. p0}, Lcom/waze/reports/EditPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_EDIT_PLACE:Lcom/waze/strings/DisplayStrings;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_DONE:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3, v4}, Lcom/waze/view/title/TitleBarTextButton;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;Lcom/waze/strings/DisplayStrings;)V

    .line 431
    new-instance v2, Lcom/waze/reports/EditPlaceFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/reports/EditPlaceFragment$5;-><init>(Lcom/waze/reports/EditPlaceFragment;)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Lcom/waze/view/title/TitleBarTextButton;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 438
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/waze/reports/EditPlaceFragment;->mDidEdit:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Lcom/waze/view/title/TitleBarTextButton;->setCloseButtonDisabled(Z)V

    .line 440
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090269

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    .line 441
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_POINTS_COLLECTED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->numImages:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090240

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsTitleText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    .line 445
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_PHOTOS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 452
    :goto_0
    new-instance v3, Lcom/waze/reports/PhotoPagerSection;

    invoke-virtual/range {p0 .. p0}, Lcom/waze/reports/EditPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/waze/ifs/ui/ActivityBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const/4 v5, 0x1

    new-instance v8, Lcom/waze/reports/EditPlaceFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/waze/reports/EditPlaceFragment$6;-><init>(Lcom/waze/reports/EditPlaceFragment;)V

    invoke-direct {v3, v2, v4, v5, v8}, Lcom/waze/reports/PhotoPagerSection;-><init>(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    .line 451
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mPhotoPagerSection:Lcom/waze/reports/PhotoPagerSection;

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mPhotoPagerSection:Lcom/waze/reports/PhotoPagerSection;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/waze/reports/EditPlaceFragment;->mIsUploading:Z

    invoke-virtual {v2, v3}, Lcom/waze/reports/PhotoPagerSection;->setInProgress(Z)V

    .line 473
    invoke-direct/range {p0 .. p0}, Lcom/waze/reports/EditPlaceFragment;->imageArrayLoad()V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mPhotoPagerSection:Lcom/waze/reports/PhotoPagerSection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mImageArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/waze/reports/EditPlaceFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/waze/reports/EditPlaceFragment$7;-><init>(Lcom/waze/reports/EditPlaceFragment;)V

    invoke-virtual {v2, v3, v4}, Lcom/waze/reports/PhotoPagerSection;->setVenue(Ljava/util/ArrayList;Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090241

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsTitleText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    .line 519
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_NAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 518
    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 521
    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Name:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v2}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v7

    .line 524
    .local v7, pts:I
    const v3, 0x7f090244

    const v4, 0x7f090243

    .line 525
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_ADD_NAME:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    iget-object v6, v2, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    new-instance v8, Lcom/waze/reports/EditPlaceFragment$PaternValidator;

    .line 526
    sget-object v2, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->Name:Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;

    invoke-static {v2}, Lcom/waze/reports/EditPlaceValidatorsHolder;->getValidator(Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    invoke-direct {v8, v2, v10}, Lcom/waze/reports/EditPlaceFragment$PaternValidator;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v2, p0

    .line 524
    invoke-direct/range {v2 .. v8}, Lcom/waze/reports/EditPlaceFragment;->setEditTextAndPoints(IILcom/waze/strings/DisplayStrings;Ljava/lang/String;ILcom/waze/reports/EditPlaceFragment$TextValidator;)Landroid/widget/EditText;

    move-result-object v2

    .line 523
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mETName:Landroid/widget/EditText;

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090245

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsTitleText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    .line 529
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_ADDRESS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 528
    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 531
    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->City:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v2}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v7

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090249

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/waze/ifs/ui/PointsView;

    .line 534
    .local v6, cityPts:Lcom/waze/ifs/ui/PointsView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090247

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetMain:Lcom/waze/view/text/WazeTextView;

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090248

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetSub:Lcom/waze/view/text/WazeTextView;

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    iget-object v9, v2, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    .line 538
    .local v9, origString:Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    iget-object v9, v2, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    .line 540
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetMain:Lcom/waze/view/text/WazeTextView;

    new-instance v4, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;

    .line 541
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/waze/reports/EditPlaceFragment;->mHasContentValidator:Lcom/waze/reports/EditPlaceFragment$TextValidator;

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;-><init>(Lcom/waze/reports/EditPlaceFragment;Lcom/waze/ifs/ui/PointsView;ILcom/waze/reports/EditPlaceFragment$TextValidator;Ljava/lang/String;Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;)V

    .line 540
    invoke-virtual {v2, v4}, Lcom/waze/view/text/WazeTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetMain:Lcom/waze/view/text/WazeTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_STREET_NAME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetSub:Lcom/waze/view/text/WazeTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_CITY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090246

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/reports/EditPlaceFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/waze/reports/EditPlaceFragment$8;-><init>(Lcom/waze/reports/EditPlaceFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->HouseNumber:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v2}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v7

    .line 553
    const/16 v16, 0x0

    .line 554
    .local v16, houseValidator:Lcom/waze/reports/EditPlaceFragment$PaternValidator;
    sget-object v2, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->HouseNumber:Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;

    invoke-static {v2}, Lcom/waze/reports/EditPlaceValidatorsHolder;->getValidator(Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 556
    new-instance v16, Lcom/waze/reports/EditPlaceFragment$PaternValidator;

    .end local v16           #houseValidator:Lcom/waze/reports/EditPlaceFragment$PaternValidator;
    sget-object v2, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->HouseNumber:Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;

    invoke-static {v2}, Lcom/waze/reports/EditPlaceValidatorsHolder;->getValidator(Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;)Ljava/lang/String;

    move-result-object v2

    .line 557
    const/4 v3, 0x1

    .line 556
    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Lcom/waze/reports/EditPlaceFragment$PaternValidator;-><init>(Ljava/lang/String;Z)V

    .line 561
    .restart local v16       #houseValidator:Lcom/waze/reports/EditPlaceFragment$PaternValidator;
    :cond_3
    const v11, 0x7f09024b

    const v12, 0x7f09024a

    .line 562
    sget-object v13, Lcom/waze/strings/DisplayStrings;->DS_:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    iget-object v14, v2, Lcom/waze/reports/VenueData;->houseNumber:Ljava/lang/String;

    move-object/from16 v10, p0

    move v15, v7

    .line 561
    invoke-direct/range {v10 .. v16}, Lcom/waze/reports/EditPlaceFragment;->setEditTextAndPoints(IILcom/waze/strings/DisplayStrings;Ljava/lang/String;ILcom/waze/reports/EditPlaceFragment$TextValidator;)Landroid/widget/EditText;

    move-result-object v2

    .line 560
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mETNumber:Landroid/widget/EditText;

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mETNumber:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_HOUSE_NUMBER:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f09024c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsTitleText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    .line 568
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 567
    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f09024e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/MapView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v2, v3}, Lcom/waze/MapView;->setNativeCanvasReadyEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f09024f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mMapImage:Landroid/widget/ImageView;

    .line 573
    new-instance v40, Lcom/waze/reports/EditPlaceFragment$9;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/reports/EditPlaceFragment$9;-><init>(Lcom/waze/reports/EditPlaceFragment;)V

    .line 581
    .local v40, mapClick:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f09024d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/waze/MapView;->setHandleTouch(Z)V

    .line 584
    new-instance v2, Lcom/waze/reports/EditPlaceFragment$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/reports/EditPlaceFragment$10;-><init>(Lcom/waze/reports/EditPlaceFragment;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mReplaceMapRunnable:Ljava/lang/Runnable;

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mReplaceMapRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/waze/MapView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090250

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsTitleText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    .line 610
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_CATEGORIES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 609
    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090251

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/LinearLayout;

    .line 615
    .local v39, categoriesPlace:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/waze/reports/EditPlaceFragment;->refreshCategories(Landroid/widget/LinearLayout;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090252

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsTitleText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    .line 620
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SERVICES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 619
    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090253

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/reports/EditPlaceFragment$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/waze/reports/EditPlaceFragment$11;-><init>(Lcom/waze/reports/EditPlaceFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090254

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    .line 635
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_TAP_TO_ADD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 634
    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090255

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/waze/ifs/ui/PointsView;

    .line 638
    .local v19, srvcPts:Lcom/waze/ifs/ui/PointsView;
    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Services:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v2}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v7

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    invoke-static {v2}, Lcom/waze/reports/EditPlaceServicesFragment;->getServicesString(Lcom/waze/reports/VenueData;)Ljava/lang/String;

    move-result-object v22

    .line 641
    .local v22, servicesString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090254

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Lcom/waze/view/text/WazeTextView;

    .line 642
    .local v43, servicesTextView:Lcom/waze/view/text/WazeTextView;
    move-object/from16 v0, v43

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    new-instance v17, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;

    const/16 v21, 0x0

    .line 644
    const/16 v23, 0x0

    move-object/from16 v18, p0

    move/from16 v20, v7

    invoke-direct/range {v17 .. v23}, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;-><init>(Lcom/waze/reports/EditPlaceFragment;Lcom/waze/ifs/ui/PointsView;ILcom/waze/reports/EditPlaceFragment$TextValidator;Ljava/lang/String;Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;)V

    .line 643
    move-object/from16 v0, v43

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090256

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsTitleText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    .line 649
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_OPENING_HOURS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 648
    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090257

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/reports/EditPlaceFragment$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/waze/reports/EditPlaceFragment$12;-><init>(Lcom/waze/reports/EditPlaceFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090258

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    .line 659
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_TAP_TO_ADD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 658
    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090259

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/waze/ifs/ui/PointsView;

    .line 662
    .local v25, opHrsPts:Lcom/waze/ifs/ui/PointsView;
    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->OpeningHours:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v2}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v7

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/waze/reports/EditPlaceFragment;->getOpeningHoursString(Lcom/waze/reports/VenueData;)Ljava/lang/String;

    move-result-object v28

    .line 665
    .local v28, openingHoursString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090258

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Lcom/waze/view/text/WazeTextView;

    .line 666
    .local v41, opHrsTextView:Lcom/waze/view/text/WazeTextView;
    move-object/from16 v0, v41

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    new-instance v23, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;

    const/16 v27, 0x0

    .line 668
    const/16 v29, 0x0

    move-object/from16 v24, p0

    move/from16 v26, v7

    invoke-direct/range {v23 .. v29}, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;-><init>(Lcom/waze/reports/EditPlaceFragment;Lcom/waze/ifs/ui/PointsView;ILcom/waze/reports/EditPlaceFragment$TextValidator;Ljava/lang/String;Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;)V

    .line 667
    move-object/from16 v0, v41

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f09025a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsTitleText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    .line 671
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_DETAILS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 670
    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 673
    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Description:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v2}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v7

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f09025c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lcom/waze/ifs/ui/PointsView;

    .line 676
    .local v31, aboutPts:Lcom/waze/ifs/ui/PointsView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f09025b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/text/WazeTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mAboutEdit:Lcom/waze/view/text/WazeTextView;

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mAboutEdit:Lcom/waze/view/text/WazeTextView;

    new-instance v29, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;

    .line 678
    new-instance v33, Lcom/waze/reports/EditPlaceFragment$LengthValidator;

    const/4 v3, 0x3

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4}, Lcom/waze/reports/EditPlaceFragment$LengthValidator;-><init>(IZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    iget-object v0, v3, Lcom/waze/reports/VenueData;->about:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v30, p0

    move/from16 v32, v7

    invoke-direct/range {v29 .. v35}, Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;-><init>(Lcom/waze/reports/EditPlaceFragment;Lcom/waze/ifs/ui/PointsView;ILcom/waze/reports/EditPlaceFragment$TextValidator;Ljava/lang/String;Lcom/waze/reports/EditPlaceFragment$TextPointsWatcherImplementation;)V

    .line 677
    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/waze/view/text/WazeTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mAboutEdit:Lcom/waze/view/text/WazeTextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_ABOUT2:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mAboutEdit:Lcom/waze/view/text/WazeTextView;

    new-instance v3, Lcom/waze/reports/EditPlaceFragment$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/waze/reports/EditPlaceFragment$13;-><init>(Lcom/waze/reports/EditPlaceFragment;)V

    invoke-virtual {v2, v3}, Lcom/waze/view/text/WazeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->PhoneNumber:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v2}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v7

    .line 691
    const v33, 0x7f09025e

    const v34, 0x7f09025d

    .line 692
    sget-object v35, Lcom/waze/strings/DisplayStrings;->DS_PHONE_NUMBER:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    iget-object v0, v2, Lcom/waze/reports/VenueData;->phoneNumber:Ljava/lang/String;

    move-object/from16 v36, v0

    new-instance v38, Lcom/waze/reports/EditPlaceFragment$PaternValidator;

    .line 693
    sget-object v2, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->PhoneNumber:Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;

    invoke-static {v2}, Lcom/waze/reports/EditPlaceValidatorsHolder;->getValidator(Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v38

    invoke-direct {v0, v2, v3}, Lcom/waze/reports/EditPlaceFragment$PaternValidator;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v32, p0

    move/from16 v37, v7

    .line 691
    invoke-direct/range {v32 .. v38}, Lcom/waze/reports/EditPlaceFragment;->setEditTextAndPoints(IILcom/waze/strings/DisplayStrings;Ljava/lang/String;ILcom/waze/reports/EditPlaceFragment$TextValidator;)Landroid/widget/EditText;

    move-result-object v2

    .line 690
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mETPhone:Landroid/widget/EditText;

    .line 695
    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->URL:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v2}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v7

    .line 698
    const v33, 0x7f090260

    const v34, 0x7f09025f

    .line 699
    sget-object v35, Lcom/waze/strings/DisplayStrings;->DS_WEBSITE:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    iget-object v0, v2, Lcom/waze/reports/VenueData;->website:Ljava/lang/String;

    move-object/from16 v36, v0

    new-instance v38, Lcom/waze/reports/EditPlaceFragment$PaternValidator;

    .line 700
    sget-object v2, Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;->URL:Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;

    invoke-static {v2}, Lcom/waze/reports/EditPlaceValidatorsHolder;->getValidator(Lcom/waze/reports/EditPlaceValidatorsHolder$ValidatorType;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v38

    invoke-direct {v0, v2, v3}, Lcom/waze/reports/EditPlaceFragment$PaternValidator;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v32, p0

    move/from16 v37, v7

    .line 698
    invoke-direct/range {v32 .. v38}, Lcom/waze/reports/EditPlaceFragment;->setEditTextAndPoints(IILcom/waze/strings/DisplayStrings;Ljava/lang/String;ILcom/waze/reports/EditPlaceFragment$TextValidator;)Landroid/widget/EditText;

    move-result-object v2

    .line 697
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mETWebsite:Landroid/widget/EditText;

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090261

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Lcom/waze/settings/DrillDownSettingView;

    .line 703
    .local v42, report:Lcom/waze/settings/DrillDownSettingView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_REPORT_A_PROBLEM:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setText(Ljava/lang/String;)V

    .line 704
    new-instance v2, Lcom/waze/reports/EditPlaceFragment$14;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/reports/EditPlaceFragment$14;-><init>(Lcom/waze/reports/EditPlaceFragment;)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Lcom/waze/settings/DrillDownSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/waze/reports/EditPlaceFragment;->updatePoints()V

    .line 714
    return-void

    .line 447
    .end local v6           #cityPts:Lcom/waze/ifs/ui/PointsView;
    .end local v7           #pts:I
    .end local v9           #origString:Ljava/lang/String;
    .end local v16           #houseValidator:Lcom/waze/reports/EditPlaceFragment$PaternValidator;
    .end local v19           #srvcPts:Lcom/waze/ifs/ui/PointsView;
    .end local v22           #servicesString:Ljava/lang/String;
    .end local v25           #opHrsPts:Lcom/waze/ifs/ui/PointsView;
    .end local v28           #openingHoursString:Ljava/lang/String;
    .end local v31           #aboutPts:Lcom/waze/ifs/ui/PointsView;
    .end local v39           #categoriesPlace:Landroid/widget/LinearLayout;
    .end local v40           #mapClick:Landroid/view/View$OnClickListener;
    .end local v41           #opHrsTextView:Lcom/waze/view/text/WazeTextView;
    .end local v42           #report:Lcom/waze/settings/DrillDownSettingView;
    .end local v43           #servicesTextView:Lcom/waze/view/text/WazeTextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v3, 0x7f090240

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/settings/SettingsTitleText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    .line 448
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_PHOTO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 447
    invoke-virtual {v2, v3}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private unsetAddressOptionsView()V
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/waze/reports/EditPlaceFragment;->mWasAddressOptionsViewSet:Z

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetAddressOptionsView()V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFragment;->mWasAddressOptionsViewSet:Z

    .line 275
    :cond_0
    return-void
.end method


# virtual methods
.method protected addCategoryLine(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .locals 9
    .parameter "categoriesPlace"
    .parameter "id"
    .parameter "top"
    .parameter "bottom"
    .parameter "bClearable"

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03012c

    .line 820
    const/4 v8, 0x0

    .line 819
    invoke-virtual {v6, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 821
    .local v1, newLine:Landroid/view/View;
    const v6, 0x7f09076e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/text/WazeTextView;

    .line 822
    .local v4, topView:Lcom/waze/view/text/WazeTextView;
    invoke-virtual {v4, p3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    const v6, 0x7f09076f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/text/WazeTextView;

    .line 825
    .local v0, bottomView:Lcom/waze/view/text/WazeTextView;
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 826
    invoke-virtual {v0, p4}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    :goto_0
    if-eqz p5, :cond_1

    .line 832
    const v6, 0x7f09076c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/waze/reports/EditPlaceFragment$16;

    invoke-direct {v7, p0, p2, p1}, Lcom/waze/reports/EditPlaceFragment$16;-><init>(Lcom/waze/reports/EditPlaceFragment;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 860
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 861
    .local v2, p:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b001f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 862
    return-object v1

    .line 828
    .end local v2           #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcom/waze/view/text/WazeTextView;->setVisibility(I)V

    goto :goto_0

    .line 842
    :cond_1
    const v6, 0x7f09076c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 843
    const v6, 0x7f09076d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/waze/ifs/ui/PointsView;

    iput-object v6, p0, Lcom/waze/reports/EditPlaceFragment;->mCategoriesPtsView:Lcom/waze/ifs/ui/PointsView;

    .line 844
    iget-object v6, p0, Lcom/waze/reports/EditPlaceFragment;->mCategoriesPtsView:Lcom/waze/ifs/ui/PointsView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/waze/ifs/ui/PointsView;->setVisibility(I)V

    .line 845
    iget-object v6, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v6, v6, Lcom/waze/reports/VenueData;->numCategories:I

    if-lez v6, :cond_4

    const/4 v5, 0x1

    .line 846
    .local v5, valid:Z
    :goto_2
    iget-object v6, p0, Lcom/waze/reports/EditPlaceFragment;->mCategoriesPtsView:Lcom/waze/ifs/ui/PointsView;

    invoke-virtual {v6, v5}, Lcom/waze/ifs/ui/PointsView;->setValid(Z)V

    .line 847
    sget-object v6, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Categories:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v6}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v3

    .line 848
    .local v3, points:I
    iget-object v7, p0, Lcom/waze/reports/EditPlaceFragment;->mCategoriesPtsView:Lcom/waze/ifs/ui/PointsView;

    iget-object v6, p0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    iget v6, v6, Lcom/waze/reports/VenueData;->numCategories:I

    if-lez v6, :cond_5

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v7, v3, v6}, Lcom/waze/ifs/ui/PointsView;->setPoints(IZ)V

    .line 849
    iget-object v7, p0, Lcom/waze/reports/EditPlaceFragment;->mCategoriesPtsView:Lcom/waze/ifs/ui/PointsView;

    iget-boolean v6, p0, Lcom/waze/reports/EditPlaceFragment;->mWereCategoriesChanged:Z

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    const/4 v6, 0x1

    :goto_4
    const/4 v8, 0x0

    invoke-virtual {v7, v6, v5, v8}, Lcom/waze/ifs/ui/PointsView;->setIsOn(ZZZ)V

    .line 850
    iget-boolean v6, p0, Lcom/waze/reports/EditPlaceFragment;->mWereCategoriesPointsGiven:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    .line 851
    :cond_2
    iget-boolean v6, p0, Lcom/waze/reports/EditPlaceFragment;->mWereCategoriesChanged:Z

    if-eqz v6, :cond_3

    .line 852
    iget v6, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    .line 853
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->onEdit()V

    .line 855
    :cond_3
    iget-boolean v6, p0, Lcom/waze/reports/EditPlaceFragment;->mWereCategoriesChanged:Z

    iput-boolean v6, p0, Lcom/waze/reports/EditPlaceFragment;->mWereCategoriesPointsGiven:Z

    .line 856
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFragment;->updatePoints()V

    goto/16 :goto_1

    .line 845
    .end local v3           #points:I
    .end local v5           #valid:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 848
    .restart local v3       #points:I
    .restart local v5       #valid:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 849
    :cond_6
    const/4 v6, 0x0

    goto :goto_4
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 308
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 309
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->setUpFragment()V

    .line 310
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onResume()V

    .line 311
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 291
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

    .line 292
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;

    .line 294
    if-eqz p1, :cond_0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/EditPlaceFragment;

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

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mOrigVenue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/VenueData;

    .line 296
    iput-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mScrollY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/waze/reports/EditPlaceFragment;->mScrollY:I

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsUploading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 299
    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFragment;->mIsUploading:Z

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mDidEdit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFragment;->mDidEdit:Z

    .line 303
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 216
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 218
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/waze/reports/EditPlaceFragment;->mDensity:F

    .line 220
    const v4, 0x7f030046

    invoke-virtual {p1, v4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    .line 222
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mValidatedPointsViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 223
    iput v3, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    .line 224
    iput-boolean v3, p0, Lcom/waze/reports/EditPlaceFragment;->mWereCategoriesPointsGiven:Z

    .line 225
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->setUpFragment()V

    .line 226
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFragment;->updateVenueFields()V

    .line 228
    sget-object v4, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Images:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v4}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v1

    .line 229
    .local v1, pts:I
    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v4, v4, Lcom/waze/reports/VenueData;->numNewImages:I

    iget-boolean v5, p0, Lcom/waze/reports/EditPlaceFragment;->mIsUploading:Z

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int v0, v4, v3

    .line 230
    .local v0, photosTaken:I
    iget v3, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    mul-int v4, v0, v1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    .line 232
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-boolean v3, v3, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    if-eqz v3, :cond_1

    .line 233
    iget v3, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    sget-object v4, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Location:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v4}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    .line 236
    :cond_1
    iget v3, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    if-nez v3, :cond_2

    .line 237
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v4, 0x7f090262

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFragment;->updatePoints()V

    .line 242
    iget v3, p0, Lcom/waze/reports/EditPlaceFragment;->mScrollY:I

    if-lez v3, :cond_3

    .line 243
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v4, 0x7f0900a5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 244
    .local v2, sv:Landroid/widget/ScrollView;
    new-instance v3, Lcom/waze/reports/EditPlaceFragment$3;

    invoke-direct {v3, p0, v2}, Lcom/waze/reports/EditPlaceFragment$3;-><init>(Lcom/waze/reports/EditPlaceFragment;Landroid/widget/ScrollView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 252
    .end local v2           #sv:Landroid/widget/ScrollView;
    :cond_3
    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    return-object v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mTyd:Lcom/waze/reports/ThankYouDialog;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mTyd:Lcom/waze/reports/ThankYouDialog;

    invoke-virtual {v0}, Lcom/waze/reports/ThankYouDialog;->dismiss()V

    .line 260
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 261
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->unsetAddressOptionsView()V

    .line 758
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v1}, Lcom/waze/MapView;->onPause()V

    .line 759
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v2, 0x7f0900a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 760
    .local v0, sv:Landroid/widget/ScrollView;
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/waze/reports/EditPlaceFragment;->mScrollY:I

    .line 761
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 762
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onResume()V

    .line 767
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 768
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFragment;->updateExtVenueFields()V

    .line 769
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->setAddressOptionsView()V

    .line 770
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/EditPlaceFragment;

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

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mOrigVenue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mScrollY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/waze/reports/EditPlaceFragment;->mScrollY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mIsUploading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/reports/EditPlaceFragment;->mIsUploading:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mDidEdit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/waze/reports/EditPlaceFragment;->mDidEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 285
    return-void
.end method

.method public photoTaken(Lcom/waze/reports/VenueData;)V
    .locals 3
    .parameter "venue"

    .prologue
    const/4 v2, 0x1

    .line 931
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    .line 932
    iput-boolean v2, p0, Lcom/waze/reports/EditPlaceFragment;->mIsUploading:Z

    .line 933
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->imageArrayLoad()V

    .line 935
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    if-nez v1, :cond_0

    .line 936
    iput-boolean v2, p0, Lcom/waze/reports/EditPlaceFragment;->mDidEdit:Z

    .line 947
    :goto_0
    return-void

    .line 940
    :cond_0
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mPhotoPagerSection:Lcom/waze/reports/PhotoPagerSection;

    iget-boolean v2, p0, Lcom/waze/reports/EditPlaceFragment;->mIsUploading:Z

    invoke-virtual {v1, v2}, Lcom/waze/reports/PhotoPagerSection;->setInProgress(Z)V

    .line 941
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mPhotoPagerSection:Lcom/waze/reports/PhotoPagerSection;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/waze/reports/PhotoPagerSection;->venueUpdated(Ljava/util/ArrayList;)V

    .line 943
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Images:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v1}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v0

    .line 944
    .local v0, pts:I
    iget v1, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    .line 945
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFragment;->updatePoints()V

    .line 946
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->onEdit()V

    goto :goto_0
.end method

.method public refreshCategories(Landroid/widget/LinearLayout;)V
    .locals 12
    .parameter "categoriesPlace"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 773
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 774
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v0, v0, Lcom/waze/reports/VenueData;->numCategories:I

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    iget v1, v1, Lcom/waze/reports/VenueData;->numCategories:I

    if-eq v0, v1, :cond_1

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFragment;->mWereCategoriesChanged:Z

    .line 776
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    if-eqz v0, :cond_0

    .line 777
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v0, v0, Lcom/waze/reports/VenueData;->numCategories:I

    if-lt v9, v0, :cond_2

    .line 793
    .end local v9           #i:I
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v11

    .line 796
    .local v11, nm:Lcom/waze/NativeManager;
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_TAP_TO_ADD_CATEGORIES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v6, v4

    .line 795
    invoke-virtual/range {v2 .. v7}, Lcom/waze/reports/EditPlaceFragment;->addCategoryLine(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v8

    .line 798
    .local v8, add:Landroid/view/View;
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v0, v0, Lcom/waze/reports/VenueData;->numCategories:I

    if-nez v0, :cond_5

    .line 799
    const v0, 0x7f020225

    .line 798
    :goto_2
    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 801
    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 803
    new-instance v0, Lcom/waze/reports/EditPlaceFragment$15;

    invoke-direct {v0, p0}, Lcom/waze/reports/EditPlaceFragment$15;-><init>(Lcom/waze/reports/EditPlaceFragment;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 814
    return-void

    .end local v8           #add:Landroid/view/View;
    .end local v11           #nm:Lcom/waze/NativeManager;
    :cond_1
    move v0, v7

    .line 774
    goto :goto_0

    .line 778
    .restart local v9       #i:I
    :cond_2
    iget-boolean v0, p0, Lcom/waze/reports/EditPlaceFragment;->mWereCategoriesChanged:Z

    if-nez v0, :cond_3

    .line 779
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v0, v0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    aget-object v0, v0, v9

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 780
    iput-boolean v5, p0, Lcom/waze/reports/EditPlaceFragment;->mWereCategoriesChanged:Z

    .line 784
    :cond_3
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v0, v0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    aget-object v2, v0, v9

    .line 785
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v0, v0, Lcom/waze/reports/VenueData;->categories:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-static {v0}, Lcom/waze/reports/EditPlaceCategoriesHolder;->getCategoryById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    .line 784
    invoke-virtual/range {v0 .. v5}, Lcom/waze/reports/EditPlaceFragment;->addCategoryLine(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v10

    .line 786
    .local v10, line:Landroid/view/View;
    if-nez v9, :cond_4

    .line 787
    const v0, 0x7f020226

    .line 786
    :goto_3
    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 789
    invoke-virtual {v10, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 777
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 788
    :cond_4
    const v0, 0x7f020224

    goto :goto_3

    .line 800
    .end local v9           #i:I
    .end local v10           #line:Landroid/view/View;
    .restart local v8       #add:Landroid/view/View;
    .restart local v11       #nm:Lcom/waze/NativeManager;
    :cond_5
    const v0, 0x7f020223

    goto :goto_2
.end method

.method public setOpeningHours(Lcom/waze/reports/VenueData;)V
    .locals 2
    .parameter "venue"

    .prologue
    .line 866
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    .line 867
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    if-nez v0, :cond_0

    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFragment;->mDidEdit:Z

    .line 875
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v1, 0x7f090258

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/text/WazeTextView;

    .line 873
    invoke-direct {p0, p1}, Lcom/waze/reports/EditPlaceFragment;->getOpeningHoursString(Lcom/waze/reports/VenueData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->onEdit()V

    goto :goto_0
.end method

.method public setServices(Lcom/waze/reports/VenueData;)V
    .locals 2
    .parameter "venue"

    .prologue
    .line 878
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    .line 879
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    if-nez v0, :cond_0

    .line 880
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFragment;->mDidEdit:Z

    .line 887
    :goto_0
    return-void

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v1, 0x7f090254

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/text/WazeTextView;

    .line 885
    invoke-static {p1}, Lcom/waze/reports/EditPlaceServicesFragment;->getServicesString(Lcom/waze/reports/VenueData;)Ljava/lang/String;

    move-result-object v1

    .line 884
    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->onEdit()V

    goto :goto_0
.end method

.method public setVenue(Lcom/waze/reports/VenueData;)V
    .locals 1
    .parameter "venueData"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    .line 211
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    invoke-virtual {v0}, Lcom/waze/reports/VenueData;->clone()Lcom/waze/reports/VenueData;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mOrigVenue:Lcom/waze/reports/VenueData;

    .line 212
    return-void
.end method

.method public updateAbout(Lcom/waze/reports/VenueData;)V
    .locals 2
    .parameter "venue"

    .prologue
    .line 973
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    .line 974
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mAboutEdit:Lcom/waze/view/text/WazeTextView;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mAboutEdit:Lcom/waze/view/text/WazeTextView;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->about:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    :cond_0
    return-void
.end method

.method public updateAddress(Lcom/waze/reports/VenueData;)V
    .locals 3
    .parameter "venue"

    .prologue
    const/16 v2, 0x8

    .line 1158
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    .line 1159
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFragment;->mDidEdit:Z

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetMain:Lcom/waze/view/text/WazeTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetSub:Lcom/waze/view/text/WazeTextView;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v0, v0, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1167
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetMain:Lcom/waze/view/text/WazeTextView;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1168
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetSub:Lcom/waze/view/text/WazeTextView;

    invoke-virtual {v0, v2}, Lcom/waze/view/text/WazeTextView;->setVisibility(I)V

    .line 1178
    :goto_1
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->onEdit()V

    goto :goto_0

    .line 1169
    :cond_2
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v0, v0, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1170
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetMain:Lcom/waze/view/text/WazeTextView;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetSub:Lcom/waze/view/text/WazeTextView;

    invoke-virtual {v0, v2}, Lcom/waze/view/text/WazeTextView;->setVisibility(I)V

    goto :goto_1

    .line 1173
    :cond_3
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetMain:Lcom/waze/view/text/WazeTextView;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetSub:Lcom/waze/view/text/WazeTextView;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetSub:Lcom/waze/view/text/WazeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateCategories(Lcom/waze/reports/VenueData;)V
    .locals 3
    .parameter "venue"

    .prologue
    .line 960
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    .line 961
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    if-nez v1, :cond_0

    .line 962
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/reports/EditPlaceFragment;->mDidEdit:Z

    .line 970
    :goto_0
    return-void

    .line 967
    :cond_0
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v2, 0x7f090251

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 968
    .local v0, categoriesPlace:Landroid/widget/LinearLayout;
    invoke-virtual {p0, v0}, Lcom/waze/reports/EditPlaceFragment;->refreshCategories(Landroid/widget/LinearLayout;)V

    .line 969
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->onEdit()V

    goto :goto_0
.end method

.method updateExtVenueFields()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    const/high16 v7, 0x3f00

    .line 321
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v5, v5, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 322
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetMain:Lcom/waze/view/text/WazeTextView;

    iget-object v6, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v6, v6, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetSub:Lcom/waze/view/text/WazeTextView;

    invoke-virtual {v5, v10}, Lcom/waze/view/text/WazeTextView;->setVisibility(I)V

    .line 332
    :goto_0
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v6, 0x7f09024b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/PointsView;

    .line 333
    .local v0, numberPts:Lcom/waze/ifs/ui/PointsView;
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v5, v5, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v5, v5, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 334
    :cond_0
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mETNumber:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mETNumber:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 336
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mETNumber:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setAlpha(F)V

    .line 337
    invoke-virtual {v0, v7}, Lcom/waze/ifs/ui/PointsView;->setAlpha(F)V

    .line 344
    :goto_1
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mAboutEdit:Lcom/waze/view/text/WazeTextView;

    iget-object v6, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v6, v6, Lcom/waze/reports/VenueData;->about:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    invoke-static {v5}, Lcom/waze/reports/EditPlaceServicesFragment;->getServicesString(Lcom/waze/reports/VenueData;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, servicesString:Ljava/lang/String;
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v6, 0x7f090254

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/text/WazeTextView;

    .line 348
    .local v4, servicesTextView:Lcom/waze/view/text/WazeTextView;
    invoke-virtual {v4, v3}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    invoke-direct {p0, v5}, Lcom/waze/reports/EditPlaceFragment;->getOpeningHoursString(Lcom/waze/reports/VenueData;)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, openingHoursString:Ljava/lang/String;
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    const v6, 0x7f090258

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/text/WazeTextView;

    .line 352
    .local v1, opHrsTextView:Lcom/waze/view/text/WazeTextView;
    invoke-virtual {v1, v2}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    return-void

    .line 324
    .end local v0           #numberPts:Lcom/waze/ifs/ui/PointsView;
    .end local v1           #opHrsTextView:Lcom/waze/view/text/WazeTextView;
    .end local v2           #openingHoursString:Ljava/lang/String;
    .end local v3           #servicesString:Ljava/lang/String;
    .end local v4           #servicesTextView:Lcom/waze/view/text/WazeTextView;
    :cond_1
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v5, v5, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 325
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetMain:Lcom/waze/view/text/WazeTextView;

    iget-object v6, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v6, v6, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetSub:Lcom/waze/view/text/WazeTextView;

    invoke-virtual {v5, v10}, Lcom/waze/view/text/WazeTextView;->setVisibility(I)V

    goto :goto_0

    .line 328
    :cond_2
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetMain:Lcom/waze/view/text/WazeTextView;

    iget-object v6, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v6, v6, Lcom/waze/reports/VenueData;->street:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetSub:Lcom/waze/view/text/WazeTextView;

    iget-object v6, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v6, v6, Lcom/waze/reports/VenueData;->city:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mCityStreetSub:Lcom/waze/view/text/WazeTextView;

    invoke-virtual {v5, v9}, Lcom/waze/view/text/WazeTextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 339
    .restart local v0       #numberPts:Lcom/waze/ifs/ui/PointsView;
    :cond_3
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mETNumber:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 340
    iget-object v5, p0, Lcom/waze/reports/EditPlaceFragment;->mETNumber:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setAlpha(F)V

    .line 341
    invoke-virtual {v0, v8}, Lcom/waze/ifs/ui/PointsView;->setAlpha(F)V

    goto :goto_1
.end method

.method public updateMapLocation(Lcom/waze/reports/VenueData;)V
    .locals 5
    .parameter "venue"

    .prologue
    .line 906
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    .line 908
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;

    if-nez v1, :cond_1

    .line 909
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/reports/EditPlaceFragment;->mDidEdit:Z

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/waze/MapView;->setVisibility(I)V

    .line 914
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;

    invoke-virtual {v1}, Lcom/waze/MapView;->onResume()V

    .line 915
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment;->mReplaceMapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/waze/MapView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 917
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mMapView:Lcom/waze/MapView;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment;->mReplaceMapRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Lcom/waze/MapView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 919
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->setAddressOptionsView()V

    .line 920
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v2, v2, Lcom/waze/reports/VenueData;->longitude:I

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget v3, v3, Lcom/waze/reports/VenueData;->latitude:I

    const/16 v4, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->zoomOnMap(III)V

    .line 922
    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-boolean v1, v1, Lcom/waze/reports/VenueData;->wasLocationChanged:Z

    if-eqz v1, :cond_0

    .line 923
    sget-object v1, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Location:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v1}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v0

    .line 924
    .local v0, pts:I
    iget v1, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I

    .line 925
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceFragment;->updatePoints()V

    .line 926
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->onEdit()V

    goto :goto_0
.end method

.method public updatePhotos(Lcom/waze/reports/VenueData;)V
    .locals 2
    .parameter "venue"

    .prologue
    .line 950
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    .line 951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/reports/EditPlaceFragment;->mIsUploading:Z

    .line 952
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceFragment;->imageArrayLoad()V

    .line 953
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mPhotoPagerSection:Lcom/waze/reports/PhotoPagerSection;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mPhotoPagerSection:Lcom/waze/reports/PhotoPagerSection;

    iget-boolean v1, p0, Lcom/waze/reports/EditPlaceFragment;->mIsUploading:Z

    invoke-virtual {v0, v1}, Lcom/waze/reports/PhotoPagerSection;->setInProgress(Z)V

    .line 955
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mPhotoPagerSection:Lcom/waze/reports/PhotoPagerSection;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/waze/reports/PhotoPagerSection;->venueUpdated(Ljava/util/ArrayList;)V

    .line 957
    :cond_0
    return-void
.end method

.method updatePoints()V
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->r:Landroid/view/View;

    if-nez v0, :cond_0

    .line 752
    :goto_0
    return-void

    .line 751
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/waze/reports/EditPlaceFragment;->setPointsWheels(Z)V

    goto :goto_0
.end method

.method updateVenueFields()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mETNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->houseNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mETName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mETPhone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment;->mETWebsite:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->website:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method
