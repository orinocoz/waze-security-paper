.class public Lcom/waze/view/map/ProgressAnimation;
.super Landroid/widget/RelativeLayout;
.source "ProgressAnimation.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/waze/view/map/ProgressAnimation;->inflater:Landroid/view/LayoutInflater;

    .line 19
    iget-object v0, p0, Lcom/waze/view/map/ProgressAnimation;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300bb

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/waze/view/map/ProgressAnimation;->inflater:Landroid/view/LayoutInflater;

    .line 25
    iget-object v0, p0, Lcom/waze/view/map/ProgressAnimation;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300bb

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/waze/view/map/ProgressAnimation;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 29
    .local v0, anim:Landroid/view/animation/Animation;
    const v1, 0x7f090557

    invoke-virtual {p0, v1}, Lcom/waze/view/map/ProgressAnimation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f090557

    invoke-virtual {p0, v0}, Lcom/waze/view/map/ProgressAnimation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 34
    return-void
.end method
