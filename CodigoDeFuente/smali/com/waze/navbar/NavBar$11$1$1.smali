.class Lcom/waze/navbar/NavBar$11$1$1;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar$11$1;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/waze/navbar/NavBar$11$1;

.field private final synthetic val$nearingView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar$11$1;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$11$1$1;->this$2:Lcom/waze/navbar/NavBar$11$1;

    iput-object p2, p0, Lcom/waze/navbar/NavBar$11$1$1;->val$nearingView:Landroid/view/View;

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/waze/navbar/NavBar$11$1$1;->val$nearingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 887
    iget-object v0, p0, Lcom/waze/navbar/NavBar$11$1$1;->val$nearingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 888
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 882
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 879
    return-void
.end method
