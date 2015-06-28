.class Lcom/waze/navbar/NavBar$11$1;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar$11;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navbar/NavBar$11;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar$11;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$11$1;->this$1:Lcom/waze/navbar/NavBar$11;

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 898
    iget-object v0, p0, Lcom/waze/navbar/NavBar$11$1;->this$1:Lcom/waze/navbar/NavBar$11;

    #getter for: Lcom/waze/navbar/NavBar$11;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v0}, Lcom/waze/navbar/NavBar$11;->access$0(Lcom/waze/navbar/NavBar$11;)Lcom/waze/navbar/NavBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->ChangeToAlertMode(Z)V

    .line 899
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 894
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 873
    iget-object v2, p0, Lcom/waze/navbar/NavBar$11$1;->this$1:Lcom/waze/navbar/NavBar$11;

    #getter for: Lcom/waze/navbar/NavBar$11;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v2}, Lcom/waze/navbar/NavBar$11;->access$0(Lcom/waze/navbar/NavBar$11;)Lcom/waze/navbar/NavBar;

    move-result-object v2

    #getter for: Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;
    invoke-static {v2}, Lcom/waze/navbar/NavBar;->access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090452

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 874
    .local v1, nearingView:Landroid/view/View;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 875
    .local v0, alphaAnim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 876
    new-instance v2, Lcom/waze/navbar/NavBar$11$1$1;

    invoke-direct {v2, p0, v1}, Lcom/waze/navbar/NavBar$11$1$1;-><init>(Lcom/waze/navbar/NavBar$11$1;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 890
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 891
    return-void
.end method
