.class Lcom/waze/NativeManager$106;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->closeDetailsPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$106;->this$0:Lcom/waze/NativeManager;

    .line 2215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2218
    invoke-static {}, Lcom/waze/AppService;->getActiveMapViewWrapper()Lcom/waze/MapViewWrapper;

    move-result-object v0

    .line 2219
    .local v0, mapViewWrapper:Lcom/waze/MapViewWrapper;
    if-eqz v0, :cond_0

    .line 2220
    invoke-virtual {v0}, Lcom/waze/MapViewWrapper;->closeDetailsPopup()V

    .line 2226
    :goto_0
    return-void

    .line 2222
    :cond_0
    const-string v1, "WAZE"

    .line 2223
    const-string v2, "Cannot close DetailsPopup. Main activity is not available"

    .line 2222
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    invoke-static {p0}, Lcom/waze/MainActivity;->registerOnResumeEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
