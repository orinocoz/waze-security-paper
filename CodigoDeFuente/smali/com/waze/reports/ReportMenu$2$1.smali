.class Lcom/waze/reports/ReportMenu$2$1;
.super Ljava/lang/Object;
.source "ReportMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportMenu$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/ReportMenu$2;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportMenu$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$2$1;->this$1:Lcom/waze/reports/ReportMenu$2;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    const-string v0, "REPORT_MENU_SHOWN"

    invoke-static {v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$2$1;->this$1:Lcom/waze/reports/ReportMenu$2;

    #getter for: Lcom/waze/reports/ReportMenu$2;->this$0:Lcom/waze/reports/ReportMenu;
    invoke-static {v0}, Lcom/waze/reports/ReportMenu$2;->access$0(Lcom/waze/reports/ReportMenu$2;)Lcom/waze/reports/ReportMenu;

    move-result-object v0

    #calls: Lcom/waze/reports/ReportMenu;->showBottomNotification()V
    invoke-static {v0}, Lcom/waze/reports/ReportMenu;->access$2(Lcom/waze/reports/ReportMenu;)V

    .line 113
    return-void
.end method
