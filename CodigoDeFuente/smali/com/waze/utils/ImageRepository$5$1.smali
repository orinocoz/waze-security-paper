.class Lcom/waze/utils/ImageRepository$5$1;
.super Ljava/lang/Object;
.source "ImageRepository.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/utils/ImageRepository$5;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/utils/ImageRepository$5;

.field private final synthetic val$remove:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/utils/ImageRepository$5;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/utils/ImageRepository$5$1;->this$1:Lcom/waze/utils/ImageRepository$5;

    iput-object p2, p0, Lcom/waze/utils/ImageRepository$5$1;->val$remove:Landroid/view/View;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$5$1;->val$remove:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$5$1;->val$remove:Landroid/view/View;

    instance-of v0, v0, Lcom/waze/view/map/ProgressAnimation;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$5$1;->val$remove:Landroid/view/View;

    check-cast v0, Lcom/waze/view/map/ProgressAnimation;

    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->stop()V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$5$1;->val$remove:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 385
    :cond_1
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
