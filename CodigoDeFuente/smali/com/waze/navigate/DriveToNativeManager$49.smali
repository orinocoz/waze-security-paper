.class Lcom/waze/navigate/DriveToNativeManager$49;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getMapCenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$49;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    .line 1358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1361
    iget-object v2, p0, Lcom/waze/navigate/DriveToNativeManager$49;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getMapCenterNTV()Lcom/waze/reports/EditMapLocationFragment$Position;
    invoke-static {v2}, Lcom/waze/navigate/DriveToNativeManager;->access$43(Lcom/waze/navigate/DriveToNativeManager;)Lcom/waze/reports/EditMapLocationFragment$Position;

    move-result-object v1

    .line 1362
    .local v1, pos:Lcom/waze/reports/EditMapLocationFragment$Position;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1363
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1365
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->access$44()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    #getter for: Lcom/waze/navigate/DriveToNativeManager;->handlers:Lcom/waze/ifs/async/UpdateHandlers;
    invoke-static {v2}, Lcom/waze/navigate/DriveToNativeManager;->access$45(Lcom/waze/navigate/DriveToNativeManager;)Lcom/waze/ifs/async/UpdateHandlers;

    move-result-object v2

    sget v3, Lcom/waze/navigate/DriveToNativeManager;->UH_MAP_CENTER:I

    invoke-virtual {v2, v3, v0}, Lcom/waze/ifs/async/UpdateHandlers;->sendUpdateMessage(ILandroid/os/Bundle;)V

    .line 1366
    return-void
.end method
