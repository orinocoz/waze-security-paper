.class Lcom/waze/ifs/ui/LayoutTooltip$1;
.super Ljava/lang/Object;
.source "LayoutTooltip.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/LayoutTooltip;->dismiss(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/LayoutTooltip;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/LayoutTooltip;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/LayoutTooltip$1;->this$0:Lcom/waze/ifs/ui/LayoutTooltip;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/ifs/ui/LayoutTooltip$1;)Lcom/waze/ifs/ui/LayoutTooltip;
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/waze/ifs/ui/LayoutTooltip$1;->this$0:Lcom/waze/ifs/ui/LayoutTooltip;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/waze/ifs/ui/LayoutTooltip$1;->this$0:Lcom/waze/ifs/ui/LayoutTooltip;

    iget-object v0, v0, Lcom/waze/ifs/ui/LayoutTooltip;->mView:Landroid/view/View;

    new-instance v1, Lcom/waze/ifs/ui/LayoutTooltip$1$1;

    invoke-direct {v1, p0}, Lcom/waze/ifs/ui/LayoutTooltip$1$1;-><init>(Lcom/waze/ifs/ui/LayoutTooltip$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 191
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 188
    return-void
.end method
