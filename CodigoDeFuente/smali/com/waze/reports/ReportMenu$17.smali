.class Lcom/waze/reports/ReportMenu$17;
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
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$17;->this$0:Lcom/waze/reports/ReportMenu;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$17;->this$0:Lcom/waze/reports/ReportMenu;

    iget-boolean v0, v0, Lcom/waze/reports/ReportMenu;->inMenu:Z

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$17;->this$0:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->close()V

    .line 415
    :cond_0
    return-void
.end method
