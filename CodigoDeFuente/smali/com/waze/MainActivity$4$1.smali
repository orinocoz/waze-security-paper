.class Lcom/waze/MainActivity$4$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MainActivity$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/waze/MainActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MainActivity$4$1;->this$1:Lcom/waze/MainActivity$4;

    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/waze/MainActivity$4$1;->this$1:Lcom/waze/MainActivity$4;

    #getter for: Lcom/waze/MainActivity$4;->this$0:Lcom/waze/MainActivity;
    invoke-static {v0}, Lcom/waze/MainActivity$4;->access$0(Lcom/waze/MainActivity$4;)Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 992
    iget-object v0, p0, Lcom/waze/MainActivity$4$1;->this$1:Lcom/waze/MainActivity$4;

    #getter for: Lcom/waze/MainActivity$4;->this$0:Lcom/waze/MainActivity;
    invoke-static {v0}, Lcom/waze/MainActivity$4;->access$0(Lcom/waze/MainActivity$4;)Lcom/waze/MainActivity;

    move-result-object v0

    const v1, 0x7f09039f

    invoke-virtual {v0, v1}, Lcom/waze/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/view/anim/AnimationUtils;->SearchBarBackAnimation(Landroid/view/View;)V

    .line 1001
    :goto_0
    iget-object v0, p0, Lcom/waze/MainActivity$4$1;->this$1:Lcom/waze/MainActivity$4;

    #getter for: Lcom/waze/MainActivity$4;->this$0:Lcom/waze/MainActivity;
    invoke-static {v0}, Lcom/waze/MainActivity$4;->access$0(Lcom/waze/MainActivity$4;)Lcom/waze/MainActivity;

    move-result-object v0

    #getter for: Lcom/waze/MainActivity;->mLayoutMgr:Lcom/waze/LayoutManager;
    invoke-static {v0}, Lcom/waze/MainActivity;->access$4(Lcom/waze/MainActivity;)Lcom/waze/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->getMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1002
    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/waze/MainActivity$4$1;->this$1:Lcom/waze/MainActivity$4;

    #getter for: Lcom/waze/MainActivity$4;->this$0:Lcom/waze/MainActivity;
    invoke-static {v0}, Lcom/waze/MainActivity$4;->access$0(Lcom/waze/MainActivity$4;)Lcom/waze/MainActivity;

    move-result-object v0

    const v1, 0x7f0903af

    invoke-virtual {v0, v1}, Lcom/waze/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/view/anim/AnimationUtils;->SearchBarBackAnimation(Landroid/view/View;)V

    goto :goto_0
.end method
