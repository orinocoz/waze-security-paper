.class Lcom/waze/view/anim/AnimationUtils$6;
.super Ljava/lang/Object;
.source "AnimationUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/anim/AnimationUtils;->setNextAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$next:Landroid/view/animation/Animation;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/anim/AnimationUtils$6;->val$v:Landroid/view/View;

    iput-object p2, p0, Lcom/waze/view/anim/AnimationUtils$6;->val$next:Landroid/view/animation/Animation;

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/waze/view/anim/AnimationUtils$6;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/waze/view/anim/AnimationUtils$6;->val$next:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 559
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 554
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 551
    return-void
.end method
