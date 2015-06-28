.class Lcom/waze/reports/ReportMenu$21;
.super Ljava/lang/Object;
.source "ReportMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportMenu;->flipView()V
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
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$21;->this$0:Lcom/waze/reports/ReportMenu;

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$21;->this$0:Lcom/waze/reports/ReportMenu;

    #getter for: Lcom/waze/reports/ReportMenu;->reportForm:Lcom/waze/reports/ReportForm;
    invoke-static {v0}, Lcom/waze/reports/ReportMenu;->access$7(Lcom/waze/reports/ReportMenu;)Lcom/waze/reports/ReportForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/reports/ReportForm;->start()V

    .line 621
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 617
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 615
    return-void
.end method
