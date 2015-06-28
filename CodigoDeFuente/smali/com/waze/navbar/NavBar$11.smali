.class Lcom/waze/navbar/NavBar$11;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar;->animateNearingDestinationOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navbar/NavBar;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$11;->this$0:Lcom/waze/navbar/NavBar;

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navbar/NavBar$11;)Lcom/waze/navbar/NavBar;
    .locals 1
    .parameter

    .prologue
    .line 858
    iget-object v0, p0, Lcom/waze/navbar/NavBar$11;->this$0:Lcom/waze/navbar/NavBar;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 867
    iget-object v0, p0, Lcom/waze/navbar/NavBar$11;->this$0:Lcom/waze/navbar/NavBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/navbar/NavBar;->ChangeToAlertMode(Z)V

    .line 869
    iget-object v0, p0, Lcom/waze/navbar/NavBar$11;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/navbar/NavBar$11$1;

    invoke-direct {v1, p0}, Lcom/waze/navbar/NavBar$11$1;-><init>(Lcom/waze/navbar/NavBar$11;)V

    .line 868
    invoke-static {v0, v1}, Lcom/waze/view/anim/AnimationUtils;->openAnimateAlert2(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 901
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 863
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 860
    return-void
.end method
