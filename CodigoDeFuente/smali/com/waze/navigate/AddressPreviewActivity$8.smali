.class Lcom/waze/navigate/AddressPreviewActivity$8;
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
.field private lastDown:J

.field startX:F

.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->startX:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    .line 366
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mIsMapBig:Z
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$15(Lcom/waze/navigate/AddressPreviewActivity;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    .line 436
    :goto_0
    return v8

    .line 368
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 369
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 371
    .local v6, x:F
    if-nez v0, :cond_1

    .line 372
    iput v6, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->startX:F

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->lastDown:J

    .line 374
    const/4 v8, 0x1

    goto :goto_0

    .line 375
    :cond_1
    const/4 v8, 0x2

    if-ne v0, v8, :cond_3

    .line 376
    iget v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->startX:F

    sub-float v1, v6, v8

    .line 377
    .local v1, delta:F
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 379
    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-lez v8, :cond_2

    .line 380
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/waze/ifs/ui/ObservableScrollView;->clearAnimation()V

    .line 381
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 382
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/waze/ifs/ui/ObservableScrollView;->setTranslationX(F)V

    .line 383
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 386
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    iget-object v9, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->LS_X_FACTOR:F
    invoke-static {v9}, Lcom/waze/navigate/AddressPreviewActivity;->access$9(Lcom/waze/navigate/AddressPreviewActivity;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v4, v8

    .line 387
    .local v4, shift:I
    const/high16 v8, 0x447a

    const/high16 v9, 0x447a

    iget-object v10, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v10}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v1

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v10}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    .line 388
    .local v7, zoom:I
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v8

    iget-object v9, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v9}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v4

    iget-object v10, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v10}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10, v7}, Lcom/waze/navigate/DriveToNativeManager;->zoomOnMap(III)V

    .line 391
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$11(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;

    move-result-object v8

    neg-float v9, v1

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 395
    .end local v4           #shift:I
    .end local v7           #zoom:I
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 393
    :cond_2
    iput v6, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->startX:F

    goto :goto_1

    .line 396
    .end local v1           #delta:F
    :cond_3
    const/4 v8, 0x1

    if-ne v0, v8, :cond_6

    .line 397
    iget v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->startX:F

    sub-float v1, v6, v8

    .line 398
    .restart local v1       #delta:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->lastDown:J

    sub-long v2, v8, v10

    .line 399
    .local v2, duration:J
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 401
    const/high16 v8, 0x41f0

    cmpl-float v8, v1, v8

    if-gtz v8, :cond_4

    const-wide/16 v8, 0xb4

    cmp-long v8, v2, v8

    if-gez v8, :cond_5

    .line 402
    :cond_4
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/waze/ifs/ui/ObservableScrollView;->setTranslationX(F)V

    .line 403
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 404
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v5, v1, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 405
    .local v5, ta:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 406
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 407
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 408
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mLandscapeAnimateMapOpenListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$17(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 409
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/waze/ifs/ui/ObservableScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 410
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 411
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const/4 v9, 0x1

    #setter for: Lcom/waze/navigate/AddressPreviewActivity;->mIsMapBig:Z
    invoke-static {v8, v9}, Lcom/waze/navigate/AddressPreviewActivity;->access$18(Lcom/waze/navigate/AddressPreviewActivity;Z)V

    .line 412
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/waze/ifs/ui/ObservableScrollView;->setEnabled(Z)V

    .line 413
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v8

    iget-object v9, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v9}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v10}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Lcom/waze/navigate/DriveToNativeManager;->zoomOnMap(III)V

    .line 414
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$11(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v9}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 429
    :goto_2
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 416
    .end local v5           #ta:Landroid/view/animation/TranslateAnimation;
    :cond_5
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/waze/ifs/ui/ObservableScrollView;->setTranslationX(F)V

    .line 417
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 418
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v5, v1, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 419
    .restart local v5       #ta:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 420
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 421
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 422
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/waze/ifs/ui/ObservableScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 423
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 424
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const/4 v9, 0x0

    #setter for: Lcom/waze/navigate/AddressPreviewActivity;->mIsMapBig:Z
    invoke-static {v8, v9}, Lcom/waze/navigate/AddressPreviewActivity;->access$18(Lcom/waze/navigate/AddressPreviewActivity;Z)V

    .line 425
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v8

    iget-object v9, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v9}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v10}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->LS_X_FACTOR:F
    invoke-static {v11}, Lcom/waze/navigate/AddressPreviewActivity;->access$9(Lcom/waze/navigate/AddressPreviewActivity;)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int/2addr v9, v10

    .line 426
    iget-object v10, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v10}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x7d0

    .line 425
    invoke-virtual {v8, v9, v10, v11}, Lcom/waze/navigate/DriveToNativeManager;->zoomOnMap(III)V

    .line 427
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$11(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_2

    .line 430
    .end local v1           #delta:F
    .end local v2           #duration:J
    .end local v5           #ta:Landroid/view/animation/TranslateAnimation;
    :cond_6
    const/4 v8, 0x3

    if-ne v0, v8, :cond_7

    .line 431
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mScrollView:Lcom/waze/ifs/ui/ObservableScrollView;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$0(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ObservableScrollView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/waze/ifs/ui/ObservableScrollView;->setTranslationX(F)V

    .line 432
    iget-object v8, p0, Lcom/waze/navigate/AddressPreviewActivity$8;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapLayout:Landroid/view/ViewGroup;
    invoke-static {v8}, Lcom/waze/navigate/AddressPreviewActivity;->access$16(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 433
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 436
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0
.end method
