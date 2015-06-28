.class Lcom/waze/main/navigate/NavigationResult$10;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult;->setDlgData()V
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
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$10;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 724
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$10;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mCalculating:Z
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$10(Lcom/waze/main/navigate/NavigationResult;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 726
    const-string v2, "ROUTES_ETA"

    invoke-static {v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 728
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    .line 729
    .local v1, nativeManager:Lcom/waze/navigate/DriveToNativeManager;
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$10;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mIsTripServerResult:Z
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$19(Lcom/waze/main/navigate/NavigationResult;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->requestRoute(Z)V

    .line 731
    new-instance v2, Lcom/waze/main/navigate/NavigationResult$10$1;

    invoke-direct {v2, p0}, Lcom/waze/main/navigate/NavigationResult$10$1;-><init>(Lcom/waze/main/navigate/NavigationResult$10;)V

    invoke-static {v2}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 738
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$10;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #calls: Lcom/waze/main/navigate/NavigationResult;->stopTimer()V
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$7(Lcom/waze/main/navigate/NavigationResult;)V

    .line 739
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$10;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/waze/main/navigate/NavigationResult;->access$8(Lcom/waze/main/navigate/NavigationResult;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 741
    :try_start_0
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$10;->this$0:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v2}, Lcom/waze/main/navigate/NavigationResult;->dismissNavigationResultDialogNoAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :cond_0
    :goto_0
    invoke-static {}, Lcom/waze/NavBarManager;->showNavBar()V

    .line 750
    .end local v1           #nativeManager:Lcom/waze/navigate/DriveToNativeManager;
    :cond_1
    return-void

    .line 743
    .restart local v1       #nativeManager:Lcom/waze/navigate/DriveToNativeManager;
    :catch_0
    move-exception v0

    .line 744
    .local v0, ex:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/waze/main/navigate/NavigationResult$10;->this$0:Lcom/waze/main/navigate/NavigationResult;

    const/4 v3, 0x0

    #setter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v2, v3}, Lcom/waze/main/navigate/NavigationResult;->access$18(Lcom/waze/main/navigate/NavigationResult;Landroid/app/Dialog;)V

    goto :goto_0
.end method
