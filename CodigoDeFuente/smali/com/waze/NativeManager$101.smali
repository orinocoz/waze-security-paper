.class Lcom/waze/NativeManager$101;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->showEtaUpdatePopUp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$body:Ljava/lang/String;

.field private final synthetic val$header:Ljava/lang/String;

.field private final synthetic val$style:I

.field private final synthetic val$timeout:I

.field private final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$101;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$101;->val$style:I

    iput-object p3, p0, Lcom/waze/NativeManager$101;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/NativeManager$101;->val$header:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/NativeManager$101;->val$body:Ljava/lang/String;

    iput p6, p0, Lcom/waze/NativeManager$101;->val$timeout:I

    .line 2100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2102
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v6

    .line 2103
    .local v6, mainActivity:Lcom/waze/MainActivity;
    if-eqz v6, :cond_1

    .line 2104
    invoke-virtual {v6}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 2105
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-nez v0, :cond_0

    .line 2113
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :goto_0
    return-void

    .line 2108
    .restart local v0       #layoutMgr:Lcom/waze/LayoutManager;
    :cond_0
    iget v1, p0, Lcom/waze/NativeManager$101;->val$style:I

    iget-object v2, p0, Lcom/waze/NativeManager$101;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/NativeManager$101;->val$header:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/NativeManager$101;->val$body:Ljava/lang/String;

    iget v5, p0, Lcom/waze/NativeManager$101;->val$timeout:I

    invoke-virtual/range {v0 .. v5}, Lcom/waze/LayoutManager;->showEtaUpdatePopUp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 2110
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :cond_1
    const-string v1, "WAZE"

    .line 2111
    const-string v2, "Cannot open EtaUpdate Popup. Main activity is not available"

    .line 2110
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
