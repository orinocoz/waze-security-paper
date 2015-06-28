.class Lcom/waze/LayoutManager$25;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->setTooltipShowEvents(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/LayoutManager;

.field private final synthetic val$currentTooltip:Landroid/widget/LinearLayout;

.field private final synthetic val$currentTooltip_ls:Landroid/widget/LinearLayout;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager;Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$25;->this$0:Lcom/waze/LayoutManager;

    iput-object p2, p0, Lcom/waze/LayoutManager$25;->val$currentTooltip:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/waze/LayoutManager$25;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/LayoutManager$25;->val$currentTooltip_ls:Landroid/widget/LinearLayout;

    .line 2730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showAnimatedTooltip(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 1
    .parameter "currentTooltip"
    .parameter "text"

    .prologue
    .line 2741
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2742
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 2743
    const v0, 0x7f09072b

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2744
    invoke-static {p1}, Lcom/waze/view/anim/AnimationUtils;->slideTooltip(Landroid/view/View;)V

    .line 2745
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/waze/LayoutManager$25;->val$currentTooltip:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/waze/LayoutManager$25;->val$text:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/waze/LayoutManager$25;->showAnimatedTooltip(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 2735
    iget-object v0, p0, Lcom/waze/LayoutManager$25;->val$currentTooltip_ls:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2736
    iget-object v0, p0, Lcom/waze/LayoutManager$25;->val$currentTooltip_ls:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/waze/LayoutManager$25;->val$text:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/waze/LayoutManager$25;->showAnimatedTooltip(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 2738
    :cond_0
    return-void
.end method
