.class Lcom/waze/navbar/NavBar$10;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar;->animateNearingDestinationIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navbar/NavBar;

.field private final synthetic val$navBar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$10;->this$0:Lcom/waze/navbar/NavBar;

    iput-object p2, p0, Lcom/waze/navbar/NavBar$10;->val$navBar:Landroid/view/View;

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 831
    iget-object v1, p0, Lcom/waze/navbar/NavBar$10;->val$navBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 832
    iget-object v1, p0, Lcom/waze/navbar/NavBar$10;->this$0:Lcom/waze/navbar/NavBar;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/waze/navbar/NavBar;->ChangeToAlertMode(Z)V

    .line 833
    iget-object v1, p0, Lcom/waze/navbar/NavBar$10;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->Nextdisplayed:Z
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$22(Lcom/waze/navbar/NavBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/waze/navbar/NavBar$10;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f090165

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 836
    :cond_0
    iget-object v1, p0, Lcom/waze/navbar/NavBar$10;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f090452

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 837
    .local v0, nearingView:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 838
    iget-object v1, p0, Lcom/waze/navbar/NavBar$10;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f090453

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 839
    iget-object v1, p0, Lcom/waze/navbar/NavBar$10;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->shown:Z
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$23(Lcom/waze/navbar/NavBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 838
    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 840
    iget-object v1, p0, Lcom/waze/navbar/NavBar$10;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f090454

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 841
    iget-object v4, p0, Lcom/waze/navbar/NavBar$10;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->shown:Z
    invoke-static {v4}, Lcom/waze/navbar/NavBar;->access$23(Lcom/waze/navbar/NavBar;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 840
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 843
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/waze/navbar/NavBar$10$1;

    iget-object v3, p0, Lcom/waze/navbar/NavBar$10;->val$navBar:Landroid/view/View;

    invoke-direct {v2, p0, v3, v0}, Lcom/waze/navbar/NavBar$10$1;-><init>(Lcom/waze/navbar/NavBar$10;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 851
    return-void

    :cond_1
    move v1, v3

    .line 839
    goto :goto_0

    :cond_2
    move v2, v3

    .line 841
    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 827
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 824
    return-void
.end method
