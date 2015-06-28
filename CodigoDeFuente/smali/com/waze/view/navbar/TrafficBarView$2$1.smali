.class Lcom/waze/view/navbar/TrafficBarView$2$1;
.super Ljava/lang/Object;
.source "TrafficBarView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/navbar/TrafficBarView$2;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/view/navbar/TrafficBarView$2;

.field private final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/waze/view/navbar/TrafficBarView$2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/navbar/TrafficBarView$2$1;->this$1:Lcom/waze/view/navbar/TrafficBarView$2;

    iput p2, p0, Lcom/waze/view/navbar/TrafficBarView$2$1;->val$timeout:I

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView$2$1;->this$1:Lcom/waze/view/navbar/TrafficBarView$2;

    #getter for: Lcom/waze/view/navbar/TrafficBarView$2;->this$0:Lcom/waze/view/navbar/TrafficBarView;
    invoke-static {v0}, Lcom/waze/view/navbar/TrafficBarView$2;->access$0(Lcom/waze/view/navbar/TrafficBarView$2;)Lcom/waze/view/navbar/TrafficBarView;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/waze/view/navbar/TrafficBarView;->mTipIsAnimating:Z
    invoke-static {v0, v1}, Lcom/waze/view/navbar/TrafficBarView;->access$2(Lcom/waze/view/navbar/TrafficBarView;Z)V

    .line 151
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView$2$1;->this$1:Lcom/waze/view/navbar/TrafficBarView$2;

    #getter for: Lcom/waze/view/navbar/TrafficBarView$2;->this$0:Lcom/waze/view/navbar/TrafficBarView;
    invoke-static {v0}, Lcom/waze/view/navbar/TrafficBarView$2;->access$0(Lcom/waze/view/navbar/TrafficBarView$2;)Lcom/waze/view/navbar/TrafficBarView;

    move-result-object v0

    const/4 v1, 0x1

    #setter for: Lcom/waze/view/navbar/TrafficBarView;->mTipIsShowing:Z
    invoke-static {v0, v1}, Lcom/waze/view/navbar/TrafficBarView;->access$3(Lcom/waze/view/navbar/TrafficBarView;Z)V

    .line 152
    iget v0, p0, Lcom/waze/view/navbar/TrafficBarView$2$1;->val$timeout:I

    if-lez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/waze/view/navbar/TrafficBarView$2$1;->this$1:Lcom/waze/view/navbar/TrafficBarView$2;

    #getter for: Lcom/waze/view/navbar/TrafficBarView$2;->this$0:Lcom/waze/view/navbar/TrafficBarView;
    invoke-static {v0}, Lcom/waze/view/navbar/TrafficBarView$2;->access$0(Lcom/waze/view/navbar/TrafficBarView$2;)Lcom/waze/view/navbar/TrafficBarView;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/view/navbar/TrafficBarView$2$1;->this$1:Lcom/waze/view/navbar/TrafficBarView$2;

    #getter for: Lcom/waze/view/navbar/TrafficBarView$2;->this$0:Lcom/waze/view/navbar/TrafficBarView;
    invoke-static {v1}, Lcom/waze/view/navbar/TrafficBarView$2;->access$0(Lcom/waze/view/navbar/TrafficBarView$2;)Lcom/waze/view/navbar/TrafficBarView;

    move-result-object v1

    #getter for: Lcom/waze/view/navbar/TrafficBarView;->mDisapearRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/waze/view/navbar/TrafficBarView;->access$4(Lcom/waze/view/navbar/TrafficBarView;)Ljava/lang/Runnable;

    move-result-object v1

    iget v2, p0, Lcom/waze/view/navbar/TrafficBarView$2$1;->val$timeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/view/navbar/TrafficBarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 146
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 143
    return-void
.end method
