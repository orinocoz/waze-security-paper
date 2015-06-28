.class Lcom/waze/ifs/ui/ActivityLifetimeHandler$1;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "ActivityLifetimeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/ActivityLifetimeHandler;->startHandler(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "$anonymous0"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/waze/ifs/async/RunnableExecutor;-><init>(Landroid/app/Activity;)V

    .line 1
    return-void
.end method


# virtual methods
.method public event()V
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 36
    .local v0, nm:Lcom/waze/NativeManager;
    invoke-virtual {v0}, Lcom/waze/NativeManager;->SaveSystemSettings()V

    .line 37
    invoke-virtual {v0}, Lcom/waze/NativeManager;->RestoreAppSettings()V

    .line 38
    invoke-virtual {v0}, Lcom/waze/NativeManager;->onAppForeground()V

    .line 39
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->IsShutdownActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {}, Lcom/waze/ifs/ui/ActivityLifetimeHandler;->StartWaze()V

    .line 42
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->SetShutDownActive(Z)V

    .line 44
    :cond_0
    return-void
.end method
