.class Lcom/waze/reports/ReportMenu$1;
.super Ljava/lang/Object;
.source "ReportMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportMenu;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;ZZZ)V
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
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$1;->this$0:Lcom/waze/reports/ReportMenu;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/ReportMenu$1;)Lcom/waze/reports/ReportMenu;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$1;->this$0:Lcom/waze/reports/ReportMenu;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$1;->this$0:Lcom/waze/reports/ReportMenu;

    #getter for: Lcom/waze/reports/ReportMenu;->mainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/waze/reports/ReportMenu;->access$1(Lcom/waze/reports/ReportMenu;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/waze/reports/ReportMenu$1$1;

    invoke-direct {v1, p0}, Lcom/waze/reports/ReportMenu$1$1;-><init>(Lcom/waze/reports/ReportMenu$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 94
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 96
    return-void
.end method
