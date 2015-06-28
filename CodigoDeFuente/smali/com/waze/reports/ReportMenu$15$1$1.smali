.class Lcom/waze/reports/ReportMenu$15$1$1;
.super Ljava/lang/Object;
.source "ReportMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportMenu$15$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/waze/reports/ReportMenu$15$1;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportMenu$15$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$15$1$1;->this$2:Lcom/waze/reports/ReportMenu$15$1;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 368
    const-string v1, "MAIN_MENU_CLICK"

    .line 369
    const-string v2, "VAUE"

    const-string v3, "REPORTS"

    .line 368
    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/reports/ReportMenu$15$1$1;->this$2:Lcom/waze/reports/ReportMenu$15$1;

    #getter for: Lcom/waze/reports/ReportMenu$15$1;->this$1:Lcom/waze/reports/ReportMenu$15;
    invoke-static {v1}, Lcom/waze/reports/ReportMenu$15$1;->access$0(Lcom/waze/reports/ReportMenu$15$1;)Lcom/waze/reports/ReportMenu$15;

    move-result-object v1

    #getter for: Lcom/waze/reports/ReportMenu$15;->this$0:Lcom/waze/reports/ReportMenu;
    invoke-static {v1}, Lcom/waze/reports/ReportMenu$15;->access$0(Lcom/waze/reports/ReportMenu$15;)Lcom/waze/reports/ReportMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/reports/ReportMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/waze/rtalerts/RTAlertsMenu;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 373
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 374
    const v2, 0x8005

    .line 373
    invoke-virtual {v1, v0, v2}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 376
    :cond_0
    return-void
.end method
