.class Lcom/waze/navbar/NavBar$9;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar;->AlertAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navbar/NavBar;

.field private final synthetic val$bAlert:Z

.field private final synthetic val$nm:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar;ZLandroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$9;->this$0:Lcom/waze/navbar/NavBar;

    iput-boolean p2, p0, Lcom/waze/navbar/NavBar$9;->val$bAlert:Z

    iput-object p3, p0, Lcom/waze/navbar/NavBar$9;->val$nm:Landroid/view/animation/Animation$AnimationListener;

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/waze/navbar/NavBar$9;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->nearingDisplayed:Z
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$12(Lcom/waze/navbar/NavBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/waze/navbar/NavBar$9;->this$0:Lcom/waze/navbar/NavBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->hideNearingDestination(Z)V

    .line 797
    iget-object v0, p0, Lcom/waze/navbar/NavBar$9;->this$0:Lcom/waze/navbar/NavBar;

    const/4 v1, 0x1

    #setter for: Lcom/waze/navbar/NavBar;->shouldRestoreNearing:Z
    invoke-static {v0, v1}, Lcom/waze/navbar/NavBar;->access$21(Lcom/waze/navbar/NavBar;Z)V

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/waze/navbar/NavBar$9;->this$0:Lcom/waze/navbar/NavBar;

    iget-boolean v1, p0, Lcom/waze/navbar/NavBar$9;->val$bAlert:Z

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->ChangeToAlertMode(Z)V

    .line 801
    iget-object v0, p0, Lcom/waze/navbar/NavBar$9;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navbar/NavBar$9;->val$nm:Landroid/view/animation/Animation$AnimationListener;

    .line 800
    invoke-static {v0, v1}, Lcom/waze/view/anim/AnimationUtils;->openAnimateAlert2(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 802
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 791
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 788
    return-void
.end method
