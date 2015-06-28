.class Lcom/waze/reports/ReportMenu$19$1;
.super Ljava/lang/Object;
.source "ReportMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportMenu$19;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/ReportMenu$19;

.field private final synthetic val$viewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportMenu$19;Landroid/widget/ViewFlipper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$19$1;->this$1:Lcom/waze/reports/ReportMenu$19;

    iput-object p2, p0, Lcom/waze/reports/ReportMenu$19$1;->val$viewFlipper:Landroid/widget/ViewFlipper;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$19$1;->val$viewFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/waze/reports/ReportMenu$19$1;->this$1:Lcom/waze/reports/ReportMenu$19;

    #getter for: Lcom/waze/reports/ReportMenu$19;->this$0:Lcom/waze/reports/ReportMenu;
    invoke-static {v1}, Lcom/waze/reports/ReportMenu$19;->access$0(Lcom/waze/reports/ReportMenu$19;)Lcom/waze/reports/ReportMenu;

    move-result-object v1

    #getter for: Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;
    invoke-static {v1}, Lcom/waze/reports/ReportMenu;->access$7(Lcom/waze/reports/ReportMenu;)Lcom/waze/reports/ReportForm;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    .line 452
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$19$1;->this$1:Lcom/waze/reports/ReportMenu$19;

    #getter for: Lcom/waze/reports/ReportMenu$19;->this$0:Lcom/waze/reports/ReportMenu;
    invoke-static {v0}, Lcom/waze/reports/ReportMenu$19;->access$0(Lcom/waze/reports/ReportMenu$19;)Lcom/waze/reports/ReportMenu;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;
    invoke-static {v0, v1}, Lcom/waze/reports/ReportMenu;->access$8(Lcom/waze/reports/ReportMenu;Lcom/waze/reports/ReportForm;)V

    .line 453
    return-void
.end method
