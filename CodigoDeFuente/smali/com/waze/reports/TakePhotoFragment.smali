.class public Lcom/waze/reports/TakePhotoFragment;
.super Landroid/app/Fragment;
.source "TakePhotoFragment.java"

# interfaces
.implements Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/reports/TakePhotoFragment$ITakePhoto;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x226

.field private static final CAPTURE_HEIGHT:F = 1200.0f

.field private static final CAPTURE_WIDTH:F = 1600.0f

.field private static final IMAGE_FILE_NAME:Ljava/lang/String; = "newPlaceImage.jpg"


# instance fields
.field private mCameraButtonLocation:Landroid/os/Bundle;

.field private mClearView:Landroid/view/View;

.field private mDoAnimation:Z

.field private mDoneButton:Landroid/widget/ImageButton;

.field private mFileName:Ljava/lang/String;

.field private mFlashButton:Landroid/widget/ImageButton;

.field private mFlashMode:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

.field private mIsPortrait:Z

.field private mNm:Lcom/waze/NativeManager;

.field private mOkButton:Landroid/widget/ImageButton;

.field private mPreview:Lcom/waze/ifs/ui/CameraPreview;

.field private mRetakeButton:Landroid/widget/ImageButton;

.field private mSavedFile:Ljava/lang/String;

.field private mText:Lcom/waze/view/text/WazeTextView;

.field private mWindowHeight:I

.field private mWindowWidth:I

.field private r:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->Off:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    iput-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashMode:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/reports/TakePhotoFragment;->mIsPortrait:Z

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/reports/TakePhotoFragment;->mDoAnimation:Z

    .line 75
    const-string v0, "newPlaceImage.jpg"

    iput-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFileName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->Off:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    iput-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashMode:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/reports/TakePhotoFragment;->mIsPortrait:Z

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/reports/TakePhotoFragment;->mDoAnimation:Z

    .line 79
    iput-object p1, p0, Lcom/waze/reports/TakePhotoFragment;->mFileName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/TakePhotoFragment;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mOkButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/reports/TakePhotoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->animateIn()V

    return-void
.end method

.method static synthetic access$10(Lcom/waze/reports/TakePhotoFragment;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mDoneButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$11(Lcom/waze/reports/TakePhotoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->setUpFragment()V

    return-void
.end method

.method static synthetic access$12(Lcom/waze/reports/TakePhotoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->animateBlackFlashEnd()V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/reports/TakePhotoFragment;)Lcom/waze/ifs/ui/CameraPreview;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/reports/TakePhotoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->lockOrientation()V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/reports/TakePhotoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->dimOkButton()V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/reports/TakePhotoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->nextFlashMode()V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/reports/TakePhotoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->setCaptureRect()V

    return-void
.end method

.method static synthetic access$7(Lcom/waze/reports/TakePhotoFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mClearView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8(Lcom/waze/reports/TakePhotoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->animateBlackFlashStart()V

    return-void
.end method

.method static synthetic access$9(Lcom/waze/reports/TakePhotoFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mSavedFile:Ljava/lang/String;

    return-object v0
.end method

.method private animateBlackFlashEnd()V
    .locals 4

    .prologue
    .line 517
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 518
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x4000

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 519
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 520
    iget-object v2, p0, Lcom/waze/reports/TakePhotoFragment;->r:Landroid/view/View;

    const v3, 0x7f0901e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 521
    .local v1, flash:Landroid/view/View;
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 522
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 523
    new-instance v2, Lcom/waze/reports/TakePhotoFragment$14;

    invoke-direct {v2, p0, v1}, Lcom/waze/reports/TakePhotoFragment$14;-><init>(Lcom/waze/reports/TakePhotoFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 536
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 537
    return-void
.end method

.method private animateBlackFlashStart()V
    .locals 4

    .prologue
    .line 491
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 492
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x4000

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 493
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 494
    iget-object v2, p0, Lcom/waze/reports/TakePhotoFragment;->r:Landroid/view/View;

    const v3, 0x7f0901e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 495
    .local v1, flash:Landroid/view/View;
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 496
    new-instance v2, Lcom/waze/reports/TakePhotoFragment$13;

    invoke-direct {v2, p0, v1}, Lcom/waze/reports/TakePhotoFragment$13;-><init>(Lcom/waze/reports/TakePhotoFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 513
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 514
    return-void
.end method

.method private animateDoneButton()V
    .locals 11

    .prologue
    const v2, 0x3f4ccccd

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    .line 450
    iget-object v3, p0, Lcom/waze/reports/TakePhotoFragment;->r:Landroid/view/View;

    const v4, 0x7f0901e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 452
    .local v10, buttonFrame:Landroid/view/View;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 454
    .local v0, sa:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 455
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 456
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 457
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 458
    invoke-virtual {v10, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 461
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 462
    .local v9, aa:Landroid/view/animation/AlphaAnimation;
    new-instance v1, Lcom/waze/reports/TakePhotoFragment$12;

    invoke-direct {v1, p0}, Lcom/waze/reports/TakePhotoFragment$12;-><init>(Lcom/waze/reports/TakePhotoFragment;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 477
    const-wide/16 v1, 0x64

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 478
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mOkButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 479
    return-void
.end method

.method private animateFlash()V
    .locals 4

    .prologue
    .line 425
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 426
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 427
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 428
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x4000

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 429
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 430
    iget-object v2, p0, Lcom/waze/reports/TakePhotoFragment;->r:Landroid/view/View;

    const v3, 0x7f0901e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 431
    .local v1, flash:Landroid/view/View;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 432
    new-instance v2, Lcom/waze/reports/TakePhotoFragment$11;

    invoke-direct {v2, p0, v1}, Lcom/waze/reports/TakePhotoFragment$11;-><init>(Lcom/waze/reports/TakePhotoFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 445
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 446
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 447
    return-void
.end method

.method private animateIn()V
    .locals 26

    .prologue
    .line 373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/TakePhotoFragment;->mCameraButtonLocation:Landroid/os/Bundle;

    const-string v8, "left"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 374
    .local v22, left:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/TakePhotoFragment;->mCameraButtonLocation:Landroid/os/Bundle;

    const-string v8, "top"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 375
    .local v24, top:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/TakePhotoFragment;->mCameraButtonLocation:Landroid/os/Bundle;

    const-string v8, "width"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 376
    .local v25, width:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/TakePhotoFragment;->mCameraButtonLocation:Landroid/os/Bundle;

    const-string v8, "height"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 378
    .local v21, height:I
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v23, v0

    .line 379
    .local v23, location:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/TakePhotoFragment;->mOkButton:Landroid/widget/ImageButton;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    .line 381
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 382
    .local v16, as:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/TakePhotoFragment;->mOkButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getWidth()I

    move-result v18

    .line 383
    .local v18, butWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/TakePhotoFragment;->mOkButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getHeight()I

    move-result v17

    .line 385
    .local v17, butHeight:I
    move/from16 v0, v25

    int-to-float v3, v0

    move/from16 v0, v18

    int-to-float v8, v0

    div-float v2, v3, v8

    .line 386
    .local v2, scaleX:F
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v17

    int-to-float v8, v0

    div-float v4, v3, v8

    .line 388
    .local v4, scaleY:F
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    .line 389
    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    .line 388
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 390
    .local v1, sa:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v8, 0x339

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 391
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const/high16 v8, 0x4000

    invoke-direct {v3, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 392
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 395
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    div-int/lit8 v3, v25, 0x2

    add-int v3, v3, v22

    .line 396
    const/4 v8, 0x0

    aget v8, v23, v8

    div-int/lit8 v9, v18, 0x2

    add-int/2addr v8, v9

    sub-int/2addr v3, v8

    int-to-float v7, v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 397
    const/4 v10, 0x0

    div-int/lit8 v3, v21, 0x2

    add-int v3, v3, v24

    const/4 v11, 0x1

    aget v11, v23, v11

    div-int/lit8 v12, v17, 0x2

    add-int/2addr v11, v12

    sub-int/2addr v3, v11

    int-to-float v11, v3

    .line 398
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 395
    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 399
    .local v5, ta:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v8, 0x226

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 400
    new-instance v3, Landroid/view/animation/AnticipateInterpolator;

    const/high16 v8, 0x3f60

    invoke-direct {v3, v8}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v5, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 401
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/TakePhotoFragment;->mOkButton:Landroid/widget/ImageButton;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/TakePhotoFragment;->r:Landroid/view/View;

    const v8, 0x7f0901de

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 406
    .local v19, curtain1:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/reports/TakePhotoFragment;->r:Landroid/view/View;

    const v8, 0x7f0901dd

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 409
    .local v20, curtain2:Landroid/view/View;
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/waze/reports/TakePhotoFragment;->mIsPortrait:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    int-to-float v7, v3

    const/high16 v8, 0x3f80

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/waze/reports/TakePhotoFragment;->mIsPortrait:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    int-to-float v9, v3

    const/high16 v10, 0x3f80

    .line 410
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 409
    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 412
    .local v6, sa1:Landroid/view/animation/ScaleAnimation;
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/waze/reports/TakePhotoFragment;->mIsPortrait:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    int-to-float v8, v3

    const/high16 v9, 0x3f80

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/waze/reports/TakePhotoFragment;->mIsPortrait:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_3
    int-to-float v10, v3

    const/high16 v11, 0x3f80

    .line 413
    const/4 v12, 0x1

    const/high16 v13, 0x3f80

    const/4 v14, 0x1

    const/high16 v15, 0x3f80

    .line 412
    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 414
    .local v7, sa2:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v8, 0x226

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 415
    const-wide/16 v8, 0x113

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 416
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 417
    const-wide/16 v8, 0x226

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 418
    const-wide/16 v8, 0x113

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 419
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 420
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 421
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 422
    return-void

    .line 409
    .end local v6           #sa1:Landroid/view/animation/ScaleAnimation;
    .end local v7           #sa2:Landroid/view/animation/ScaleAnimation;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 412
    .restart local v6       #sa1:Landroid/view/animation/ScaleAnimation;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    goto :goto_3
.end method

.method private buttonAlphaAnim(Landroid/view/View;FF)V
    .locals 3
    .parameter "v"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 540
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 541
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 542
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 543
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 544
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 545
    return-void
.end method

.method public static cleanUpFiles(Ljava/lang/String;)V
    .locals 6
    .parameter "fileName"

    .prologue
    .line 549
    if-nez p0, :cond_0

    .line 550
    const-string p0, "newPlaceImage.jpg"

    .line 552
    :cond_0
    move-object v3, p0

    .line 554
    .local v3, prefix:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 555
    .local v2, filesDir:Ljava/io/File;
    new-instance v4, Lcom/waze/reports/TakePhotoFragment$15;

    invoke-direct {v4, v3}, Lcom/waze/reports/TakePhotoFragment$15;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 562
    .local v1, files:[Ljava/io/File;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_1

    .line 565
    return-void

    .line 562
    :cond_1
    aget-object v0, v1, v4

    .line 563
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 562
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private dimOkButton()V
    .locals 3

    .prologue
    .line 482
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f4ccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 483
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 484
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 485
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 486
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 487
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mOkButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 488
    return-void
.end method

.method private getScreenOrientation()I
    .locals 6

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/waze/reports/TakePhotoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 577
    .local v3, rotation:I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 578
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/waze/reports/TakePhotoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 579
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 580
    .local v4, width:I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 583
    .local v1, height:I
    if-eqz v3, :cond_0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    :cond_0
    if-gt v1, v4, :cond_3

    .line 584
    :cond_1
    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    :cond_2
    if-le v4, v1, :cond_4

    .line 585
    :cond_3
    packed-switch v3, :pswitch_data_0

    .line 599
    const/4 v2, 0x1

    .line 625
    .local v2, orientation:I
    :goto_0
    return v2

    .line 587
    .end local v2           #orientation:I
    :pswitch_0
    const/4 v2, 0x1

    .line 588
    .restart local v2       #orientation:I
    goto :goto_0

    .line 590
    .end local v2           #orientation:I
    :pswitch_1
    const/4 v2, 0x0

    .line 591
    .restart local v2       #orientation:I
    goto :goto_0

    .line 593
    .end local v2           #orientation:I
    :pswitch_2
    const/16 v2, 0x9

    .line 594
    .restart local v2       #orientation:I
    goto :goto_0

    .line 596
    .end local v2           #orientation:I
    :pswitch_3
    const/16 v2, 0x8

    .line 597
    .restart local v2       #orientation:I
    goto :goto_0

    .line 606
    .end local v2           #orientation:I
    :cond_4
    packed-switch v3, :pswitch_data_1

    .line 620
    const/4 v2, 0x0

    .restart local v2       #orientation:I
    goto :goto_0

    .line 608
    .end local v2           #orientation:I
    :pswitch_4
    const/4 v2, 0x0

    .line 609
    .restart local v2       #orientation:I
    goto :goto_0

    .line 611
    .end local v2           #orientation:I
    :pswitch_5
    const/4 v2, 0x1

    .line 612
    .restart local v2       #orientation:I
    goto :goto_0

    .line 614
    .end local v2           #orientation:I
    :pswitch_6
    const/16 v2, 0x8

    .line 615
    .restart local v2       #orientation:I
    goto :goto_0

    .line 617
    .end local v2           #orientation:I
    :pswitch_7
    const/16 v2, 0x9

    .line 618
    .restart local v2       #orientation:I
    goto :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 606
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private lockOrientation()V
    .locals 2

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/waze/reports/TakePhotoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->getScreenOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 569
    return-void
.end method

.method private nextFlashMode()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashMode:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    sget-object v1, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->Off:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    if-ne v0, v1, :cond_1

    .line 237
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->On:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    iput-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashMode:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    .line 243
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->setFlashMode()V

    .line 244
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashMode:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    sget-object v1, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->On:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    if-ne v0, v1, :cond_2

    .line 239
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->Auto:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    iput-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashMode:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    goto :goto_0

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashMode:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    sget-object v1, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->Auto:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    if-ne v0, v1, :cond_0

    .line 241
    sget-object v0, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->Off:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    iput-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashMode:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    goto :goto_0
.end method

.method private setCaptureRect()V
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/waze/reports/TakePhotoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/waze/ifs/ui/ActivityBase;

    new-instance v1, Lcom/waze/reports/TakePhotoFragment$6;

    invoke-direct {v1, p0}, Lcom/waze/reports/TakePhotoFragment$6;-><init>(Lcom/waze/reports/TakePhotoFragment;)V

    .line 215
    const-wide/16 v2, 0xa

    .line 205
    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/ifs/ui/ActivityBase;->postDelayed(Ljava/lang/Runnable;J)V

    .line 216
    return-void
.end method

.method private setClearViewLayout()V
    .locals 5

    .prologue
    const/high16 v4, 0x44c8

    const/high16 v3, 0x4496

    .line 247
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mClearView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 248
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowHeight:I

    iget v2, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowWidth:I

    if-le v1, v2, :cond_0

    .line 250
    iget v1, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 256
    :goto_0
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mClearView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    return-void

    .line 253
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/waze/reports/TakePhotoFragment;->mIsPortrait:Z

    .line 254
    iget v1, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private setFlashMode()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashMode:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    sget-object v1, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->Off:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    if-ne v0, v1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashButton:Landroid/widget/ImageButton;

    const v1, 0x7f0203e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 232
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;

    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashMode:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/CameraPreview;->setFlash(Lcom/waze/ifs/ui/CameraPreview$FlashMode;)V

    .line 233
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashMode:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    sget-object v1, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->On:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    if-ne v0, v1, :cond_2

    .line 228
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashButton:Landroid/widget/ImageButton;

    const v1, 0x7f0203df

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashMode:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    sget-object v1, Lcom/waze/ifs/ui/CameraPreview$FlashMode;->Auto:Lcom/waze/ifs/ui/CameraPreview$FlashMode;

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashButton:Landroid/widget/ImageButton;

    const v1, 0x7f0203dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private setUpFragment()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->unlockOrientation()V

    .line 131
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->r:Landroid/view/View;

    const v2, 0x7f0901df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/text/WazeTextView;

    iput-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mText:Lcom/waze/view/text/WazeTextView;

    .line 132
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mText:Lcom/waze/view/text/WazeTextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 133
    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_CAMERA_EXPLAIN_TEXT:Lcom/waze/strings/DisplayStrings;

    .line 132
    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->r:Landroid/view/View;

    const v2, 0x7f0901da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/ifs/ui/CameraPreview;

    iput-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;

    .line 136
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;

    new-instance v2, Lcom/waze/reports/TakePhotoFragment$2;

    invoke-direct {v2, p0}, Lcom/waze/reports/TakePhotoFragment$2;-><init>(Lcom/waze/reports/TakePhotoFragment;)V

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/CameraPreview;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->r:Landroid/view/View;

    const v2, 0x7f0901dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mClearView:Landroid/view/View;

    .line 150
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->setClearViewLayout()V

    .line 152
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->r:Landroid/view/View;

    const v2, 0x7f0901e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mDoneButton:Landroid/widget/ImageButton;

    .line 153
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mDoneButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mDoneButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->r:Landroid/view/View;

    const v2, 0x7f0901e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mOkButton:Landroid/widget/ImageButton;

    .line 157
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mOkButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mOkButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 159
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mOkButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/waze/reports/TakePhotoFragment$3;

    invoke-direct {v2, p0}, Lcom/waze/reports/TakePhotoFragment$3;-><init>(Lcom/waze/reports/TakePhotoFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->r:Landroid/view/View;

    const v2, 0x7f0901e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mRetakeButton:Landroid/widget/ImageButton;

    .line 170
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mRetakeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 171
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mRetakeButton:Landroid/widget/ImageButton;

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f00

    invoke-direct {p0, v1, v2, v3}, Lcom/waze/reports/TakePhotoFragment;->buttonAlphaAnim(Landroid/view/View;FF)V

    .line 173
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->r:Landroid/view/View;

    const v2, 0x7f0901e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashButton:Landroid/widget/ImageButton;

    .line 174
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 175
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 176
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->setFlashMode()V

    .line 178
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/waze/reports/TakePhotoFragment$4;

    invoke-direct {v2, p0}, Lcom/waze/reports/TakePhotoFragment$4;-><init>(Lcom/waze/reports/TakePhotoFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;

    invoke-virtual {v1}, Lcom/waze/ifs/ui/CameraPreview;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 187
    .local v0, vto:Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/waze/reports/TakePhotoFragment$5;

    invoke-direct {v1, p0}, Lcom/waze/reports/TakePhotoFragment$5;-><init>(Lcom/waze/reports/TakePhotoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 196
    return-void
.end method

.method private unlockOrientation()V
    .locals 2

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/waze/reports/TakePhotoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 573
    return-void
.end method


# virtual methods
.method public onCapture(Z)V
    .locals 5
    .parameter "aRes"

    .prologue
    const/high16 v4, 0x3f80

    const/high16 v3, 0x3f00

    .line 261
    if-eqz p1, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->animateFlash()V

    .line 263
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->animateDoneButton()V

    .line 264
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mText:Lcom/waze/view/text/WazeTextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 265
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CAMERA_POST_CAPTURE:Lcom/waze/strings/DisplayStrings;

    .line 264
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mRetakeButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mRetakeButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v3, v4}, Lcom/waze/reports/TakePhotoFragment;->buttonAlphaAnim(Landroid/view/View;FF)V

    .line 269
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mRetakeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/waze/reports/TakePhotoFragment$7;

    invoke-direct {v1, p0}, Lcom/waze/reports/TakePhotoFragment$7;-><init>(Lcom/waze/reports/TakePhotoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 278
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFlashButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v4, v3}, Lcom/waze/reports/TakePhotoFragment;->buttonAlphaAnim(Landroid/view/View;FF)V

    .line 280
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mDoneButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/waze/reports/TakePhotoFragment$8;

    invoke-direct {v1, p0}, Lcom/waze/reports/TakePhotoFragment$8;-><init>(Lcom/waze/reports/TakePhotoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->animateBlackFlashStart()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 91
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mNm:Lcom/waze/NativeManager;

    .line 93
    invoke-virtual {p0}, Lcom/waze/reports/TakePhotoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowHeight:I

    .line 94
    invoke-virtual {p0}, Lcom/waze/reports/TakePhotoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowWidth:I

    .line 96
    new-instance v7, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v7, f:Ljava/io/File;
    const/4 v8, 0x0

    .line 98
    .local v8, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    if-lez v8, :cond_0

    .line 103
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFileName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mFileName:Ljava/lang/String;

    .line 106
    :cond_0
    iget v0, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowWidth:I

    iget v1, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowHeight:I

    const/4 v2, 0x1

    const/16 v3, 0x5a

    sget-object v4, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    .line 107
    iget-object v5, p0, Lcom/waze/reports/TakePhotoFragment;->mFileName:Ljava/lang/String;

    move-object v6, p0

    .line 106
    invoke-static/range {v0 .. v6}, Lcom/waze/ifs/ui/CameraPreview;->CaptureConfig(IIZILjava/lang/String;Ljava/lang/String;Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mSavedFile:Ljava/lang/String;

    .line 111
    const v0, 0x7f030028

    invoke-virtual {p1, v0, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->r:Landroid/view/View;

    .line 113
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->setUpFragment()V

    .line 115
    iget-boolean v0, p0, Lcom/waze/reports/TakePhotoFragment;->mDoAnimation:Z

    if-eqz v0, :cond_1

    .line 116
    iput-boolean v10, p0, Lcom/waze/reports/TakePhotoFragment;->mDoAnimation:Z

    .line 117
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mOkButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    .line 118
    .local v9, vto:Landroid/view/ViewTreeObserver;
    new-instance v0, Lcom/waze/reports/TakePhotoFragment$1;

    invoke-direct {v0, p0}, Lcom/waze/reports/TakePhotoFragment$1;-><init>(Lcom/waze/reports/TakePhotoFragment;)V

    invoke-virtual {v9, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 126
    .end local v9           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->r:Landroid/view/View;

    return-object v0

    .line 99
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 100
    new-instance v7, Ljava/io/File;

    .end local v7           #f:Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ResManager;->mAppDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v7       #f:Ljava/io/File;
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->unlockOrientation()V

    .line 221
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 222
    return-void
.end method

.method public onError()V
    .locals 4

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/waze/reports/TakePhotoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/waze/reports/TakePhotoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CAMERA_IS_NOT_AVAILABLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 360
    new-instance v3, Lcom/waze/reports/TakePhotoFragment$10;

    invoke-direct {v3, p0}, Lcom/waze/reports/TakePhotoFragment$10;-><init>(Lcom/waze/reports/TakePhotoFragment;)V

    .line 358
    invoke-static {v0, v1, v2, v3}, Lcom/waze/MsgBox;->openMessageBoxWithCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 370
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 201
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;

    invoke-virtual {v0}, Lcom/waze/ifs/ui/CameraPreview;->focus()V

    .line 202
    return-void
.end method

.method public onSize(Landroid/hardware/Camera$Size;)V
    .locals 7
    .parameter "previewSize"

    .prologue
    const/16 v5, 0xa

    .line 299
    iget-object v3, p0, Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/CameraPreview;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowHeight:I

    .line 300
    iget-object v3, p0, Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/CameraPreview;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowWidth:I

    .line 301
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->setClearViewLayout()V

    .line 303
    iget v3, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowHeight:I

    iget v4, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowWidth:I

    if-le v3, v4, :cond_2

    .line 307
    iget v3, p1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p1, Landroid/hardware/Camera$Size;->width:I

    if-le v3, v4, :cond_1

    .line 308
    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    .line 309
    .local v1, pvHeight:I
    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    .line 315
    .local v2, pvWidth:I
    :goto_0
    iget v3, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowWidth:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 316
    iget v2, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowWidth:I

    .line 318
    iget-object v3, p0, Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/CameraPreview;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 319
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v5, :cond_0

    .line 320
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 321
    invoke-virtual {p0}, Lcom/waze/reports/TakePhotoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/waze/ifs/ui/ActivityBase;

    new-instance v4, Lcom/waze/reports/TakePhotoFragment$9;

    invoke-direct {v4, p0, v0}, Lcom/waze/reports/TakePhotoFragment$9;-><init>(Lcom/waze/reports/TakePhotoFragment;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    const-wide/16 v5, 0x0

    .line 321
    invoke-virtual {v3, v4, v5, v6}, Lcom/waze/ifs/ui/ActivityBase;->postDelayed(Ljava/lang/Runnable;J)V

    .line 350
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/waze/reports/TakePhotoFragment;->setCaptureRect()V

    .line 351
    return-void

    .line 311
    .end local v0           #p:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #pvHeight:I
    .end local v2           #pvWidth:I
    :cond_1
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    .line 312
    .restart local v1       #pvHeight:I
    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    .restart local v2       #pvWidth:I
    goto :goto_0

    .line 333
    .end local v1           #pvHeight:I
    .end local v2           #pvWidth:I
    :cond_2
    iget v3, p1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p1, Landroid/hardware/Camera$Size;->width:I

    if-ge v3, v4, :cond_3

    .line 334
    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    .line 335
    .restart local v1       #pvHeight:I
    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    .line 341
    .restart local v2       #pvWidth:I
    :goto_2
    iget v3, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowHeight:I

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 342
    iget v1, p0, Lcom/waze/reports/TakePhotoFragment;->mWindowHeight:I

    .line 344
    iget-object v3, p0, Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/CameraPreview;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 345
    .restart local v0       #p:Landroid/view/ViewGroup$LayoutParams;
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v5, :cond_0

    .line 346
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 347
    iget-object v3, p0, Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;

    invoke-virtual {v3, v0}, Lcom/waze/ifs/ui/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 337
    .end local v0           #p:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #pvHeight:I
    .end local v2           #pvWidth:I
    :cond_3
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    .line 338
    .restart local v1       #pvHeight:I
    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    .restart local v2       #pvWidth:I
    goto :goto_2
.end method

.method public setAnimateButton(Landroid/os/Bundle;)V
    .locals 1
    .parameter "buttonLocation"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/waze/reports/TakePhotoFragment;->mDoAnimation:Z

    .line 84
    iput-object p1, p0, Lcom/waze/reports/TakePhotoFragment;->mCameraButtonLocation:Landroid/os/Bundle;

    .line 85
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
