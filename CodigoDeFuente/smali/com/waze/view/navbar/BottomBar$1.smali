.class Lcom/waze/view/navbar/BottomBar$1;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/navbar/BottomBar;->show()V
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
    iput-object p1, p0, Lcom/waze/view/navbar/BottomBar$1;->this$0:Lcom/waze/view/navbar/BottomBar;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/waze/view/navbar/BottomBar$1;->this$0:Lcom/waze/view/navbar/BottomBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/navbar/BottomBar;->setVisibility(I)V

    .line 62
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 57
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 53
    return-void
.end method
