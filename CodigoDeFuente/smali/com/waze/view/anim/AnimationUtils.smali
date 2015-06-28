.class public Lcom/waze/view/anim/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/view/anim/AnimationUtils$StartShape;
    }
.end annotation


# static fields
.field static final NAV_RES_DURATION_CLOSE:J = 0xfaL

.field static final NAV_RES_DURATION_OPEN:J = 0x96L

.field private static final TOOLTIP_ANIM_DURATION:I = 0x1f4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SearchBarBackAnimation(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 244
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 245
    .local v9, animation:Landroid/view/animation/AnimationSet;
    const/16 v10, 0x96

    .line 247
    .local v10, myDur:I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x3f60

    const/high16 v8, -0x4000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 248
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 249
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 250
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 251
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 252
    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 253
    return-void
.end method

.method static synthetic access$0(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    invoke-static {p0}, Lcom/waze/view/anim/AnimationUtils;->shakeTooltip(Landroid/view/View;)V

    return-void
.end method

.method public static closeAnimateAlpha(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .parameter "view"
    .parameter "duration"
    .parameter "listener"

    .prologue
    .line 30
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 32
    .local v1, animation:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 33
    .local v0, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 34
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 36
    invoke-virtual {v1, p2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 37
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 38
    return-void
.end method

.method public static closeAnimateMenu(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 14
    .parameter "view"
    .parameter "listener"

    .prologue
    const-wide/16 v12, 0x64

    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 40
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 41
    .local v9, animation:Landroid/view/animation/AnimationSet;
    const/16 v10, 0x64

    .line 43
    .local v10, myDur:I
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f666666

    const v4, 0x3f8ccccd

    invoke-direct {v11, v5, v3, v5, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 44
    .local v11, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v11, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 45
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 47
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v8, -0x42333333

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 48
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 49
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 51
    new-instance v1, Lcom/waze/view/anim/AnimationUtils$1;

    invoke-direct {v1, p1, p0}, Lcom/waze/view/anim/AnimationUtils$1;-><init>(Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 74
    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 75
    return-void
.end method

.method public static closeAnimateReport(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 14
    .parameter "view"
    .parameter "listener"

    .prologue
    const-wide/16 v12, 0x64

    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 78
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 79
    .local v9, animation:Landroid/view/animation/AnimationSet;
    const/16 v10, 0x64

    .line 81
    .local v10, myDur:I
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f666666

    const v4, 0x3f8ccccd

    invoke-direct {v11, v5, v3, v5, v4}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 82
    .local v11, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v11, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 83
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 85
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v4, 0x3dcccccd

    const v8, -0x42333333

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 86
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 87
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 89
    new-instance v1, Lcom/waze/view/anim/AnimationUtils$2;

    invoke-direct {v1, p1, p0}, Lcom/waze/view/anim/AnimationUtils$2;-><init>(Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 112
    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    return-void
.end method

.method public static closeAnimateToPoint(Landroid/view/View;FFILandroid/view/animation/Animation$AnimationListener;)V
    .locals 13
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "duration"
    .parameter "listener"

    .prologue
    .line 116
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 118
    .local v11, animation:Landroid/view/animation/AnimationSet;
    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v12, v2, v3, v4, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 119
    .local v12, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    move/from16 v0, p3

    int-to-long v2, v0

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 120
    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 122
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const v3, 0x3e4ccccd

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 123
    .local v10, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    move/from16 v0, p3

    int-to-long v2, v0

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 124
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 126
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p1

    move v9, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 127
    .local v1, translateAnimation:Landroid/view/animation/TranslateAnimation;
    move/from16 v0, p3

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 128
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 130
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 131
    invoke-virtual {p0, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 132
    return-void
.end method

.method public static closeNavResultsToRectangle(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 18
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 419
    invoke-static {}, Lcom/waze/CPUProfiler;->shouldAnimate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 420
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 427
    .local v12, animation:Landroid/view/animation/AnimationSet;
    new-instance v14, Lcom/waze/view/anim/AnimationUtils$StartShape;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v14, v3}, Lcom/waze/view/anim/AnimationUtils$StartShape;-><init>(Landroid/content/Context;)V

    .line 429
    .local v14, shape:Lcom/waze/view/anim/AnimationUtils$StartShape;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v16

    .line 430
    .local v16, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 433
    .local v15, viewHeight:I
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    iget v3, v14, Lcom/waze/view/anim/AnimationUtils$StartShape;->width:I

    int-to-float v3, v3

    move/from16 v0, v16

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    .line 434
    iget v5, v14, Lcom/waze/view/anim/AnimationUtils$StartShape;->height:I

    int-to-float v5, v5

    int-to-float v6, v15

    div-float/2addr v5, v6

    .line 435
    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 433
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 436
    .local v1, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 438
    const/4 v3, 0x2

    new-array v13, v3, [I

    .line 439
    .local v13, n:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 442
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 443
    const/4 v9, 0x0

    iget v10, v14, Lcom/waze/view/anim/AnimationUtils$StartShape;->top:I

    const/16 v17, 0x1

    aget v17, v13, v17

    sub-int v10, v10, v17

    int-to-float v10, v10

    .line 442
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 444
    .local v2, translateAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 446
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-direct {v11, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 447
    .local v11, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 449
    const-wide/16 v3, 0xfa

    invoke-virtual {v12, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 450
    new-instance v3, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 452
    if-eqz p1, :cond_2

    .line 453
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 455
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static flashView(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    .line 565
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3fa66666

    const/high16 v3, 0x3f80

    const v4, 0x3fa66666

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    .line 566
    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    .line 565
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 567
    .local v0, sa1:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v3, 0x50

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 568
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 569
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 570
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 573
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    const v3, 0x3fb33333

    const/high16 v4, 0x3f80

    const v5, 0x3fb33333

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    .line 574
    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    .line 573
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 575
    .local v1, sa2:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v3, 0x50

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 576
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 577
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 578
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 579
    invoke-static {p0, v0, v1}, Lcom/waze/view/anim/AnimationUtils;->setNextAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 582
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3fb33333

    const/high16 v4, 0x3f80

    const v5, 0x3fb33333

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    .line 583
    const/4 v9, 0x1

    const/high16 v10, 0x3f00

    .line 582
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 584
    .local v2, sa3:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v3, 0x140

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 585
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 586
    invoke-static {p0, v1, v2}, Lcom/waze/view/anim/AnimationUtils;->setNextAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 588
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 589
    return-void
.end method

.method public static openAnimateAlert(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 11
    .parameter "view"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 190
    const/16 v10, 0x96

    .line 191
    .local v10, myDur:I
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 197
    .local v9, animation:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x4000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 198
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 199
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 200
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 201
    invoke-virtual {v9, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 202
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 203
    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 204
    return-void
.end method

.method public static openAnimateAlert2(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 11
    .parameter "view"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 257
    const/16 v10, 0x190

    .line 258
    .local v10, myDur:I
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 264
    .local v9, animation:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x4000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 265
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 266
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 267
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 268
    invoke-virtual {v9, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 269
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 270
    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 271
    return-void
.end method

.method public static openAnimateFromPoint(Landroid/view/View;FFI)V
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "duration"

    .prologue
    .line 459
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/waze/view/anim/AnimationUtils;->openAnimateFromPoint(Landroid/view/View;FFILandroid/view/animation/Animation$AnimationListener;)V

    .line 460
    return-void
.end method

.method public static openAnimateFromPoint(Landroid/view/View;FFILandroid/view/animation/Animation$AnimationListener;)V
    .locals 13
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "duration"
    .parameter "listener"

    .prologue
    .line 331
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 333
    .local v11, animation:Landroid/view/animation/AnimationSet;
    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v12, v2, v3, v4, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 334
    .local v12, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    move/from16 v0, p3

    int-to-long v2, v0

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 335
    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 337
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3e4ccccd

    const/high16 v3, 0x3f80

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 338
    .local v10, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    move/from16 v0, p3

    int-to-long v2, v0

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 339
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 341
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v3, p1

    move v7, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 342
    .local v1, translateAnimation:Landroid/view/animation/TranslateAnimation;
    move/from16 v0, p3

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 343
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 344
    if-eqz p4, :cond_0

    .line 345
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 347
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 348
    invoke-virtual {p0, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 349
    return-void
.end method

.method public static openAnimateMenu(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 14
    .parameter "view"
    .parameter "listener"

    .prologue
    const-wide/16 v12, 0x64

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 134
    const/16 v10, 0x64

    .line 135
    .local v10, myDur:I
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 137
    .local v9, animation:Landroid/view/animation/AnimationSet;
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f733333

    const v3, 0x3f83d70a

    invoke-direct {v11, v4, v2, v4, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 138
    .local v11, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v11, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 139
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 141
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v2, 0x3dcccccd

    const/high16 v6, 0x3f80

    const v8, -0x430a3d71

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 142
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 143
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 144
    new-instance v2, Lcom/waze/view/anim/AnimationUtils$3;

    invoke-direct {v2, p0, p1}, Lcom/waze/view/anim/AnimationUtils$3;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 185
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 186
    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    return-void
.end method

.method public static openAnimateReport(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 14
    .parameter "view"
    .parameter "listener"

    .prologue
    const-wide/16 v12, 0x64

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 274
    const/16 v10, 0x64

    .line 275
    .local v10, myDur:I
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 277
    .local v9, animation:Landroid/view/animation/AnimationSet;
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f733333

    const v3, 0x3f83d70a

    invoke-direct {v11, v4, v2, v4, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 278
    .local v11, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v11, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 279
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 281
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v2, 0x3f666666

    const v4, 0x3d4ccccd

    const/high16 v6, 0x3f80

    const v8, -0x430a3d71

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 282
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 283
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 284
    new-instance v2, Lcom/waze/view/anim/AnimationUtils$4;

    invoke-direct {v2, p0, p1}, Lcom/waze/view/anim/AnimationUtils$4;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 325
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 326
    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 327
    return-void
.end method

.method public static openNavResultsFromRectangle(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 17
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 371
    invoke-static {}, Lcom/waze/CPUProfiler;->shouldAnimate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 372
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v12, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 379
    .local v12, animation:Landroid/view/animation/AnimationSet;
    new-instance v14, Lcom/waze/view/anim/AnimationUtils$StartShape;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v14, v3}, Lcom/waze/view/anim/AnimationUtils$StartShape;-><init>(Landroid/content/Context;)V

    .line 381
    .local v14, shape:Lcom/waze/view/anim/AnimationUtils$StartShape;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v16

    .line 382
    .local v16, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v15

    .line 385
    .local v15, viewHeight:I
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    iget v3, v14, Lcom/waze/view/anim/AnimationUtils$StartShape;->width:I

    int-to-float v3, v3

    move/from16 v0, v16

    int-to-float v4, v0

    div-float v2, v3, v4

    const/high16 v3, 0x3f80

    .line 386
    iget v4, v14, Lcom/waze/view/anim/AnimationUtils$StartShape;->height:I

    int-to-float v4, v4

    int-to-float v5, v15

    div-float/2addr v4, v5

    .line 387
    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 385
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 388
    .local v1, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v3, 0x96

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 389
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/animation/ScaleAnimation;->setFillBefore(Z)V

    .line 391
    const-class v3, Lcom/waze/animation/easing/Cubic;

    sget-object v4, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseOut:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    invoke-static {v3, v4}, Lcom/waze/animation/easing/AnimationEasingManager;->getInterpolator(Ljava/lang/Class;Lcom/waze/animation/easing/AnimationEasingManager$EaseType;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 393
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 395
    const/4 v3, 0x2

    new-array v13, v3, [I

    .line 396
    .local v13, n:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 399
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 400
    iget v8, v14, Lcom/waze/view/anim/AnimationUtils$StartShape;->top:I

    const/4 v9, 0x1

    aget v9, v13, v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 399
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 401
    .local v2, translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 403
    const-class v3, Lcom/waze/animation/easing/Cubic;

    sget-object v4, Lcom/waze/animation/easing/AnimationEasingManager$EaseType;->EaseOut:Lcom/waze/animation/easing/AnimationEasingManager$EaseType;

    invoke-static {v3, v4}, Lcom/waze/animation/easing/AnimationEasingManager;->getInterpolator(Ljava/lang/Class;Lcom/waze/animation/easing/AnimationEasingManager$EaseType;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 404
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 406
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    invoke-direct {v11, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 407
    .local v11, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0x32

    invoke-virtual {v11, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 408
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 409
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 411
    if-eqz p1, :cond_2

    .line 412
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 414
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method public static openNavigateScreen(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;Z)V
    .locals 4
    .parameter "view"
    .parameter "listener"
    .parameter "isLandscape"

    .prologue
    const/4 v3, 0x1

    .line 212
    if-eqz p2, :cond_0

    .line 214
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 220
    .local v0, animation:Landroid/view/animation/Animation;
    :goto_0
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 221
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 222
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 223
    invoke-virtual {p0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 224
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 225
    return-void

    .line 218
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040015

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #animation:Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method public static openNavigateScreenWithFadeIn(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 233
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 234
    .local v0, animation:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 235
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 236
    return-void
.end method

.method public static overshootCustomPopView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 470
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 471
    .local v0, animation:Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 472
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 473
    return-void
.end method

.method public static overshootNativePopView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 475
    invoke-static {}, Lcom/waze/AppService;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 476
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 477
    return-void
.end method

.method private static setNextAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "v"
    .parameter "a"
    .parameter "next"

    .prologue
    .line 548
    new-instance v0, Lcom/waze/view/anim/AnimationUtils$6;

    invoke-direct {v0, p0, p2}, Lcom/waze/view/anim/AnimationUtils$6;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 561
    return-void
.end method

.method private static shakeTooltip(Landroid/view/View;)V
    .locals 9
    .parameter "toolTipLayout"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 529
    invoke-static {}, Lcom/waze/MapView;->gpuSupported()I

    move-result v3

    sget v4, Lcom/waze/MapView;->GPU_NOT_SUPPORTED:I

    if-ne v3, v4, :cond_0

    .line 545
    :goto_0
    return-void

    .line 536
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 537
    const v8, -0x42b33333

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v1

    .line 536
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 538
    .local v0, breathUpTranslateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 539
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 540
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 541
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 542
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 544
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static slideTooltip(Landroid/view/View;)V
    .locals 12
    .parameter "toolTipLayout"

    .prologue
    .line 482
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 483
    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 482
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 484
    .local v0, layoutTranslateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 487
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3e4ccccd

    const/high16 v3, 0x3f80

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 488
    .local v10, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 491
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 492
    const/4 v6, 0x2

    const v7, 0x3dcccccd

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 491
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 493
    .local v1, textTranslateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 495
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 496
    .local v11, as:Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 497
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 499
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 500
    const-wide/16 v2, 0x1f4

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 501
    invoke-virtual {p0, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 504
    new-instance v2, Lcom/waze/view/anim/AnimationUtils$5;

    invoke-direct {v2, p0, v1}, Lcom/waze/view/anim/AnimationUtils$5;-><init>(Landroid/view/View;Landroid/view/animation/TranslateAnimation;)V

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 525
    return-void
.end method

.method public static stretchViewHorizontally(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "duration"

    .prologue
    const/high16 v3, 0x3f80

    .line 463
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 464
    .local v0, animation:Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3, v3, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 465
    .local v1, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 466
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 467
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 468
    return-void
.end method
