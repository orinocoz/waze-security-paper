.class public Lcom/waze/view/map/MovingImageButton;
.super Landroid/widget/ImageButton;
.source "MovingImageButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/waze/view/map/MovingImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 18
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-virtual {p0, v0}, Lcom/waze/view/map/MovingImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/waze/view/map/MovingImageButton;->clearAnimation()V

    .line 23
    return-void
.end method
