.class Lcom/waze/reports/ReportForm$1;
.super Ljava/lang/Object;
.source "ReportForm.java"

# interfaces
.implements Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;


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
    iput-object p1, p0, Lcom/waze/reports/ReportForm$1;->this$0:Lcom/waze/reports/ReportForm;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/waze/reports/ReportForm$1;->this$0:Lcom/waze/reports/ReportForm;

    invoke-virtual {v0}, Lcom/waze/reports/ReportForm;->stop()V

    .line 153
    return-void
.end method
