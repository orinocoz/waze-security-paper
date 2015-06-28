.class Lcom/waze/reports/ClosureMap$6;
.super Ljava/lang/Object;
.source "ClosureMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ClosureMap;->setUpActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/ClosureMap;


# direct methods
.method constructor <init>(Lcom/waze/reports/ClosureMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ClosureMap$6;->this$0:Lcom/waze/reports/ClosureMap;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/waze/reports/ClosureMap$6;->this$0:Lcom/waze/reports/ClosureMap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/reports/ClosureMap;->setResult(I)V

    .line 126
    iget-object v0, p0, Lcom/waze/reports/ClosureMap$6;->this$0:Lcom/waze/reports/ClosureMap;

    invoke-virtual {v0}, Lcom/waze/reports/ClosureMap;->finish()V

    .line 127
    iget-object v0, p0, Lcom/waze/reports/ClosureMap$6;->this$0:Lcom/waze/reports/ClosureMap;

    invoke-virtual {v0}, Lcom/waze/reports/ClosureMap;->stop()V

    .line 128
    invoke-static {}, Lcom/waze/reports/ClosureMap;->access$4()Lcom/waze/reports/ReportMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/reports/ReportMenu;->setDelayedReport()V

    .line 129
    return-void
.end method
