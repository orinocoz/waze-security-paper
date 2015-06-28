.class Lcom/waze/view/navbar/TrafficBarView$3;
.super Ljava/lang/Object;
.source "TrafficBarView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/navbar/TrafficBarView;->disappearifyTheTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/navbar/TrafficBarView;


# direct methods
.method constructor <init>(Lcom/waze/view/navbar/TrafficBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/navbar/TrafficBarView$3;->this$0:Lcom/waze/view/navbar/TrafficBarView;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView$3;->this$0:Lcom/waze/view/navbar/TrafficBarView;

    const/4 v1, 0x0

    #setter for: Lcom/waze/view/navbar/TrafficBarView;->mTipIsAnimating:Z
    invoke-static {v0, v1}, Lcom/waze/view/navbar/TrafficBarView;->access$2(Lcom/waze/view/navbar/TrafficBarView;Z)V

    .line 191
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView$3;->this$0:Lcom/waze/view/navbar/TrafficBarView;

    #getter for: Lcom/waze/view/navbar/TrafficBarView;->mTip:Landroid/view/View;
    invoke-static {v0}, Lcom/waze/view/navbar/TrafficBarView;->access$1(Lcom/waze/view/navbar/TrafficBarView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 186
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 183
    return-void
.end method
