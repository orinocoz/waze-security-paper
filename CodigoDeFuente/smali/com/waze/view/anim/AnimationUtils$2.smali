.class Lcom/waze/view/anim/AnimationUtils$2;
.super Ljava/lang/Object;
.source "AnimationUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/anim/AnimationUtils;->closeAnimateReport(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Landroid/view/animation/Animation$AnimationListener;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/anim/AnimationUtils$2;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p2, p0, Lcom/waze/view/anim/AnimationUtils$2;->val$view:Landroid/view/View;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 12
    .parameter "animation"

    .prologue
    const v4, 0x3f666666

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 98
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 99
    .local v9, animation2:Landroid/view/animation/AnimationSet;
    const/16 v10, 0xc8

    .line 101
    .local v10, myDur2:I
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f8ccccd

    invoke-direct {v11, v4, v3, v2, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 102
    .local v11, scaleAnimation2:Landroid/view/animation/ScaleAnimation;
    int-to-long v2, v10

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 103
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 105
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v2, 0x3dcccccd

    const v6, -0x42333333

    const/high16 v8, 0x3f80

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 106
    .local v0, translateAnimation2:Landroid/view/animation/TranslateAnimation;
    int-to-long v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 107
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget-object v1, p0, Lcom/waze/view/anim/AnimationUtils$2;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 109
    iget-object v1, p0, Lcom/waze/view/anim/AnimationUtils$2;->val$view:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 95
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 92
    return-void
.end method