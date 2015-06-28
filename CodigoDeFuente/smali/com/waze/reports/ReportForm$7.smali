.class Lcom/waze/reports/ReportForm$7;
.super Ljava/lang/Object;
.source "ReportForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportForm;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/ReportForm;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportForm;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportForm$7;->this$0:Lcom/waze/reports/ReportForm;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/waze/reports/ReportForm$7;->this$0:Lcom/waze/reports/ReportForm;

    invoke-virtual {v0}, Lcom/waze/reports/ReportForm;->stop()V

    .line 264
    iget-object v0, p0, Lcom/waze/reports/ReportForm$7;->this$0:Lcom/waze/reports/ReportForm;

    iget-boolean v0, v0, Lcom/waze/reports/ReportForm;->myLane:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/waze/reports/ReportForm$7;->this$0:Lcom/waze/reports/ReportForm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/waze/reports/ReportForm;->myLane:Z

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/waze/reports/ReportForm$7;->this$0:Lcom/waze/reports/ReportForm;

    #calls: Lcom/waze/reports/ReportForm;->setMyLane()V
    invoke-static {v0}, Lcom/waze/reports/ReportForm;->access$0(Lcom/waze/reports/ReportForm;)V

    .line 270
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/ReportForm$7;->this$0:Lcom/waze/reports/ReportForm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/waze/reports/ReportForm;->myLane:Z

    goto :goto_0
.end method
