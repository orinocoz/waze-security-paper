.class Lcom/waze/navigate/DriveToNativeManager$20;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getWork(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ai:[Lcom/waze/navigate/AddressItem;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$callback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$20;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$20;->val$callback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

    .line 727
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$20;->ai:[Lcom/waze/navigate/AddressItem;

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 4

    .prologue
    .line 740
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFavorites callback running in thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 741
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 740
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$20;->val$callback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$20;->ai:[Lcom/waze/navigate/AddressItem;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;->getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V

    .line 743
    return-void
.end method

.method public event()V
    .locals 4

    .prologue
    .line 733
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFavorites event running in thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 733
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$20;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getWorkNTV()[Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navigate/DriveToNativeManager;->access$19(Lcom/waze/navigate/DriveToNativeManager;)[Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$20;->ai:[Lcom/waze/navigate/AddressItem;

    .line 736
    return-void
.end method
