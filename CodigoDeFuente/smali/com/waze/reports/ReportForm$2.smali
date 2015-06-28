.class Lcom/waze/reports/ReportForm$2;
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
    iput-object p1, p0, Lcom/waze/reports/ReportForm$2;->this$0:Lcom/waze/reports/ReportForm;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/waze/reports/ReportForm$2;->this$0:Lcom/waze/reports/ReportForm;

    invoke-virtual {v0}, Lcom/waze/reports/ReportForm;->stop()V

    .line 161
    iget-object v0, p0, Lcom/waze/reports/ReportForm$2;->this$0:Lcom/waze/reports/ReportForm;

    iget-object v0, v0, Lcom/waze/reports/ReportForm;->reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->close()V

    .line 162
    return-void
.end method
