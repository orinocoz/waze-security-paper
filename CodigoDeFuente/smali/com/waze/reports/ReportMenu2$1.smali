.class Lcom/waze/reports/ReportMenu2$1;
.super Ljava/lang/Object;
.source "ReportMenu2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportMenu2;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/ReportMenu2;

.field private final synthetic val$reportMenu:Lcom/waze/reports/ReportMenu;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportMenu2;Lcom/waze/reports/ReportMenu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportMenu2$1;->this$0:Lcom/waze/reports/ReportMenu2;

    iput-object p2, p0, Lcom/waze/reports/ReportMenu2$1;->val$reportMenu:Lcom/waze/reports/ReportMenu;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/waze/reports/ReportMenu2$1;->val$reportMenu:Lcom/waze/reports/ReportMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportMenu;->hideBottomNotification(Z)V

    .line 39
    iget-object v0, p0, Lcom/waze/reports/ReportMenu2$1;->val$reportMenu:Lcom/waze/reports/ReportMenu;

    new-instance v1, Lcom/waze/reports/MapIssueReport;

    iget-object v2, p0, Lcom/waze/reports/ReportMenu2$1;->this$0:Lcom/waze/reports/ReportMenu2;

    invoke-virtual {v2}, Lcom/waze/reports/ReportMenu2;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/reports/ReportMenu2$1;->val$reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-direct {v1, v2, v3}, Lcom/waze/reports/MapIssueReport;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportMenu;->setReportForm(Lcom/waze/reports/ReportForm;)V

    .line 40
    iget-object v0, p0, Lcom/waze/reports/ReportMenu2$1;->val$reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->flipView()V

    .line 41
    return-void
.end method
