.class Lcom/waze/reports/MapIssueReport$4;
.super Ljava/lang/Object;
.source "MapIssueReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/MapIssueReport;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/MapIssueReport;


# direct methods
.method constructor <init>(Lcom/waze/reports/MapIssueReport;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/MapIssueReport$4;->this$0:Lcom/waze/reports/MapIssueReport;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/waze/reports/MapIssueReport$4;->this$0:Lcom/waze/reports/MapIssueReport;

    #calls: Lcom/waze/reports/MapIssueReport;->onSend()V
    invoke-static {v0}, Lcom/waze/reports/MapIssueReport;->access$5(Lcom/waze/reports/MapIssueReport;)V

    .line 126
    return-void
.end method
