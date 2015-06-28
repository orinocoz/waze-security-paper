.class Lcom/waze/navigate/DriveToNativeManager$32;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->StoreAddressItem(Lcom/waze/navigate/AddressItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$ai:Lcom/waze/navigate/AddressItem;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$32;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$32;->val$ai:Lcom/waze/navigate/AddressItem;

    .line 1005
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 4

    .prologue
    .line 1013
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "store ai callback running in thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return-void
.end method

.method public event()V
    .locals 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$32;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$32;->val$ai:Lcom/waze/navigate/AddressItem;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->storeAddressItemInt(Lcom/waze/navigate/AddressItem;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->access$28(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/AddressItem;)Ljava/lang/String;

    .line 1009
    return-void
.end method
