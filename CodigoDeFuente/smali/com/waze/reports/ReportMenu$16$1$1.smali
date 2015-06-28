.class Lcom/waze/reports/ReportMenu$16$1$1;
.super Ljava/lang/Object;
.source "ReportMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportMenu$16$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/waze/reports/ReportMenu$16$1;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportMenu$16$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$16$1$1;->this$2:Lcom/waze/reports/ReportMenu$16$1;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 392
    const-string v1, "MAIN_MENU_CLICK"

    .line 393
    const-string v2, "VAUE"

    const-string v3, "REPORTS"

    .line 392
    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/reports/ReportMenu$16$1$1;->this$2:Lcom/waze/reports/ReportMenu$16$1;

    #getter for: Lcom/waze/reports/ReportMenu$16$1;->this$1:Lcom/waze/reports/ReportMenu$16;
    invoke-static {v1}, Lcom/waze/reports/ReportMenu$16$1;->access$0(Lcom/waze/reports/ReportMenu$16$1;)Lcom/waze/reports/ReportMenu$16;

    move-result-object v1

    #getter for: Lcom/waze/reports/ReportMenu$16;->this$0:Lcom/waze/reports/ReportMenu;
    invoke-static {v1}, Lcom/waze/reports/ReportMenu$16;->access$0(Lcom/waze/reports/ReportMenu$16;)Lcom/waze/reports/ReportMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/reports/ReportMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/waze/rtalerts/RTAlertsMenu;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 397
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 398
    const v2, 0x8005

    .line 397
    invoke-virtual {v1, v0, v2}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 400
    :cond_0
    return-void
.end method
