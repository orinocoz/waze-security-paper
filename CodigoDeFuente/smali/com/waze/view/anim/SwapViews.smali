.class public final Lcom/waze/view/anim/SwapViews;
.super Ljava/lang/Object;
.source "SwapViews.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field firstLayout:Landroid/widget/RelativeLayout;

.field private mIsFirstView:Z

.field secondLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(ZLandroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter "isFirstView"
    .parameter "firstLayout"
    .parameter "secondLayout"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/waze/view/anim/SwapViews;->mIsFirstView:Z

    .line 14
    iput-object p2, p0, Lcom/waze/view/anim/SwapViews;->firstLayout:Landroid/widget/RelativeLayout;

    .line 15
    iput-object p3, p0, Lcom/waze/view/anim/SwapViews;->secondLayout:Landroid/widget/RelativeLayout;

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 19
    iget-object v3, p0, Lcom/waze/view/anim/SwapViews;->firstLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v5

    .line 20
    .local v0, centerX:F
    iget-object v3, p0, Lcom/waze/view/anim/SwapViews;->secondLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v5

    .line 23
    .local v1, centerY:F
    iget-boolean v3, p0, Lcom/waze/view/anim/SwapViews;->mIsFirstView:Z

    if-eqz v3, :cond_0

    .line 24
    iget-object v3, p0, Lcom/waze/view/anim/SwapViews;->firstLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 25
    iget-object v3, p0, Lcom/waze/view/anim/SwapViews;->secondLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 26
    iget-object v3, p0, Lcom/waze/view/anim/SwapViews;->secondLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 28
    new-instance v2, Lcom/waze/view/anim/Flip3dAnimation;

    const/high16 v3, -0x3d4c

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/waze/view/anim/Flip3dAnimation;-><init>(FFFF)V

    .line 37
    .local v2, rotation:Lcom/waze/view/anim/Flip3dAnimation;
    :goto_0
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Lcom/waze/view/anim/Flip3dAnimation;->setDuration(J)V

    .line 38
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/waze/view/anim/Flip3dAnimation;->setFillAfter(Z)V

    .line 39
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/waze/view/anim/Flip3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 41
    iget-boolean v3, p0, Lcom/waze/view/anim/SwapViews;->mIsFirstView:Z

    if-eqz v3, :cond_1

    .line 42
    iget-object v3, p0, Lcom/waze/view/anim/SwapViews;->secondLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 46
    :goto_1
    return-void

    .line 30
    .end local v2           #rotation:Lcom/waze/view/anim/Flip3dAnimation;
    :cond_0
    iget-object v3, p0, Lcom/waze/view/anim/SwapViews;->secondLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 31
    iget-object v3, p0, Lcom/waze/view/anim/SwapViews;->firstLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 32
    iget-object v3, p0, Lcom/waze/view/anim/SwapViews;->firstLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 34
    new-instance v2, Lcom/waze/view/anim/Flip3dAnimation;

    const/high16 v3, 0x42b4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/waze/view/anim/Flip3dAnimation;-><init>(FFFF)V

    .restart local v2       #rotation:Lcom/waze/view/anim/Flip3dAnimation;
    goto :goto_0

    .line 44
    :cond_1
    iget-object v3, p0, Lcom/waze/view/anim/SwapViews;->firstLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method
