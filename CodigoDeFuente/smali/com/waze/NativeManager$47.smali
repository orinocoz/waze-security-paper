.class Lcom/waze/NativeManager$47;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->RefreshFriendsBar(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;

.field private final synthetic val$nFriendsOnline:I

.field private final synthetic val$nPendingFriends:I


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$47;->this$0:Lcom/waze/NativeManager;

    iput p2, p0, Lcom/waze/NativeManager$47;->val$nFriendsOnline:I

    iput p3, p0, Lcom/waze/NativeManager$47;->val$nPendingFriends:I

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 812
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v1

    .line 813
    .local v1, mainActivity:Lcom/waze/MainActivity;
    if-eqz v1, :cond_1

    .line 814
    invoke-virtual {v1}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    .line 815
    .local v0, layoutMgr:Lcom/waze/LayoutManager;
    if-nez v0, :cond_0

    .line 823
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :goto_0
    return-void

    .line 818
    .restart local v0       #layoutMgr:Lcom/waze/LayoutManager;
    :cond_0
    iget v2, p0, Lcom/waze/NativeManager$47;->val$nFriendsOnline:I

    iget v3, p0, Lcom/waze/NativeManager$47;->val$nPendingFriends:I

    invoke-virtual {v0, v2, v3}, Lcom/waze/LayoutManager;->RefreshBar(II)V

    goto :goto_0

    .line 820
    .end local v0           #layoutMgr:Lcom/waze/LayoutManager;
    :cond_1
    const-string v2, "WAZE"

    .line 821
    const-string v3, "Cannot open ping Popup. Main activity is not available"

    .line 820
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
