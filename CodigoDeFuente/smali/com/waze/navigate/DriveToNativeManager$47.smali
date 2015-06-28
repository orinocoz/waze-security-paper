.class Lcom/waze/navigate/DriveToNativeManager$47;
.super Landroid/os/Handler;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->onVenuePinWaitForVenuePreview()V
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
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$47;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    .line 1310
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 1313
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    if-ne v4, v5, :cond_2

    .line 1314
    iget-object v4, p0, Lcom/waze/navigate/DriveToNativeManager$47;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    sget v5, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    invoke-virtual {v4, v5, p0}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 1316
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 1317
    .local v2, b:Landroid/os/Bundle;
    const-string v4, "address_item"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/waze/navigate/AddressItem;

    .line 1318
    .local v1, ai:Lcom/waze/navigate/AddressItem;
    if-nez v1, :cond_1

    .line 1329
    .end local v1           #ai:Lcom/waze/navigate/AddressItem;
    .end local v2           #b:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1320
    .restart local v1       #ai:Lcom/waze/navigate/AddressItem;
    .restart local v2       #b:Landroid/os/Bundle;
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 1321
    .local v0, a:Lcom/waze/MainActivity;
    if-eqz v0, :cond_0

    .line 1323
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/waze/navigate/AddressPreviewActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1324
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "AddressItem"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1325
    invoke-virtual {v0, v3}, Lcom/waze/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1328
    .end local v0           #a:Lcom/waze/MainActivity;
    .end local v1           #ai:Lcom/waze/navigate/AddressItem;
    .end local v2           #b:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
