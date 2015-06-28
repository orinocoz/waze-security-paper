.class Lcom/waze/view/navbar/TrafficBarView$2;
.super Ljava/lang/Object;
.source "TrafficBarView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/navbar/TrafficBarView;->appearifyTheTip(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/navbar/TrafficBarView;

.field private final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/waze/view/navbar/TrafficBarView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/navbar/TrafficBarView$2;->this$0:Lcom/waze/view/navbar/TrafficBarView;

    iput p2, p0, Lcom/waze/view/navbar/TrafficBarView$2;->val$timeout:I

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/navbar/TrafficBarView$2;)Lcom/waze/view/navbar/TrafficBarView;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView$2;->this$0:Lcom/waze/view/navbar/TrafficBarView;

    return-object v0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 129
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView$2;->this$0:Lcom/waze/view/navbar/TrafficBarView;

    #getter for: Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;
    invoke-static {v0}, Lcom/waze/view/navbar/TrafficBarView;->access$1(Lcom/waze/view/navbar/TrafficBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 131
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 132
    .local v7, as:Landroid/view/animation/AnimationSet;
    const-wide/16 v0, 0xc8

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 133
    invoke-virtual {v7, v3}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 134
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 136
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 137
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x42a0

    .line 138
    const/high16 v6, 0x3f00

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 137
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 140
    new-instance v0, Lcom/waze/view/navbar/TrafficBarView$2$1;

    iget v1, p0, Lcom/waze/view/navbar/TrafficBarView$2;->val$timeout:I

    invoke-direct {v0, p0, v1}, Lcom/waze/view/navbar/TrafficBarView$2$1;-><init>(Lcom/waze/view/navbar/TrafficBarView$2;I)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 158
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView$2;->this$0:Lcom/waze/view/navbar/TrafficBarView;

    #getter for: Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;
    invoke-static {v0}, Lcom/waze/view/navbar/TrafficBarView;->access$1(Lcom/waze/view/navbar/TrafficBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 159
    return-void
.end method
