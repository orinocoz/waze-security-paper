.class Lcom/waze/reports/TakePhotoFragment$11;
.super Ljava/lang/Object;
.source "TakePhotoFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/TakePhotoFragment;->animateFlash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/TakePhotoFragment;

.field private final synthetic val$flash:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/reports/TakePhotoFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/TakePhotoFragment$11;->this$0:Lcom/waze/reports/TakePhotoFragment;

    iput-object p2, p0, Lcom/waze/reports/TakePhotoFragment$11;->val$flash:Landroid/view/View;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment$11;->val$flash:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 443
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 438
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 435
    return-void
.end method
