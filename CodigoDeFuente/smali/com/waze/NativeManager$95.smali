.class Lcom/waze/NativeManager$95;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->closeThumbsUpPopup()V
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
    iput-object p1, p0, Lcom/waze/NativeManager$95;->this$0:Lcom/waze/NativeManager;

    .line 1991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1993
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 1994
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_1

    .line 1995
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 1996
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-nez v0, :cond_0

    .line 2004
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :goto_0
    return-void

    .line 1999
    .restart local v0       #layoutMgr:Lcom/waze/LayoutManager;
    :cond_0
    invoke-virtual {v0}, Lcom/waze/LayoutManager;->closeThumbsUpPopup()V

    goto :goto_0

    .line 2001
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :cond_1
    const-string v2, "WAZE"

    .line 2002
    const-string v3, "Cannot close thumbs up. Main activity is not available"

    .line 2001
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
