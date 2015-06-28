.class Lcom/waze/reports/ClosureMap$3;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "ClosureMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ClosureMap;->launch(Landroid/content/Context;Lcom/waze/reports/ReportMenu;Lcom/waze/LayoutManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private hasClosureData:Z

.field private final synthetic val$bIsServerRequest:Z

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$layoutManager:Lcom/waze/LayoutManager;

.field private final synthetic val$reportMenu:Lcom/waze/reports/ReportMenu;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportMenu;Lcom/waze/LayoutManager;ZLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ClosureMap$3;->val$reportMenu:Lcom/waze/reports/ReportMenu;

    iput-object p2, p0, Lcom/waze/reports/ClosureMap$3;->val$layoutManager:Lcom/waze/LayoutManager;

    iput-boolean p3, p0, Lcom/waze/reports/ClosureMap$3;->val$bIsServerRequest:Z

    iput-object p4, p0, Lcom/waze/reports/ClosureMap$3;->val$context:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 3

    .prologue
    .line 54
    iget-boolean v1, p0, Lcom/waze/reports/ClosureMap$3;->hasClosureData:Z

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/waze/reports/ClosureMap$3;->val$reportMenu:Lcom/waze/reports/ReportMenu;

    invoke-static {v1}, Lcom/waze/reports/ClosureMap;->access$5(Lcom/waze/reports/ReportMenu;)V

    .line 56
    iget-object v1, p0, Lcom/waze/reports/ClosureMap$3;->val$layoutManager:Lcom/waze/LayoutManager;

    invoke-static {v1}, Lcom/waze/reports/ClosureMap;->access$7(Lcom/waze/LayoutManager;)V

    .line 57
    iget-boolean v1, p0, Lcom/waze/reports/ClosureMap$3;->val$bIsServerRequest:Z

    invoke-static {v1}, Lcom/waze/reports/ClosureMap;->access$8(Z)V

    .line 58
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/reports/ClosureMap$3;->val$context:Landroid/content/Context;

    const-class v2, Lcom/waze/reports/ClosureMap;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 61
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public event()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->HasClosureDataNTV()Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/reports/ClosureMap$3;->hasClosureData:Z

    .line 50
    return-void
.end method
