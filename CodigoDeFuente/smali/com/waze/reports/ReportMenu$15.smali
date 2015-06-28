.class Lcom/waze/reports/ReportMenu$15;
.super Ljava/lang/Object;
.source "ReportMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportMenu;->initLayout()V
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
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$15;->this$0:Lcom/waze/reports/ReportMenu;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/ReportMenu$15;)Lcom/waze/reports/ReportMenu;
    .locals 1
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Lcom/waze/reports/ReportMenu$15;->this$0:Lcom/waze/reports/ReportMenu;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 362
    new-instance v0, Lcom/waze/reports/ReportMenu$15$1;

    invoke-direct {v0, p0}, Lcom/waze/reports/ReportMenu$15$1;-><init>(Lcom/waze/reports/ReportMenu$15;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 380
    return-void
.end method
