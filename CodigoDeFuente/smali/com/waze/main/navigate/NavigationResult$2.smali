.class Lcom/waze/main/navigate/NavigationResult$2;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/main/navigate/NavigationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/main/navigate/NavigationResult;


# direct methods
.method constructor <init>(Lcom/waze/main/navigate/NavigationResult;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$2;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1367
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$2;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->iEvent:I
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$1(Lcom/waze/main/navigate/NavigationResult;)I

    move-result v1

    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$2;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->eventImages:Ljava/util/List;
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$2(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1375
    :goto_0
    return-void

    .line 1370
    :cond_0
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$2;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->eventImages:Ljava/util/List;
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$2(Lcom/waze/main/navigate/NavigationResult;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$2;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->iEvent:I
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$1(Lcom/waze/main/navigate/NavigationResult;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1371
    .local v0, eventImage:Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1372
    invoke-static {v0}, Lcom/waze/view/anim/AnimationUtils;->overshootCustomPopView(Landroid/view/View;)V

    .line 1373
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$2;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->iEvent:I
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$1(Lcom/waze/main/navigate/NavigationResult;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/waze/main/navigate/NavigationResult;->iEvent:I
    invoke-static {v1, v2}, Lcom/waze/main/navigate/NavigationResult;->access$3(Lcom/waze/main/navigate/NavigationResult;I)V

    .line 1374
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$2;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$0(Lcom/waze/main/navigate/NavigationResult;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$2;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->eventAnimationTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$4(Lcom/waze/main/navigate/NavigationResult;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
