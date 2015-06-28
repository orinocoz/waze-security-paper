.class Lcom/waze/main/navigate/NavigationResult$1;
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
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$1;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$1;->this$0:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v0}, Lcom/waze/main/navigate/NavigationResult;->swapEtaTimeDisplay()V

    .line 1362
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$1;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$0(Lcom/waze/main/navigate/NavigationResult;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1363
    return-void
.end method
