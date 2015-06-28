.class Lcom/waze/utils/ImageRepository$5;
.super Ljava/lang/Object;
.source "ImageRepository.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/utils/ImageRepository;->imageViewAnimatedChange(Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$anim_in:Landroid/view/animation/Animation;

.field private final synthetic val$newImage:Landroid/graphics/Bitmap;

.field private final synthetic val$remove:Landroid/view/View;

.field private final synthetic val$v:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/view/animation/Animation;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/utils/ImageRepository$5;->val$v:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/waze/utils/ImageRepository$5;->val$newImage:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/waze/utils/ImageRepository$5;->val$anim_in:Landroid/view/animation/Animation;

    iput-object p4, p0, Lcom/waze/utils/ImageRepository$5;->val$remove:Landroid/view/View;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$5;->val$v:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/waze/utils/ImageRepository$5;->val$newImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 370
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$5;->val$anim_in:Landroid/view/animation/Animation;

    new-instance v1, Lcom/waze/utils/ImageRepository$5$1;

    iget-object v2, p0, Lcom/waze/utils/ImageRepository$5;->val$remove:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/waze/utils/ImageRepository$5$1;-><init>(Lcom/waze/utils/ImageRepository$5;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 387
    iget-object v0, p0, Lcom/waze/utils/ImageRepository$5;->val$v:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/waze/utils/ImageRepository$5;->val$anim_in:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 388
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 364
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 361
    return-void
.end method
