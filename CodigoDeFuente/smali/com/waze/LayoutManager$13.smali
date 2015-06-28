.class Lcom/waze/LayoutManager$13;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->OpenSwipePopups()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/LayoutManager;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$13;->this$0:Lcom/waze/LayoutManager;

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/LayoutManager$13;)Lcom/waze/LayoutManager;
    .locals 1
    .parameter

    .prologue
    .line 851
    iget-object v0, p0, Lcom/waze/LayoutManager$13;->this$0:Lcom/waze/LayoutManager;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 866
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 863
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/waze/LayoutManager$13;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mMainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$9(Lcom/waze/LayoutManager;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f0903a4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/LayoutManager$13$1;

    invoke-direct {v1, p0}, Lcom/waze/LayoutManager$13$1;-><init>(Lcom/waze/LayoutManager$13;)V

    .line 859
    const-wide/16 v2, 0x64

    .line 855
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 860
    return-void
.end method
