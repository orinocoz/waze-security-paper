.class Lcom/waze/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/MainActivity;->OpenAddressPreview(Lcom/waze/navigate/AddressItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/MainActivity;

.field private final synthetic val$defaultItem:Lcom/waze/navigate/AddressItem;


# direct methods
.method constructor <init>(Lcom/waze/MainActivity;Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/MainActivity$1;->this$0:Lcom/waze/MainActivity;

    iput-object p2, p0, Lcom/waze/MainActivity$1;->val$defaultItem:Lcom/waze/navigate/AddressItem;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 229
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v3, p0, Lcom/waze/MainActivity$1;->this$0:Lcom/waze/MainActivity;

    #getter for: Lcom/waze/MainActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;
    invoke-static {v3}, Lcom/waze/MainActivity;->access$2(Lcom/waze/MainActivity;)Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 230
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 231
    iget-object v1, p0, Lcom/waze/MainActivity$1;->this$0:Lcom/waze/MainActivity;

    const/4 v2, 0x0

    #setter for: Lcom/waze/MainActivity;->mLastAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1, v2}, Lcom/waze/MainActivity;->access$3(Lcom/waze/MainActivity;Lcom/waze/navigate/AddressItem;)V

    .line 232
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/MainActivity$1;->this$0:Lcom/waze/MainActivity;

    const-class v2, Lcom/waze/navigate/AddressPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AddressItem"

    iget-object v2, p0, Lcom/waze/MainActivity$1;->val$defaultItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/waze/MainActivity$1;->this$0:Lcom/waze/MainActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 235
    return-void
.end method
