.class Lcom/waze/navbar/NavBar$17;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar;->restoreNearingPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navbar/NavBar;

.field private final synthetic val$nameText:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$17;->this$0:Lcom/waze/navbar/NavBar;

    iput-object p2, p0, Lcom/waze/navbar/NavBar$17;->val$nameText:Landroid/view/View;

    .line 1418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navbar/NavBar$17;)Lcom/waze/navbar/NavBar;
    .locals 1
    .parameter

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/waze/navbar/NavBar$17;->this$0:Lcom/waze/navbar/NavBar;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 10
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/high16 v4, 0x3f00

    .line 1429
    iget-object v1, p0, Lcom/waze/navbar/NavBar$17;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090465

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1431
    .local v8, minimizeButton:Landroid/view/View;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x4334

    const/4 v2, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1433
    .local v0, minimizeButtonAnimation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1434
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1435
    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1437
    iget-object v1, p0, Lcom/waze/navbar/NavBar$17;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090456

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1438
    .local v6, photoFrame:Landroid/view/View;
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1440
    iget-object v1, p0, Lcom/waze/navbar/NavBar$17;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090452

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1441
    .local v4, nearingPanel:Landroid/view/View;
    iget-object v1, p0, Lcom/waze/navbar/NavBar$17;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090454

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1443
    .local v5, shadow:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    new-instance v1, Lcom/waze/navbar/NavBar$17$1;

    iget-object v7, p0, Lcom/waze/navbar/NavBar$17;->val$nameText:Landroid/view/View;

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v1 .. v7}, Lcom/waze/navbar/NavBar$17$1;-><init>(Lcom/waze/navbar/NavBar$17;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v9, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1509
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 1510
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1424
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1421
    return-void
.end method
