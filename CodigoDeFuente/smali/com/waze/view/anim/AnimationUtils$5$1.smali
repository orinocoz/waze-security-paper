.class Lcom/waze/view/anim/AnimationUtils$5$1;
.super Ljava/lang/Object;
.source "AnimationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/anim/AnimationUtils$5;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/view/anim/AnimationUtils$5;

.field private final synthetic val$textTranslateAnimation:Landroid/view/animation/TranslateAnimation;

.field private final synthetic val$toolTipLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/view/anim/AnimationUtils$5;Landroid/view/View;Landroid/view/animation/TranslateAnimation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/anim/AnimationUtils$5$1;->this$1:Lcom/waze/view/anim/AnimationUtils$5;

    iput-object p2, p0, Lcom/waze/view/anim/AnimationUtils$5$1;->val$toolTipLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/waze/view/anim/AnimationUtils$5$1;->val$textTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/waze/view/anim/AnimationUtils$5$1;->val$toolTipLayout:Landroid/view/View;

    const v1, 0x7f09072b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/view/anim/AnimationUtils$5$1;->val$textTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 512
    return-void
.end method
