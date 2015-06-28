.class Lcom/waze/main/navigate/NavigationResult$11;
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
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$11;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 759
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$11;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #calls: Lcom/waze/main/navigate/NavigationResult;->stopTimer()V
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$7(Lcom/waze/main/navigate/NavigationResult;)V

    .line 760
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$11;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$8(Lcom/waze/main/navigate/NavigationResult;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$11;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #calls: Lcom/waze/main/navigate/NavigationResult;->dismissNavigationResultDialog()V
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$17(Lcom/waze/main/navigate/NavigationResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$11;->this$0:Lcom/waze/main/navigate/NavigationResult;

    const/4 v2, 0x0

    #setter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/waze/main/navigate/NavigationResult;->access$18(Lcom/waze/main/navigate/NavigationResult;Landroid/app/Dialog;)V

    goto :goto_0
.end method
