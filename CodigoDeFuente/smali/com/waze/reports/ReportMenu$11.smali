.class Lcom/waze/reports/ReportMenu$11;
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
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$11;->this$0:Lcom/waze/reports/ReportMenu;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 306
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$11;->this$0:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0, v3}, Lcom/waze/reports/ReportMenu;->hideBottomNotification(Z)V

    .line 307
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$11;->this$0:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/ReportMenu$11;->this$0:Lcom/waze/reports/ReportMenu;

    iget-object v2, p0, Lcom/waze/reports/ReportMenu$11;->this$0:Lcom/waze/reports/ReportMenu;

    #getter for: Lcom/waze/reports/ReportMenu;->layoutManager:Lcom/waze/LayoutManager;
    invoke-static {v2}, Lcom/waze/reports/ReportMenu;->access$5(Lcom/waze/reports/ReportMenu;)Lcom/waze/LayoutManager;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/waze/reports/ClosureMap;->launch(Landroid/content/Context;Lcom/waze/reports/ReportMenu;Lcom/waze/LayoutManager;Z)V

    .line 308
    return-void
.end method
