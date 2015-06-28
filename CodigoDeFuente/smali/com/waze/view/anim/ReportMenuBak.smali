.class public Lcom/waze/view/anim/ReportMenuBak;
.super Landroid/app/Dialog;
.source "ReportMenuBak.java"


# instance fields
.field private firstLayout:Landroid/widget/RelativeLayout;

.field protected isFirstImage:Z

.field private secondLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    const v0, 0x7f06000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/view/anim/ReportMenuBak;->isFirstImage:Z

    .line 18
    const v0, 0x7f0300c8

    invoke-virtual {p0, v0}, Lcom/waze/view/anim/ReportMenuBak;->setContentView(I)V

    .line 43
    return-void
.end method

.method private applyRotation(FF)V
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/high16 v4, 0x4000

    .line 47
    iget-object v3, p0, Lcom/waze/view/anim/ReportMenuBak;->firstLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 48
    .local v0, centerX:F
    iget-object v3, p0, Lcom/waze/view/anim/ReportMenuBak;->firstLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 53
    .local v1, centerY:F
    new-instance v2, Lcom/waze/view/anim/Flip3dAnimation;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/waze/view/anim/Flip3dAnimation;-><init>(FFFF)V

    .line 54
    .local v2, rotation:Lcom/waze/view/anim/Flip3dAnimation;
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Lcom/waze/view/anim/Flip3dAnimation;->setDuration(J)V

    .line 55
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/waze/view/anim/Flip3dAnimation;->setFillAfter(Z)V

    .line 56
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/waze/view/anim/Flip3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 57
    new-instance v3, Lcom/waze/view/anim/DisplayNextView;

    iget-boolean v4, p0, Lcom/waze/view/anim/ReportMenuBak;->isFirstImage:Z

    iget-object v5, p0, Lcom/waze/view/anim/ReportMenuBak;->firstLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/waze/view/anim/ReportMenuBak;->secondLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v3, v4, v5, v6}, Lcom/waze/view/anim/DisplayNextView;-><init>(ZLandroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v2, v3}, Lcom/waze/view/anim/Flip3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 59
    iget-boolean v3, p0, Lcom/waze/view/anim/ReportMenuBak;->isFirstImage:Z

    if-eqz v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/waze/view/anim/ReportMenuBak;->firstLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v3, p0, Lcom/waze/view/anim/ReportMenuBak;->secondLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/waze/view/anim/ReportMenuBak;->isFirstImage:Z

    if-nez v0, :cond_1

    .line 68
    const/4 v0, 0x0

    const/high16 v1, -0x3d4c

    invoke-direct {p0, v0, v1}, Lcom/waze/view/anim/ReportMenuBak;->applyRotation(FF)V

    .line 69
    iget-boolean v0, p0, Lcom/waze/view/anim/ReportMenuBak;->isFirstImage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/waze/view/anim/ReportMenuBak;->isFirstImage:Z

    .line 73
    :goto_1
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_1
.end method
