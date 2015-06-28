.class public final Lcom/waze/view/anim/DisplayNextView;
.super Ljava/lang/Object;
.source "DisplayNextView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field firstLayout:Landroid/widget/RelativeLayout;

.field private mCurrentView:Z

.field secondLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(ZLandroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter "currentView"
    .parameter "firstLayout"
    .parameter "secondLayout"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/waze/view/anim/DisplayNextView;->mCurrentView:Z

    .line 13
    iput-object p2, p0, Lcom/waze/view/anim/DisplayNextView;->firstLayout:Landroid/widget/RelativeLayout;

    .line 14
    iput-object p3, p0, Lcom/waze/view/anim/DisplayNextView;->secondLayout:Landroid/widget/RelativeLayout;

    .line 15
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/waze/view/anim/DisplayNextView;->firstLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/waze/view/anim/SwapViews;

    iget-boolean v2, p0, Lcom/waze/view/anim/DisplayNextView;->mCurrentView:Z

    iget-object v3, p0, Lcom/waze/view/anim/DisplayNextView;->firstLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/waze/view/anim/DisplayNextView;->secondLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/view/anim/SwapViews;-><init>(ZLandroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 22
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 25
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 18
    return-void
.end method
