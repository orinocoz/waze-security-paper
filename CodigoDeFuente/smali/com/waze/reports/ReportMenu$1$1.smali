.class Lcom/waze/reports/ReportMenu$1$1;
.super Ljava/lang/Object;
.source "ReportMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportMenu$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/ReportMenu$1;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportMenu$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$1$1;->this$1:Lcom/waze/reports/ReportMenu$1;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$1$1;->this$1:Lcom/waze/reports/ReportMenu$1;

    #getter for: Lcom/waze/reports/ReportMenu$1;->this$0:Lcom/waze/reports/ReportMenu;
    invoke-static {v0}, Lcom/waze/reports/ReportMenu$1;->access$0(Lcom/waze/reports/ReportMenu$1;)Lcom/waze/reports/ReportMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportMenu;->hideBottomNotification(Z)V

    .line 89
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$1$1;->this$1:Lcom/waze/reports/ReportMenu$1;

    #getter for: Lcom/waze/reports/ReportMenu$1;->this$0:Lcom/waze/reports/ReportMenu;
    invoke-static {v0}, Lcom/waze/reports/ReportMenu$1;->access$0(Lcom/waze/reports/ReportMenu$1;)Lcom/waze/reports/ReportMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->dismiss()V

    .line 90
    return-void
.end method
