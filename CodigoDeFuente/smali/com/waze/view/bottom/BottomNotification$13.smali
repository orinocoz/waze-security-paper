.class Lcom/waze/view/bottom/BottomNotification$13;
.super Ljava/lang/Object;
.source "BottomNotification.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/bottom/BottomNotification;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/bottom/BottomNotification;


# direct methods
.method constructor <init>(Lcom/waze/view/bottom/BottomNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/bottom/BottomNotification$13;->this$0:Lcom/waze/view/bottom/BottomNotification;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification$13;->this$0:Lcom/waze/view/bottom/BottomNotification;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/bottom/BottomNotification;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification$13;->this$0:Lcom/waze/view/bottom/BottomNotification;

    const/4 v1, 0x0

    #setter for: Lcom/waze/view/bottom/BottomNotification;->animating:Z
    invoke-static {v0, v1}, Lcom/waze/view/bottom/BottomNotification;->access$6(Lcom/waze/view/bottom/BottomNotification;Z)V

    .line 381
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 375
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 372
    return-void
.end method
