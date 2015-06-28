.class Lcom/waze/LayoutManager$12;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Lcom/waze/animation/easing/AnimationEasingManager$EasingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->makeEasing(Landroid/view/View;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/LayoutManager;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$12;->this$0:Lcom/waze/LayoutManager;

    iput-object p2, p0, Lcom/waze/LayoutManager$12;->val$view:Landroid/view/View;

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(D)V
    .locals 2
    .parameter "value"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/waze/LayoutManager$12;->val$view:Landroid/view/View;

    const/high16 v1, 0x4348

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 759
    return-void
.end method

.method public onStarted(D)V
    .locals 2
    .parameter "value"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/waze/LayoutManager$12;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 754
    return-void
.end method

.method public onValueChanged(DD)V
    .locals 2
    .parameter "value"
    .parameter "oldValue"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/waze/LayoutManager$12;->val$view:Landroid/view/View;

    double-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 749
    return-void
.end method
