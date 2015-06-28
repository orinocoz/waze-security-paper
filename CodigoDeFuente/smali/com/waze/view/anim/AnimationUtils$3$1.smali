.class Lcom/waze/view/anim/AnimationUtils$3$1;
.super Ljava/lang/Object;
.source "AnimationUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/anim/AnimationUtils$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/view/anim/AnimationUtils$3;

.field private final synthetic val$listener:Landroid/view/animation/Animation$AnimationListener;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/view/anim/AnimationUtils$3;Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/anim/AnimationUtils$3$1;->this$1:Lcom/waze/view/anim/AnimationUtils$3;

    iput-object p2, p0, Lcom/waze/view/anim/AnimationUtils$3$1;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p3, p0, Lcom/waze/view/anim/AnimationUtils$3$1;->val$view:Landroid/view/View;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 13
    .parameter "aAnimation"

    .prologue
    const-wide/16 v11, 0x64

    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 169
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 170
    .local v9, animation3:Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f828f5c

    const v4, 0x3f7851ec

    invoke-direct {v10, v3, v5, v4, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 171
    .local v10, scaleAnimation3:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v10, v11, v12}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 172
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 173
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v6, 0x3cf5c28f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 174
    .local v0, translateAnimation3:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 175
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 176
    iget-object v1, p0, Lcom/waze/view/anim/AnimationUtils$3$1;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/waze/view/anim/AnimationUtils$3$1;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/waze/view/anim/AnimationUtils$3$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 166
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 163
    return-void
.end method
