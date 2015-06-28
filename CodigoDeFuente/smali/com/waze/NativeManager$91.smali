.class Lcom/waze/NativeManager$91;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->OpenAlertTicker(IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$Index:I

.field private final synthetic val$mMood:Ljava/lang/String;

.field private final synthetic val$nType:I

.field private final synthetic val$sUserImageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$91;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$91;->val$nType:I

    iput-object p3, p0, Lcom/waze/NativeManager$91;->val$mMood:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/NativeManager$91;->val$sUserImageUrl:Ljava/lang/String;

    iput p5, p0, Lcom/waze/NativeManager$91;->val$Index:I

    .line 1916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1918
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 1919
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_1

    .line 1920
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 1921
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-nez v0, :cond_0

    .line 1929
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :goto_0
    return-void

    .line 1924
    .restart local v0       #layoutMgr:Lcom/waze/LayoutManager;
    :cond_0
    iget v2, p0, Lcom/waze/NativeManager$91;->val$nType:I

    iget-object v3, p0, Lcom/waze/NativeManager$91;->val$mMood:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/NativeManager$91;->val$sUserImageUrl:Ljava/lang/String;

    iget v5, p0, Lcom/waze/NativeManager$91;->val$Index:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/waze/LayoutManager;->openAlertTicker(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1926
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :cond_1
    const-string v2, "WAZE"

    .line 1927
    const-string v3, "Cannot open ping Popup. Main activity is not available"

    .line 1926
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
