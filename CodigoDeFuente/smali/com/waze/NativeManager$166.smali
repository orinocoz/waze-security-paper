.class Lcom/waze/NativeManager$166;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->ResizeWebView(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$rect:Lcom/waze/LayoutManager$WazeRect;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/LayoutManager$WazeRect;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$166;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$166;->val$rect:Lcom/waze/LayoutManager$WazeRect;

    .line 4211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4213
    iget-object v1, p0, Lcom/waze/NativeManager$166;->this$0:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 4214
    .local v0, mgr:Lcom/waze/LayoutManager;
    if-eqz v0, :cond_0

    .line 4215
    iget-object v1, p0, Lcom/waze/NativeManager$166;->val$rect:Lcom/waze/LayoutManager$WazeRect;

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->ResizeWebView(Lcom/waze/LayoutManager$WazeRect;)V

    .line 4216
    :cond_0
    return-void
.end method
