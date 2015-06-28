.class public Lcom/waze/reports/PlacePhotoGallery;
.super Landroid/app/Dialog;
.source "PlacePhotoGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8


# instance fields
.field private mActivity:Lcom/waze/ifs/ui/ActivityBase;

.field private mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

.field private mImageLocation:Landroid/os/Bundle;

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/reports/PhotoPagerSection$VenueImage;",
            ">;"
        }
    .end annotation
.end field

.field private mItemMargin:I

.field private mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mNm:Lcom/waze/NativeManager;

.field private mPager:Lcom/waze/ifs/ui/WazeViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/os/Bundle;Lcom/waze/ifs/ui/ActivityBase;)V
    .locals 9
    .parameter "context"
    .parameter
    .parameter "startAt"
    .parameter "imageLocation"
    .parameter "ab"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/reports/PhotoPagerSection$VenueImage;",
            ">;I",
            "Landroid/os/Bundle;",
            "Lcom/waze/ifs/ui/ActivityBase;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/PhotoPagerSection$VenueImage;>;"
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 72
    const v6, 0x7f060011

    invoke-direct {p0, p1, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 64
    const/4 v6, 0x0

    iput v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mItemMargin:I

    .line 66
    iput-object v8, p0, Lcom/waze/reports/PlacePhotoGallery;->mImageLocation:Landroid/os/Bundle;

    .line 73
    iput-object p5, p0, Lcom/waze/reports/PlacePhotoGallery;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    .line 74
    iput-object p2, p0, Lcom/waze/reports/PlacePhotoGallery;->mImages:Ljava/util/ArrayList;

    .line 76
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v6

    iput-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mNm:Lcom/waze/NativeManager;

    .line 78
    const v6, 0x7f0300af

    invoke-virtual {p0, v6}, Lcom/waze/reports/PlacePhotoGallery;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lcom/waze/reports/PlacePhotoGallery;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 80
    .local v5, window:Landroid/view/Window;
    invoke-virtual {v5, v7, v7}, Landroid/view/Window;->setLayout(II)V

    .line 82
    const v6, 0x7f090521

    invoke-virtual {p0, v6}, Lcom/waze/reports/PlacePhotoGallery;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 83
    iget-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mMainLayout:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/waze/reports/PlacePhotoGallery$1;

    invoke-direct {v7, p0}, Lcom/waze/reports/PlacePhotoGallery$1;-><init>(Lcom/waze/reports/PlacePhotoGallery;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mMainLayout:Landroid/widget/RelativeLayout;

    const v7, 0x7f090522

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/waze/ifs/ui/WazeViewPager;

    iput-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 94
    .local v0, height:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 96
    .local v4, width:I
    if-le v4, v0, :cond_3

    .line 98
    mul-int/lit8 v6, v0, 0x4

    div-int/lit8 v6, v6, 0x3

    sub-int v6, v4, v6

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mItemMargin:I

    .line 105
    :goto_0
    const/high16 v6, 0x41a0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 106
    .local v1, marginPixels:I
    iget v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mItemMargin:I

    if-le v1, v6, :cond_0

    .line 107
    iget-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    iget v7, p0, Lcom/waze/reports/PlacePhotoGallery;->mItemMargin:I

    sub-int v7, v1, v7

    invoke-virtual {v6, v7}, Lcom/waze/ifs/ui/WazeViewPager;->setPageMargin(I)V

    .line 110
    :cond_0
    iget-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    if-eqz v6, :cond_1

    .line 111
    iget-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v6, v8}, Lcom/waze/ifs/ui/WazeViewPager;->setAdapter(Lcom/waze/ifs/ui/WazePagerAdapter;)V

    .line 114
    :cond_1
    new-instance v6, Lcom/waze/reports/PlacePhotoGallery$2;

    invoke-direct {v6, p0}, Lcom/waze/reports/PlacePhotoGallery$2;-><init>(Lcom/waze/reports/PlacePhotoGallery;)V

    iput-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    .line 275
    iget-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    iget-object v7, p0, Lcom/waze/reports/PlacePhotoGallery;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v6, v7}, Lcom/waze/ifs/ui/WazeViewPager;->setAdapter(Lcom/waze/ifs/ui/WazePagerAdapter;)V

    .line 276
    iget-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v6}, Lcom/waze/ifs/ui/WazePagerAdapter;->notifyDataSetChanged()V

    .line 277
    iget-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v6, p3}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItem(I)V

    .line 279
    if-eqz p4, :cond_2

    .line 280
    iput-object p4, p0, Lcom/waze/reports/PlacePhotoGallery;->mImageLocation:Landroid/os/Bundle;

    .line 281
    iget-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v6}, Lcom/waze/ifs/ui/WazeViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 282
    .local v3, vto:Landroid/view/ViewTreeObserver;
    new-instance v6, Lcom/waze/reports/PlacePhotoGallery$3;

    invoke-direct {v6, p0}, Lcom/waze/reports/PlacePhotoGallery$3;-><init>(Lcom/waze/reports/PlacePhotoGallery;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 291
    .end local v3           #vto:Landroid/view/ViewTreeObserver;
    :cond_2
    iget-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    new-instance v7, Lcom/waze/reports/PlacePhotoGallery$4;

    invoke-direct {v7, p0}, Lcom/waze/reports/PlacePhotoGallery$4;-><init>(Lcom/waze/reports/PlacePhotoGallery;)V

    invoke-virtual {v6, v7}, Lcom/waze/ifs/ui/WazeViewPager;->setOnPageChangeListener(Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;)V

    .line 306
    return-void

    .line 101
    .end local v1           #marginPixels:I
    :cond_3
    iget-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v6}, Lcom/waze/ifs/ui/WazeViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 102
    .local v2, p:Landroid/view/ViewGroup$LayoutParams;
    mul-int/lit8 v6, v4, 0x3

    div-int/lit8 v6, v6, 0x4

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    iget-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v6, v2}, Lcom/waze/ifs/ui/WazeViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/waze/reports/PlacePhotoGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/waze/reports/PlacePhotoGallery;->animatePagerOut()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/reports/PlacePhotoGallery;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/reports/PlacePhotoGallery;)Lcom/waze/ifs/ui/ActivityBase;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/reports/PlacePhotoGallery;)I
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/waze/reports/PlacePhotoGallery;->mItemMargin:I

    return v0
.end method

.method static synthetic access$4(Lcom/waze/reports/PlacePhotoGallery;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery;->mNm:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/reports/PlacePhotoGallery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/waze/reports/PlacePhotoGallery;->areYouSureDelete(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/reports/PlacePhotoGallery;)Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery;->mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/reports/PlacePhotoGallery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/waze/reports/PlacePhotoGallery;->showFlagSubmenu(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/waze/reports/PlacePhotoGallery;)Lcom/waze/ifs/ui/WazeViewPager;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    return-object v0
.end method

.method static synthetic access$9(Lcom/waze/reports/PlacePhotoGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/waze/reports/PlacePhotoGallery;->animatePagerIn()V

    return-void
.end method

.method private animatePagerIn()V
    .locals 22

    .prologue
    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/PlacePhotoGallery;->mImageLocation:Landroid/os/Bundle;

    const-string v6, "left"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 330
    .local v16, left:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/PlacePhotoGallery;->mImageLocation:Landroid/os/Bundle;

    const-string v6, "top"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 331
    .local v20, top:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/PlacePhotoGallery;->mImageLocation:Landroid/os/Bundle;

    const-string v6, "width"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 332
    .local v21, width:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/PlacePhotoGallery;->mImageLocation:Landroid/os/Bundle;

    const-string v6, "height"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 334
    .local v15, height:I
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v17, v0

    .line 335
    .local v17, location:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/waze/ifs/ui/WazeViewPager;->getLocationInWindow([I)V

    .line 337
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v14, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 338
    .local v14, as:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/WazeViewPager;->getWidth()I

    move-result v19

    .line 339
    .local v19, pagerWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/WazeViewPager;->getHeight()I

    move-result v18

    .line 341
    .local v18, pagerHeight:I
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v6, v0

    div-float v2, v3, v6

    .line 342
    .local v2, scaleX:F
    int-to-float v3, v15

    move/from16 v0, v18

    int-to-float v6, v0

    div-float v4, v3, v6

    .line 344
    .local v4, scaleY:F
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    .line 345
    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    .line 344
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 346
    .local v1, sa:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 348
    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 351
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    div-int/lit8 v3, v21, 0x2

    add-int v3, v3, v16

    .line 352
    const/4 v7, 0x0

    aget v7, v17, v7

    div-int/lit8 v8, v19, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v3, v7

    int-to-float v7, v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 353
    const/4 v10, 0x0

    div-int/lit8 v3, v15, 0x2

    add-int v3, v3, v20

    const/4 v11, 0x1

    aget v11, v17, v11

    div-int/lit8 v12, v18, 0x2

    add-int/2addr v11, v12

    sub-int/2addr v3, v11

    int-to-float v11, v3

    .line 354
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 351
    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 355
    .local v5, ta:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 356
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 357
    invoke-virtual {v14, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v3, v14}, Lcom/waze/ifs/ui/WazeViewPager;->startAnimation(Landroid/view/animation/Animation;)V

    .line 360
    return-void
.end method

.method private animatePagerOut()V
    .locals 23

    .prologue
    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/PlacePhotoGallery;->mImageLocation:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/waze/reports/PlacePhotoGallery;->dismiss()V

    .line 439
    :goto_0
    return-void

    .line 394
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/PlacePhotoGallery;->mImageLocation:Landroid/os/Bundle;

    const-string v4, "left"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 395
    .local v17, left:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/PlacePhotoGallery;->mImageLocation:Landroid/os/Bundle;

    const-string v4, "top"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 396
    .local v21, top:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/PlacePhotoGallery;->mImageLocation:Landroid/os/Bundle;

    const-string v4, "width"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 397
    .local v22, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/PlacePhotoGallery;->mImageLocation:Landroid/os/Bundle;

    const-string v4, "height"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 399
    .local v16, height:I
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 400
    .local v18, location:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/waze/ifs/ui/WazeViewPager;->getLocationInWindow([I)V

    .line 402
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 403
    .local v15, as:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/WazeViewPager;->getWidth()I

    move-result v20

    .line 404
    .local v20, pagerWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v2}, Lcom/waze/ifs/ui/WazeViewPager;->getHeight()I

    move-result v19

    .line 406
    .local v19, pagerHeight:I
    move/from16 v0, v22

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v4, v0

    div-float v3, v2, v4

    .line 407
    .local v3, scaleX:F
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v19

    int-to-float v4, v0

    div-float v5, v2, v4

    .line 409
    .local v5, scaleY:F
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    .line 410
    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    .line 409
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 411
    .local v1, sa:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v7, 0x12c

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 413
    invoke-virtual {v15, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 416
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 417
    div-int/lit8 v2, v22, 0x2

    add-int v2, v2, v17

    const/4 v4, 0x0

    aget v4, v18, v4

    div-int/lit8 v10, v20, 0x2

    add-int/2addr v4, v10

    sub-int/2addr v2, v4

    int-to-float v10, v2

    .line 418
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    div-int/lit8 v2, v16, 0x2

    add-int v2, v2, v21

    .line 419
    const/4 v4, 0x1

    aget v4, v18, v4

    div-int/lit8 v14, v19, 0x2

    add-int/2addr v4, v14

    sub-int/2addr v2, v4

    int-to-float v14, v2

    .line 416
    invoke-direct/range {v6 .. v14}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 420
    .local v6, ta:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 421
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 422
    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 424
    new-instance v2, Lcom/waze/reports/PlacePhotoGallery$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/reports/PlacePhotoGallery$7;-><init>(Lcom/waze/reports/PlacePhotoGallery;)V

    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/PlacePhotoGallery;->mPager:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v2, v15}, Lcom/waze/ifs/ui/WazeViewPager;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method private areYouSureDelete(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 310
    new-instance v4, Lcom/waze/reports/PlacePhotoGallery$5;

    invoke-direct {v4, p0, p1}, Lcom/waze/reports/PlacePhotoGallery$5;-><init>(Lcom/waze/reports/PlacePhotoGallery;I)V

    .line 320
    .local v4, onClickYes:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/waze/reports/PlacePhotoGallery;->mNm:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_DELETE_PICTURE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 322
    iget-object v2, p0, Lcom/waze/reports/PlacePhotoGallery;->mNm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ARE_YOU_SURE_YOU_WANT_TO_DELETE_PICTURE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 324
    iget-object v5, p0, Lcom/waze/reports/PlacePhotoGallery;->mNm:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_DELETE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 325
    iget-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mNm:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_CANCEL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 320
    invoke-virtual/range {v0 .. v7}, Lcom/waze/MsgBox;->OpenConfirmDialogCustomTimeoutCbJava(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 326
    return-void
.end method

.method private showFlagSubmenu(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 363
    const-string v5, "PLACES_PHOTO_FLAGGING_POPUP_SHOWN"

    invoke-static {v5, v6, v6}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v5, p0, Lcom/waze/reports/PlacePhotoGallery;->mNm:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_WHATS_WRONG_WITH_THIS_PHOTOQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, dialogTitle:Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mNm:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_IT_HAS_NOTHING_TO_DO_WITH_THIS_PLACE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 368
    iget-object v5, p0, Lcom/waze/reports/PlacePhotoGallery;->mNm:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_IT_IS_INAPPROPRIATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    .line 369
    iget-object v6, p0, Lcom/waze/reports/PlacePhotoGallery;->mNm:Lcom/waze/NativeManager;

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_IT_IS_IN_LOW_QUALITY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 371
    .local v4, options:[Ljava/lang/String;
    new-array v3, v9, [I

    fill-array-data v3, :array_0

    .line 373
    .local v3, optionValues:[I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/waze/reports/PlacePhotoGallery;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f06000f

    invoke-direct {v1, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 374
    .local v1, bob:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 375
    new-instance v5, Lcom/waze/reports/PlacePhotoGallery$6;

    invoke-direct {v5, p0, v3, p1}, Lcom/waze/reports/PlacePhotoGallery$6;-><init>(Lcom/waze/reports/PlacePhotoGallery;[II)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    const v5, 0x7f02015a

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 382
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 383
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 384
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 385
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 386
    return-void

    .line 371
    :array_0
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/waze/reports/PlacePhotoGallery;->animatePagerOut()V

    .line 444
    return-void
.end method

.method setListener(Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 447
    iput-object p1, p0, Lcom/waze/reports/PlacePhotoGallery;->mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    .line 448
    return-void
.end method

.method public updateImages(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/reports/PhotoPagerSection$VenueImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/PhotoPagerSection$VenueImage;>;"
    iput-object p1, p0, Lcom/waze/reports/PlacePhotoGallery;->mImages:Ljava/util/ArrayList;

    .line 452
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v0}, Lcom/waze/ifs/ui/WazePagerAdapter;->notifyDataSetChanged()V

    .line 453
    return-void
.end method
