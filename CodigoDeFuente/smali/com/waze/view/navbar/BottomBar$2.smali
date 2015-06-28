.class Lcom/waze/view/navbar/BottomBar$2;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/navbar/BottomBar;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/navbar/BottomBar;


# direct methods
.method constructor <init>(Lcom/waze/view/navbar/BottomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/navbar/BottomBar$2;->this$0:Lcom/waze/view/navbar/BottomBar;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/waze/view/navbar/BottomBar$2;->this$0:Lcom/waze/view/navbar/BottomBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/navbar/BottomBar;->setVisibility(I)V

    .line 111
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 105
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 101
    return-void
.end method
