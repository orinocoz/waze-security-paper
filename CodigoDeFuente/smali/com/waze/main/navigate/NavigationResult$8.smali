.class Lcom/waze/main/navigate/NavigationResult$8;
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
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$8;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 571
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$8;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mCalculating:Z
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$10(Lcom/waze/main/navigate/NavigationResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    :goto_0
    return-void

    .line 573
    :cond_0
    const-string v1, "SHARE_PROMOTION_CLICK"

    invoke-static {v1, v2, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$8;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #calls: Lcom/waze/main/navigate/NavigationResult;->stopTimer()V
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$7(Lcom/waze/main/navigate/NavigationResult;)V

    .line 575
    iget-object v1, p0, Lcom/waze/main/navigate/NavigationResult$8;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #getter for: Lcom/waze/main/navigate/NavigationResult;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/waze/main/navigate/NavigationResult;->access$8(Lcom/waze/main/navigate/NavigationResult;)Landroid/app/Dialog;

    move-result-object v1

    const v2, 0x7f0904b4

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 576
    .local v0, goButton:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 578
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/waze/share/ShareUtility;->shareLocationOrDrive(Lcom/waze/ifs/ui/ActivityBase;I)V

    goto :goto_0
.end method
