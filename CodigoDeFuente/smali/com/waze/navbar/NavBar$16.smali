.class Lcom/waze/navbar/NavBar$16;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar;->minimizeNearingPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navbar/NavBar;

.field private final synthetic val$almostText:Landroid/view/View;

.field private final synthetic val$buttonsWidth:I

.field private final synthetic val$frameWidth:I

.field private final synthetic val$nameText:Landroid/view/View;

.field private final synthetic val$nearingPanel:Landroid/view/View;

.field private final synthetic val$photoFrame:Landroid/view/View;

.field private final synthetic val$shadow:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$16;->this$0:Lcom/waze/navbar/NavBar;

    iput-object p2, p0, Lcom/waze/navbar/NavBar$16;->val$almostText:Landroid/view/View;

    iput-object p3, p0, Lcom/waze/navbar/NavBar$16;->val$photoFrame:Landroid/view/View;

    iput-object p4, p0, Lcom/waze/navbar/NavBar$16;->val$nearingPanel:Landroid/view/View;

    iput-object p5, p0, Lcom/waze/navbar/NavBar$16;->val$shadow:Landroid/view/View;

    iput-object p6, p0, Lcom/waze/navbar/NavBar$16;->val$nameText:Landroid/view/View;

    iput p7, p0, Lcom/waze/navbar/NavBar$16;->val$frameWidth:I

    iput p8, p0, Lcom/waze/navbar/NavBar$16;->val$buttonsWidth:I

    .line 1368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navbar/NavBar$16;)Lcom/waze/navbar/NavBar;
    .locals 1
    .parameter

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/waze/navbar/NavBar$16;->this$0:Lcom/waze/navbar/NavBar;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 8
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    .line 1380
    iget-object v0, p0, Lcom/waze/navbar/NavBar$16;->val$almostText:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1381
    iget-object v0, p0, Lcom/waze/navbar/NavBar$16;->val$photoFrame:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1383
    iget-object v0, p0, Lcom/waze/navbar/NavBar$16;->val$nearingPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v0, Lcom/waze/navbar/NavBar$16$1;

    iget-object v2, p0, Lcom/waze/navbar/NavBar$16;->val$nearingPanel:Landroid/view/View;

    iget-object v3, p0, Lcom/waze/navbar/NavBar$16;->val$shadow:Landroid/view/View;

    iget-object v4, p0, Lcom/waze/navbar/NavBar$16;->val$nameText:Landroid/view/View;

    iget v5, p0, Lcom/waze/navbar/NavBar$16;->val$frameWidth:I

    iget v6, p0, Lcom/waze/navbar/NavBar$16;->val$buttonsWidth:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/waze/navbar/NavBar$16$1;-><init>(Lcom/waze/navbar/NavBar$16;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    invoke-virtual {v7, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1404
    iget-object v0, p0, Lcom/waze/navbar/NavBar$16;->val$nearingPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1405
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1376
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1372
    return-void
.end method
