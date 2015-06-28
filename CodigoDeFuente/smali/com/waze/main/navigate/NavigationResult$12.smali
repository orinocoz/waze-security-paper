.class Lcom/waze/main/navigate/NavigationResult$12;
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
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$12;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 774
    const-string v1, "CANCEL_ETA"

    invoke-static {v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 775
    const-string v1, "ADS_NAVIGATE_CANCEL_ETA"

    invoke-static {v1}, Lcom/waze/analytics/Analytics;->logAdsContextNav(Ljava/lang/String;)V

    .line 776
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$12;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mIsTripServerResult:Z
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$19(Lcom/waze/main/navigate/NavigationResult;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    new-instance v1, Lcom/waze/main/navigate/NavigationResult$12$1;

    invoke-direct {v1, p0}, Lcom/waze/main/navigate/NavigationResult$12$1;-><init>(Lcom/waze/main/navigate/NavigationResult$12;)V

    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 794
    :goto_0
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$12;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #calls: Lcom/waze/main/navigate/NavigationResult;->stopTimer()V
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$7(Lcom/waze/main/navigate/NavigationResult;)V

    .line 795
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$12;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$8(Lcom/waze/main/navigate/NavigationResult;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 797
    :try_start_0
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$12;->this$0:Lcom/waze/main/navigate/NavigationResult;

    invoke-virtual {v1}, Lcom/waze/main/navigate/NavigationResult;->dismissNavigationResultDialogNoAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :cond_0
    :goto_1
    return-void

    .line 785
    :cond_1
    new-instance v1, Lcom/waze/main/navigate/NavigationResult$12$2;

    invoke-direct {v1, p0}, Lcom/waze/main/navigate/NavigationResult$12$2;-><init>(Lcom/waze/main/navigate/NavigationResult$12;)V

    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$12;->this$0:Lcom/waze/main/navigate/NavigationResult;

    const/4 v2, 0x0

    #setter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/waze/main/navigate/NavigationResult;->access$18(Lcom/waze/main/navigate/NavigationResult;Landroid/app/Dialog;)V

    goto :goto_1
.end method
