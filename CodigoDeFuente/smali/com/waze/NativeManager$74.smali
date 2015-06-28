.class Lcom/waze/NativeManager$74;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->RefreshFriendsDriving()V
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
    iput-object p1, p0, Lcom/waze/NativeManager$74;->this$0:Lcom/waze/NativeManager;

    .line 1503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1507
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    instance-of v0, v0, Lcom/waze/NativeManager$IRefreshFriendsDrivingData;

    if-eqz v0, :cond_0

    .line 1508
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v0

    check-cast v0, Lcom/waze/NativeManager$IRefreshFriendsDrivingData;

    invoke-interface {v0}, Lcom/waze/NativeManager$IRefreshFriendsDrivingData;->onRefresh()V

    .line 1510
    :cond_0
    return-void
.end method
