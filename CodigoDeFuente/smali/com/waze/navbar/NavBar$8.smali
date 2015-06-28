.class Lcom/waze/navbar/NavBar$8;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar;->setNextInstruction(I)V
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
    iput-object p1, p0, Lcom/waze/navbar/NavBar$8;->this$0:Lcom/waze/navbar/NavBar;

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/waze/navbar/NavBar$8;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->nextView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/waze/navbar/NavBar$8;->this$0:Lcom/waze/navbar/NavBar;

    const/4 v1, 0x0

    #setter for: Lcom/waze/navbar/NavBar;->Nextdisplayed:Z
    invoke-static {v0, v1}, Lcom/waze/navbar/NavBar;->access$20(Lcom/waze/navbar/NavBar;Z)V

    .line 519
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 514
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 512
    return-void
.end method
