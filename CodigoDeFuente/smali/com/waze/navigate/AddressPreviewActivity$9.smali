.class Lcom/waze/navigate/AddressPreviewActivity$9;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->setUpActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field startX:F

.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->startX:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "event"

    .prologue
    .line 446
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mIsMapBig:Z
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$15(Lcom/waze/navigate/AddressPreviewActivity;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    .line 521
    :goto_0
    return v7

    .line 448
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 449
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 451
    .local v5, x:F
    if-nez v0, :cond_1

    .line 452
    iput v5, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->startX:F

    .line 453
    const/4 v7, 0x1

    goto :goto_0

    .line 454
    :cond_1
    const/4 v7, 0x2

    if-ne v0, v7, :cond_3

    .line 455
    iget v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->startX:F

    sub-float v1, v5, v7

    .line 456
    .local v1, delta:F
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 458
    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gez v7, :cond_2

    .line 459
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/waze/ifs/ui/ObservableScrollView;->clearAnimation()V

    .line 460
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 461
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/waze/ifs/ui/ObservableScrollView;->setTranslationX(F)V

    .line 462
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 465
    neg-float v7, v1

    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->LS_X_FACTOR:F
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$9(Lcom/waze/navigate/AddressPreviewActivity;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v2, v7

    .line 466
    .local v2, shift:I
    const/high16 v7, 0x447a

    const/high16 v8, 0x447a

    neg-float v9, v1

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v9}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v6, v7

    .line 467
    .local v6, zoom:I
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v9}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/waze/navigate/DriveToNativeManager;->zoomOnMap(III)V

    .line 470
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$11(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    neg-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 474
    .end local v2           #shift:I
    .end local v6           #zoom:I
    :goto_1
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 472
    :cond_2
    iput v5, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->startX:F

    goto :goto_1

    .line 475
    .end local v1           #delta:F
    :cond_3
    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    .line 476
    iget v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->startX:F

    sub-float v1, v5, v7

    .line 477
    .restart local v1       #delta:F
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 479
    const/high16 v7, -0x3e10

    cmpg-float v7, v1, v7

    if-gez v7, :cond_4

    .line 480
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/waze/ifs/ui/ObservableScrollView;->setTranslationX(F)V

    .line 481
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 482
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v3, v1, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 483
    .local v3, ta:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v7, 0xc8

    invoke-virtual {v3, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 484
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 485
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 486
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mLandscapeAnimateMapClosedListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$19(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 487
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/waze/ifs/ui/ObservableScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 488
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 489
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const/4 v8, 0x0

    #setter for: Lcom/waze/navigate/AddressPreviewActivity;->mIsMapBig:Z
    invoke-static {v7, v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$18(Lcom/waze/navigate/AddressPreviewActivity;Z)V

    .line 490
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/waze/ifs/ui/ObservableScrollView;->setEnabled(Z)V

    .line 492
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$11(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 493
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v9}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    neg-float v9, v9

    const/4 v10, 0x0

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 494
    .local v4, ta2:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v7, 0xc8

    invoke-virtual {v4, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 495
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 496
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 497
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$11(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 512
    .end local v4           #ta2:Landroid/view/animation/TranslateAnimation;
    :goto_2
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 499
    .end local v3           #ta:Landroid/view/animation/TranslateAnimation;
    :cond_4
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/waze/ifs/ui/ObservableScrollView;->setTranslationX(F)V

    .line 500
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 501
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v3, v1, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 502
    .restart local v3       #ta:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v7, 0xc8

    invoke-virtual {v3, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 503
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 504
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 505
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mLandscapeAnimateMapOpenListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$17(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 506
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/waze/ifs/ui/ObservableScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 507
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 508
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const/4 v8, 0x1

    #setter for: Lcom/waze/navigate/AddressPreviewActivity;->mIsMapBig:Z
    invoke-static {v7, v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$18(Lcom/waze/navigate/AddressPreviewActivity;Z)V

    .line 510
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$11(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 513
    .end local v1           #delta:F
    .end local v3           #ta:Landroid/view/animation/TranslateAnimation;
    :cond_5
    const/4 v7, 0x3

    if-ne v0, v7, :cond_6

    .line 514
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/waze/ifs/ui/ObservableScrollView;->clearAnimation()V

    .line 515
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 516
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/waze/ifs/ui/ObservableScrollView;->setTranslationX(F)V

    .line 517
    iget-object v7, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/waze/navigate/AddressPreviewActivity;->access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$9;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 518
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 521
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0
.end method
