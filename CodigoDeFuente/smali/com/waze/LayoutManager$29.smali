.class Lcom/waze/LayoutManager$29;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->closeTooltip(ZLcom/waze/TooltipType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/LayoutManager;

.field private final synthetic val$tooltipLayout_ls:Landroid/widget/LinearLayout;

.field private final synthetic val$type:Lcom/waze/TooltipType;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager;Landroid/widget/LinearLayout;Lcom/waze/TooltipType;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$29;->this$0:Lcom/waze/LayoutManager;

    iput-object p2, p0, Lcom/waze/LayoutManager$29;->val$tooltipLayout_ls:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/waze/LayoutManager$29;->val$type:Lcom/waze/TooltipType;

    .line 2852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/waze/LayoutManager$29;->val$tooltipLayout_ls:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2863
    iget-object v0, p0, Lcom/waze/LayoutManager$29;->this$0:Lcom/waze/LayoutManager;

    iget-object v1, p0, Lcom/waze/LayoutManager$29;->val$type:Lcom/waze/TooltipType;

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->toolTipClosed(Lcom/waze/TooltipType;)V

    .line 2864
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2858
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2855
    return-void
.end method
