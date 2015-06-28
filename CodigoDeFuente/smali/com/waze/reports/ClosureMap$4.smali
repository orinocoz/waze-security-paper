.class Lcom/waze/reports/ClosureMap$4;
.super Ljava/lang/Object;
.source "ClosureMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ClosureMap;->setUpActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/ClosureMap;


# direct methods
.method constructor <init>(Lcom/waze/reports/ClosureMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ClosureMap$4;->this$0:Lcom/waze/reports/ClosureMap;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-static {}, Lcom/waze/reports/ClosureMap;->access$6()Lcom/waze/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->setClosureRunning(Z)V

    .line 103
    invoke-static {v1}, Lcom/waze/reports/ReportForm;->SetIsLaneActive(Z)V

    .line 104
    invoke-static {}, Lcom/waze/reports/ClosureMap;->access$4()Lcom/waze/reports/ReportMenu;

    move-result-object v0

    new-instance v1, Lcom/waze/reports/RoadClosureReport;

    invoke-static {}, Lcom/waze/reports/ClosureMap;->access$4()Lcom/waze/reports/ReportMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/reports/ReportMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/waze/reports/ClosureMap;->access$4()Lcom/waze/reports/ReportMenu;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/waze/reports/RoadClosureReport;-><init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;)V

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportMenu;->setReportForm(Lcom/waze/reports/ReportForm;)V

    .line 105
    invoke-static {}, Lcom/waze/reports/ClosureMap;->access$4()Lcom/waze/reports/ReportMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->flipView()V

    .line 106
    invoke-static {}, Lcom/waze/reports/ClosureMap;->access$6()Lcom/waze/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->openDelayedReportAfterClosure()V

    .line 107
    iget-object v0, p0, Lcom/waze/reports/ClosureMap$4;->this$0:Lcom/waze/reports/ClosureMap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/reports/ClosureMap;->setResult(I)V

    .line 108
    iget-object v0, p0, Lcom/waze/reports/ClosureMap$4;->this$0:Lcom/waze/reports/ClosureMap;

    invoke-virtual {v0}, Lcom/waze/reports/ClosureMap;->finish()V

    .line 109
    return-void
.end method
