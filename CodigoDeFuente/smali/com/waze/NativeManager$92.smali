.class Lcom/waze/NativeManager$92;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->openCommentPopup(Lcom/waze/rtalerts/RTAlertsCommentData;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$UserUrlImage:Ljava/lang/String;

.field private final synthetic val$commentData:Lcom/waze/rtalerts/RTAlertsCommentData;

.field private final synthetic val$nTimeOut:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Lcom/waze/rtalerts/RTAlertsCommentData;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$92;->this$0:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/NativeManager$92;->val$commentData:Lcom/waze/rtalerts/RTAlertsCommentData;

    iput-object p3, p0, Lcom/waze/NativeManager$92;->val$UserUrlImage:Ljava/lang/String;

    iput p4, p0, Lcom/waze/NativeManager$92;->val$nTimeOut:I

    .line 1935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1937
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 1938
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_1

    .line 1939
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 1940
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-nez v0, :cond_0

    .line 1948
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :goto_0
    return-void

    .line 1943
    .restart local v0       #layoutMgr:Lcom/waze/LayoutManager;
    :cond_0
    iget-object v2, p0, Lcom/waze/NativeManager$92;->val$commentData:Lcom/waze/rtalerts/RTAlertsCommentData;

    iget-object v3, p0, Lcom/waze/NativeManager$92;->val$UserUrlImage:Ljava/lang/String;

    iget v4, p0, Lcom/waze/NativeManager$92;->val$nTimeOut:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/waze/LayoutManager;->openCommentPopup(Lcom/waze/rtalerts/RTAlertsCommentData;Ljava/lang/String;I)V

    goto :goto_0

    .line 1945
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :cond_1
    const-string v2, "WAZE"

    .line 1946
    const-string v3, "Cannot open ping Popup. Main activity is not available"

    .line 1945
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
