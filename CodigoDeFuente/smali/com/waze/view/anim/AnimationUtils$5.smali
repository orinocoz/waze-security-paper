.class Lcom/waze/view/anim/AnimationUtils$5;
.super Ljava/lang/Object;
.source "AnimationUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/anim/AnimationUtils;->slideTooltip(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$textTranslateAnimation:Landroid/view/animation/TranslateAnimation;

.field private final synthetic val$toolTipLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/animation/TranslateAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/anim/AnimationUtils$5;->val$toolTipLayout:Landroid/view/View;

    iput-object p2, p0, Lcom/waze/view/anim/AnimationUtils$5;->val$textTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/waze/view/anim/AnimationUtils$5;->val$toolTipLayout:Landroid/view/View;

    #calls: Lcom/waze/view/anim/AnimationUtils;->shakeTooltip(Landroid/view/View;)V
    invoke-static {v0}, Lcom/waze/view/anim/AnimationUtils;->access$0(Landroid/view/View;)V

    .line 523
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 518
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 508
    new-instance v0, Lcom/waze/view/anim/AnimationUtils$5$1;

    iget-object v1, p0, Lcom/waze/view/anim/AnimationUtils$5;->val$toolTipLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/waze/view/anim/AnimationUtils$5;->val$textTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p0, v1, v2}, Lcom/waze/view/anim/AnimationUtils$5$1;-><init>(Lcom/waze/view/anim/AnimationUtils$5;Landroid/view/View;Landroid/view/animation/TranslateAnimation;)V

    .line 513
    const-wide/16 v1, 0x32

    .line 508
    invoke-static {v0, v1, v2}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;J)V

    .line 514
    return-void
.end method
