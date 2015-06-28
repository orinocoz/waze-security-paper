.class Lcom/waze/NativeManager$97;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->trafficBarSetHidden(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$hidden:Z


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$97;->this$0:Lcom/waze/NativeManager;

    iput-boolean p2, p0, Lcom/waze/NativeManager$97;->val$hidden:Z

    .line 2031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2033
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 2034
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_1

    .line 2035
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 2036
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-nez v0, :cond_0

    .line 2043
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :goto_0
    return-void

    .line 2039
    .restart local v0       #layoutMgr:Lcom/waze/LayoutManager;
    :cond_0
    iget-boolean v2, p0, Lcom/waze/NativeManager$97;->val$hidden:Z

    invoke-virtual {v0, v2}, Lcom/waze/LayoutManager;->trafficBarSetHidden(Z)V

    goto :goto_0

    .line 2041
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :cond_1
    const-string v2, "WAZE"

    const-string v3, "Cannot show Traffic Bar. Main activity is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
