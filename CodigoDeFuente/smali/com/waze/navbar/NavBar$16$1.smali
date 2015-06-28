.class Lcom/waze/navbar/NavBar$16$1;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar$16;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navbar/NavBar$16;

.field private final synthetic val$buttonsWidth:I

.field private final synthetic val$frameWidth:I

.field private final synthetic val$nameText:Landroid/view/View;

.field private final synthetic val$nearingPanel:Landroid/view/View;

.field private final synthetic val$shadow:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar$16;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$16$1;->this$1:Lcom/waze/navbar/NavBar$16;

    iput-object p2, p0, Lcom/waze/navbar/NavBar$16$1;->val$nearingPanel:Landroid/view/View;

    iput-object p3, p0, Lcom/waze/navbar/NavBar$16$1;->val$shadow:Landroid/view/View;

    iput-object p4, p0, Lcom/waze/navbar/NavBar$16$1;->val$nameText:Landroid/view/View;

    iput p5, p0, Lcom/waze/navbar/NavBar$16$1;->val$frameWidth:I

    iput p6, p0, Lcom/waze/navbar/NavBar$16$1;->val$buttonsWidth:I

    .line 1383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x41a0

    .line 1387
    iget-object v2, p0, Lcom/waze/navbar/NavBar$16$1;->val$nearingPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 1388
    iget-object v2, p0, Lcom/waze/navbar/NavBar$16$1;->val$shadow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 1390
    iget-object v2, p0, Lcom/waze/navbar/NavBar$16$1;->val$nameText:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x4160

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1391
    iget-object v2, p0, Lcom/waze/navbar/NavBar$16$1;->val$nameText:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1392
    iget-object v2, p0, Lcom/waze/navbar/NavBar$16$1;->val$nameText:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1393
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/waze/navbar/NavBar$16$1;->val$frameWidth:I

    iget v3, p0, Lcom/waze/navbar/NavBar$16$1;->val$buttonsWidth:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/waze/navbar/NavBar$16$1;->this$1:Lcom/waze/navbar/NavBar$16;

    #getter for: Lcom/waze/navbar/NavBar$16;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v3}, Lcom/waze/navbar/NavBar$16;->access$0(Lcom/waze/navbar/NavBar$16;)Lcom/waze/navbar/NavBar;

    move-result-object v3

    #getter for: Lcom/waze/navbar/NavBar;->scale:F
    invoke-static {v3}, Lcom/waze/navbar/NavBar;->access$26(Lcom/waze/navbar/NavBar;)F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1394
    iget v2, p0, Lcom/waze/navbar/NavBar$16$1;->val$buttonsWidth:I

    iget-object v3, p0, Lcom/waze/navbar/NavBar$16$1;->this$1:Lcom/waze/navbar/NavBar$16;

    #getter for: Lcom/waze/navbar/NavBar$16;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v3}, Lcom/waze/navbar/NavBar$16;->access$0(Lcom/waze/navbar/NavBar$16;)Lcom/waze/navbar/NavBar;

    move-result-object v3

    #getter for: Lcom/waze/navbar/NavBar;->scale:F
    invoke-static {v3}, Lcom/waze/navbar/NavBar;->access$26(Lcom/waze/navbar/NavBar;)F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1395
    iget-object v2, p0, Lcom/waze/navbar/NavBar$16$1;->val$nameText:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1396
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1397
    .local v0, nameTextAnim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1398
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1399
    iget-object v2, p0, Lcom/waze/navbar/NavBar$16$1;->val$nameText:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1401
    iget-object v2, p0, Lcom/waze/navbar/NavBar$16$1;->val$nearingPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1402
    return-void
.end method
