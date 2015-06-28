.class Lcom/waze/navigate/DriveToNativeManager$22;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "DriveToNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->getFriendsSharedPlaces(ILcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ai:[Lcom/waze/navigate/AddressItem;

.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$callback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

.field private final synthetic val$friendId:I


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;ILcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$22;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput p2, p0, Lcom/waze/navigate/DriveToNativeManager$22;->val$friendId:I

    iput-object p3, p0, Lcom/waze/navigate/DriveToNativeManager$22;->val$callback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

    .line 775
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    .line 776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$22;->ai:[Lcom/waze/navigate/AddressItem;

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 4

    .prologue
    .line 787
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFriendsSharedPlaces callback running in thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 788
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 787
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$22;->val$callback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$22;->ai:[Lcom/waze/navigate/AddressItem;

    invoke-interface {v0, v1}, Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;->getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V

    .line 790
    return-void
.end method

.method public event()V
    .locals 4

    .prologue
    .line 780
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getFriendsSharedPlaces event running in thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 781
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 780
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$22;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$22;->val$friendId:I

    #calls: Lcom/waze/navigate/DriveToNativeManager;->getFriendsSharedPlacesNTV(I)[Lcom/waze/navigate/AddressItem;
    invoke-static {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->access$21(Lcom/waze/navigate/DriveToNativeManager;I)[Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$22;->ai:[Lcom/waze/navigate/AddressItem;

    .line 783
    return-void
.end method
