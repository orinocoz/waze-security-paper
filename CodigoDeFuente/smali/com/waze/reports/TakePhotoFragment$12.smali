.class Lcom/waze/reports/TakePhotoFragment$12;
.super Ljava/lang/Object;
.source "TakePhotoFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/TakePhotoFragment;->animateDoneButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/TakePhotoFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/TakePhotoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/TakePhotoFragment$12;->this$0:Lcom/waze/reports/TakePhotoFragment;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment$12;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mOkButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/waze/reports/TakePhotoFragment;->access$0(Lcom/waze/reports/TakePhotoFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 475
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 470
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment$12;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mDoneButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/waze/reports/TakePhotoFragment;->access$10(Lcom/waze/reports/TakePhotoFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 467
    return-void
.end method
