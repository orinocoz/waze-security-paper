.class Lcom/waze/navbar/NavBar$17$1$1;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar$17$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/waze/navbar/NavBar$17$1;

.field private final synthetic val$nameText:Landroid/view/View;

.field private final synthetic val$nearingPanel:Landroid/view/View;

.field private final synthetic val$photoFrame:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar$17$1;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$17$1$1;->this$2:Lcom/waze/navbar/NavBar$17$1;

    iput-object p2, p0, Lcom/waze/navbar/NavBar$17$1$1;->val$nameText:Landroid/view/View;

    iput-object p3, p0, Lcom/waze/navbar/NavBar$17$1$1;->val$photoFrame:Landroid/view/View;

    iput-object p4, p0, Lcom/waze/navbar/NavBar$17$1$1;->val$nearingPanel:Landroid/view/View;

    .line 1471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 12
    .parameter "animation"

    .prologue
    const-wide/16 v10, 0x96

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1482
    iget-object v4, p0, Lcom/waze/navbar/NavBar$17$1$1;->this$2:Lcom/waze/navbar/NavBar$17$1;

    #getter for: Lcom/waze/navbar/NavBar$17$1;->this$1:Lcom/waze/navbar/NavBar$17;
    invoke-static {v4}, Lcom/waze/navbar/NavBar$17$1;->access$0(Lcom/waze/navbar/NavBar$17$1;)Lcom/waze/navbar/NavBar$17;

    move-result-object v4

    #getter for: Lcom/waze/navbar/NavBar$17;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v4}, Lcom/waze/navbar/NavBar$17;->access$0(Lcom/waze/navbar/NavBar$17;)Lcom/waze/navbar/NavBar;

    move-result-object v4

    #getter for: Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;
    invoke-static {v4}, Lcom/waze/navbar/NavBar;->access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090460

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1483
    .local v0, almostText:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1484
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1485
    .local v1, almostTextAnim:Landroid/view/animation/Animation;
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1486
    invoke-virtual {v1, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1487
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1489
    iget-object v4, p0, Lcom/waze/navbar/NavBar$17$1$1;->val$nameText:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x2

    const/high16 v6, 0x4190

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1490
    iget-object v4, p0, Lcom/waze/navbar/NavBar$17$1$1;->val$nameText:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1491
    iget-object v4, p0, Lcom/waze/navbar/NavBar$17$1$1;->val$nameText:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1492
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, -0x2

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1493
    const/high16 v4, 0x4120

    iget-object v5, p0, Lcom/waze/navbar/NavBar$17$1$1;->this$2:Lcom/waze/navbar/NavBar$17$1;

    #getter for: Lcom/waze/navbar/NavBar$17$1;->this$1:Lcom/waze/navbar/NavBar$17;
    invoke-static {v5}, Lcom/waze/navbar/NavBar$17$1;->access$0(Lcom/waze/navbar/NavBar$17$1;)Lcom/waze/navbar/NavBar$17;

    move-result-object v5

    #getter for: Lcom/waze/navbar/NavBar$17;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v5}, Lcom/waze/navbar/NavBar$17;->access$0(Lcom/waze/navbar/NavBar$17;)Lcom/waze/navbar/NavBar;

    move-result-object v5

    #getter for: Lcom/waze/navbar/NavBar;->scale:F
    invoke-static {v5}, Lcom/waze/navbar/NavBar;->access$26(Lcom/waze/navbar/NavBar;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1494
    iget-object v4, p0, Lcom/waze/navbar/NavBar$17$1$1;->val$nameText:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1495
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1496
    .local v2, nameTextAnim:Landroid/view/animation/Animation;
    invoke-virtual {v2, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1497
    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1498
    iget-object v4, p0, Lcom/waze/navbar/NavBar$17$1$1;->val$nameText:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1500
    iget-object v4, p0, Lcom/waze/navbar/NavBar$17$1$1;->val$photoFrame:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1501
    iget-object v4, p0, Lcom/waze/navbar/NavBar$17$1$1;->val$photoFrame:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 1503
    iget-object v4, p0, Lcom/waze/navbar/NavBar$17$1$1;->val$nearingPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 1504
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1477
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1474
    return-void
.end method
