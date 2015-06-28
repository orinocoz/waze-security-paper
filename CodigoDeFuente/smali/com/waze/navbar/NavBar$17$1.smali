.class Lcom/waze/navbar/NavBar$17$1;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar$17;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navbar/NavBar$17;

.field private final synthetic val$minimizeButton:Landroid/view/View;

.field private final synthetic val$nameText:Landroid/view/View;

.field private final synthetic val$nearingPanel:Landroid/view/View;

.field private final synthetic val$photoFrame:Landroid/view/View;

.field private final synthetic val$shadow:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar$17;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$17$1;->this$1:Lcom/waze/navbar/NavBar$17;

    iput-object p2, p0, Lcom/waze/navbar/NavBar$17$1;->val$minimizeButton:Landroid/view/View;

    iput-object p3, p0, Lcom/waze/navbar/NavBar$17$1;->val$nearingPanel:Landroid/view/View;

    iput-object p4, p0, Lcom/waze/navbar/NavBar$17$1;->val$shadow:Landroid/view/View;

    iput-object p5, p0, Lcom/waze/navbar/NavBar$17$1;->val$photoFrame:Landroid/view/View;

    iput-object p6, p0, Lcom/waze/navbar/NavBar$17$1;->val$nameText:Landroid/view/View;

    .line 1443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navbar/NavBar$17$1;)Lcom/waze/navbar/NavBar$17;
    .locals 1
    .parameter

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/waze/navbar/NavBar$17$1;->this$1:Lcom/waze/navbar/NavBar$17;

    return-object v0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 12

    .prologue
    const/high16 v2, 0x3f80

    const-wide/16 v10, 0x12c

    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 1448
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/waze/navbar/NavBar$17$1;->val$minimizeButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/waze/navbar/NavBar$17$1;->val$nearingPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v7, v1, v1, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1450
    .local v7, nearingPanelAnim:Landroid/view/animation/Animation;
    invoke-virtual {v7, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1451
    invoke-virtual {v7, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1452
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1453
    iget-object v3, p0, Lcom/waze/navbar/NavBar$17$1;->val$nearingPanel:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1456
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/waze/navbar/NavBar$17$1;->val$minimizeButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/waze/navbar/NavBar$17$1;->val$nearingPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v8, v1, v1, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1458
    .local v8, shadowAnim:Landroid/view/animation/Animation;
    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1459
    invoke-virtual {v8, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1460
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1461
    iget-object v3, p0, Lcom/waze/navbar/NavBar$17$1;->val$shadow:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1464
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f00

    iget-object v4, p0, Lcom/waze/navbar/NavBar$17$1;->val$photoFrame:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v5, v3, v4

    iget-object v3, p0, Lcom/waze/navbar/NavBar$17$1;->val$photoFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1465
    iget-object v4, p0, Lcom/waze/navbar/NavBar$17$1;->val$photoFrame:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/waze/navbar/NavBar$17$1;->val$minimizeButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    .line 1464
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1466
    .local v0, photoFrameAnim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1467
    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1468
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1469
    iget-object v1, p0, Lcom/waze/navbar/NavBar$17$1;->val$photoFrame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1471
    new-instance v1, Lcom/waze/navbar/NavBar$17$1$1;

    iget-object v2, p0, Lcom/waze/navbar/NavBar$17$1;->val$nameText:Landroid/view/View;

    iget-object v3, p0, Lcom/waze/navbar/NavBar$17$1;->val$photoFrame:Landroid/view/View;

    iget-object v4, p0, Lcom/waze/navbar/NavBar$17$1;->val$nearingPanel:Landroid/view/View;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/waze/navbar/NavBar$17$1$1;-><init>(Lcom/waze/navbar/NavBar$17$1;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1506
    iget-object v1, p0, Lcom/waze/navbar/NavBar$17$1;->val$nearingPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1507
    return-void
.end method
