.class Lcom/waze/navbar/NavBar$10$1;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar$10;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navbar/NavBar$10;

.field private final synthetic val$navBar:Landroid/view/View;

.field private final synthetic val$nearingView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar$10;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$10$1;->this$1:Lcom/waze/navbar/NavBar$10;

    iput-object p2, p0, Lcom/waze/navbar/NavBar$10$1;->val$navBar:Landroid/view/View;

    iput-object p3, p0, Lcom/waze/navbar/NavBar$10$1;->val$nearingView:Landroid/view/View;

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/waze/navbar/NavBar$10$1;->val$navBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/waze/view/anim/AnimationUtils;->openAnimateAlert2(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 848
    iget-object v0, p0, Lcom/waze/navbar/NavBar$10$1;->val$nearingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 849
    return-void
.end method
