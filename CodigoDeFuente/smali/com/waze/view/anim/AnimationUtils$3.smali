.class Lcom/waze/view/anim/AnimationUtils$3;
.super Ljava/lang/Object;
.source "AnimationUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/anim/AnimationUtils;->openAnimateMenu(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Landroid/view/animation/Animation$AnimationListener;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/anim/AnimationUtils$3;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/waze/view/anim/AnimationUtils$3;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 13
    .parameter "aAnimation"

    .prologue
    const-wide/16 v11, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 153
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 154
    .local v9, animation2:Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f733333

    const v4, 0x3f828f5c

    const v5, 0x3f83d70a

    const v6, 0x3f7851ec

    invoke-direct {v10, v3, v4, v5, v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 155
    .local v10, scaleAnimation2:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v10, v11, v12}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 156
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 157
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v6, -0x430a3d71

    const v8, 0x3cf5c28f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 158
    .local v0, translateAnimation2:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 159
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 160
    new-instance v1, Lcom/waze/view/anim/AnimationUtils$3$1;

    iget-object v2, p0, Lcom/waze/view/anim/AnimationUtils$3;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    iget-object v3, p0, Lcom/waze/view/anim/AnimationUtils$3;->val$view:Landroid/view/View;

    invoke-direct {v1, p0, v2, v3}, Lcom/waze/view/anim/AnimationUtils$3$1;-><init>(Lcom/waze/view/anim/AnimationUtils$3;Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 182
    iget-object v1, p0, Lcom/waze/view/anim/AnimationUtils$3;->val$view:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 183
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 150
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 147
    return-void
.end method
