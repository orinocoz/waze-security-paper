.class Lcom/waze/reports/ReportMenu$19;
.super Ljava/lang/Object;
.source "ReportMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportMenu;->removeReportForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/ReportMenu;

.field private final synthetic val$viewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportMenu;Landroid/widget/ViewFlipper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$19;->this$0:Lcom/waze/reports/ReportMenu;

    iput-object p2, p0, Lcom/waze/reports/ReportMenu$19;->val$viewFlipper:Landroid/widget/ViewFlipper;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/ReportMenu$19;)Lcom/waze/reports/ReportMenu;
    .locals 1
    .parameter

    .prologue
    .line 443
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$19;->this$0:Lcom/waze/reports/ReportMenu;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$19;->val$viewFlipper:Landroid/widget/ViewFlipper;

    new-instance v1, Lcom/waze/reports/ReportMenu$19$1;

    iget-object v2, p0, Lcom/waze/reports/ReportMenu$19;->val$viewFlipper:Landroid/widget/ViewFlipper;

    invoke-direct {v1, p0, v2}, Lcom/waze/reports/ReportMenu$19$1;-><init>(Lcom/waze/reports/ReportMenu$19;Landroid/widget/ViewFlipper;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->post(Ljava/lang/Runnable;)Z

    .line 455
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 456
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 446
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 444
    return-void
.end method
