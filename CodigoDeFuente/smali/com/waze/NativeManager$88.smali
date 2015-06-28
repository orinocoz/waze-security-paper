.class Lcom/waze/NativeManager$88;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->SetPopUpInterrupt()V
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
    iput-object p1, p0, Lcom/waze/NativeManager$88;->this$0:Lcom/waze/NativeManager;

    .line 1845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1847
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 1848
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_1

    .line 1849
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 1850
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-nez v0, :cond_0

    .line 1858
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :goto_0
    return-void

    .line 1853
    .restart local v0       #layoutMgr:Lcom/waze/LayoutManager;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/waze/LayoutManager;->SetPopUpInterrupt(Z)V

    goto :goto_0

    .line 1855
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :cond_1
    const-string v2, "WAZE"

    .line 1856
    const-string v3, "Cannot open swipe. Main activity is not available"

    .line 1855
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
