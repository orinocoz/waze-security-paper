.class Lcom/waze/reports/ReportMenu$6;
.super Ljava/lang/Object;
.source "ReportMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportMenu;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/ReportMenu;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$6;->this$0:Lcom/waze/reports/ReportMenu;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$6;->this$0:Lcom/waze/reports/ReportMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportMenu;->hideBottomNotification(Z)V

    .line 222
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$6;->this$0:Lcom/waze/reports/ReportMenu;

    new-instance v1, Lcom/waze/reports/HazardReport;

    iget-object v2, p0, Lcom/waze/reports/ReportMenu$6;->this$0:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v2}, Lcom/waze/reports/ReportMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/reports/ReportMenu$6;->this$0:Lcom/waze/reports/ReportMenu;

    invoke-direct {v1, v2, v3}, Lcom/waze/reports/HazardReport;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportMenu;->setReportForm(Lcom/waze/reports/ReportForm;)V

    .line 223
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$6;->this$0:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->flipView()V

    .line 224
    return-void
.end method
