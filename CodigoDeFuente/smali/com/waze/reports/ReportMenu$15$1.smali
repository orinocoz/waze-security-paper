.class Lcom/waze/reports/ReportMenu$15$1;
.super Ljava/lang/Object;
.source "ReportMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportMenu$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/ReportMenu$15;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportMenu$15;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$15$1;->this$1:Lcom/waze/reports/ReportMenu$15;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/ReportMenu$15$1;)Lcom/waze/reports/ReportMenu$15;
    .locals 1
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$15$1;->this$1:Lcom/waze/reports/ReportMenu$15;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 365
    new-instance v0, Lcom/waze/reports/ReportMenu$15$1$1;

    invoke-direct {v0, p0}, Lcom/waze/reports/ReportMenu$15$1$1;-><init>(Lcom/waze/reports/ReportMenu$15$1;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method
