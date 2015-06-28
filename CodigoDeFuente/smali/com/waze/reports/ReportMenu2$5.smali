.class Lcom/waze/reports/ReportMenu2$5;
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
    iput-object p1, p0, Lcom/waze/reports/ReportMenu2$5;->this$0:Lcom/waze/reports/ReportMenu2;

    iput-object p2, p0, Lcom/waze/reports/ReportMenu2$5;->val$reportMenu:Lcom/waze/reports/ReportMenu;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/waze/reports/ReportMenu2$5;->val$reportMenu:Lcom/waze/reports/ReportMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/waze/reports/ReportMenu;->hideBottomNotification(Z)V

    .line 89
    invoke-static {}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getInstance()Lcom/waze/rtalerts/RTAlertsNativeManager;

    move-result-object v0

    .line 90
    .local v0, nativeManager:Lcom/waze/rtalerts/RTAlertsNativeManager;
    invoke-virtual {v0}, Lcom/waze/rtalerts/RTAlertsNativeManager;->reportBadRoute()V

    .line 91
    iget-object v1, p0, Lcom/waze/reports/ReportMenu2$5;->val$reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v1}, Lcom/waze/reports/ReportMenu;->dismiss()V

    .line 92
    return-void
.end method
