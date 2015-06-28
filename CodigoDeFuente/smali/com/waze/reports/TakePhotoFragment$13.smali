.class Lcom/waze/reports/TakePhotoFragment$13;
.super Ljava/lang/Object;
.source "TakePhotoFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/TakePhotoFragment;->animateBlackFlashStart()V
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
    iput-object p1, p0, Lcom/waze/reports/TakePhotoFragment$13;->this$0:Lcom/waze/reports/TakePhotoFragment;

    iput-object p2, p0, Lcom/waze/reports/TakePhotoFragment$13;->val$flash:Landroid/view/View;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment$13;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v0}, Lcom/waze/reports/TakePhotoFragment;->access$2(Lcom/waze/reports/TakePhotoFragment;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/ifs/ui/CameraPreview;->reset()V

    .line 509
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment$13;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #calls: Lcom/waze/reports/TakePhotoFragment;->setUpFragment()V
    invoke-static {v0}, Lcom/waze/reports/TakePhotoFragment;->access$11(Lcom/waze/reports/TakePhotoFragment;)V

    .line 510
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment$13;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #calls: Lcom/waze/reports/TakePhotoFragment;->animateBlackFlashEnd()V
    invoke-static {v0}, Lcom/waze/reports/TakePhotoFragment;->access$12(Lcom/waze/reports/TakePhotoFragment;)V

    .line 511
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 504
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment$13;->val$flash:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 501
    return-void
.end method
