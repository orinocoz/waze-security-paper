.class Lcom/waze/reports/ReportMenu1$5;
.super Ljava/lang/Object;
.source "ReportMenu1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportMenu1;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/ReportMenu1;

.field private final synthetic val$reportMenu:Lcom/waze/reports/ReportMenu;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportMenu1;Lcom/waze/reports/ReportMenu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportMenu1$5;->this$0:Lcom/waze/reports/ReportMenu1;

    iput-object p2, p0, Lcom/waze/reports/ReportMenu1$5;->val$reportMenu:Lcom/waze/reports/ReportMenu;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/waze/reports/ReportMenu1$5;->this$0:Lcom/waze/reports/ReportMenu1;

    #getter for: Lcom/waze/reports/ReportMenu1;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;
    invoke-static {v0}, Lcom/waze/reports/ReportMenu1;->access$0(Lcom/waze/reports/ReportMenu1;)Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->isRandomUserNTV()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/waze/reports/ReportMenu1$5;->val$reportMenu:Lcom/waze/reports/ReportMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportMenu;->hideBottomNotification(Z)V

    .line 89
    iget-object v0, p0, Lcom/waze/reports/ReportMenu1$5;->val$reportMenu:Lcom/waze/reports/ReportMenu;

    new-instance v1, Lcom/waze/reports/ChitchatReport;

    iget-object v2, p0, Lcom/waze/reports/ReportMenu1$5;->this$0:Lcom/waze/reports/ReportMenu1;

    invoke-virtual {v2}, Lcom/waze/reports/ReportMenu1;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/reports/ReportMenu1$5;->val$reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-direct {v1, v2, v3}, Lcom/waze/reports/ChitchatReport;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportMenu;->setReportForm(Lcom/waze/reports/ReportForm;)V

    .line 90
    iget-object v0, p0, Lcom/waze/reports/ReportMenu1$5;->val$reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->flipView()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/ReportMenu1$5;->this$0:Lcom/waze/reports/ReportMenu1;

    #getter for: Lcom/waze/reports/ReportMenu1;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/reports/ReportMenu1;->access$1(Lcom/waze/reports/ReportMenu1;)Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->randomUserMsg()V

    goto :goto_0
.end method
