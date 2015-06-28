.class Lcom/waze/navigate/AddressOptionsActivity$1;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "AddressOptionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/AddressOptionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressOptionsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressOptionsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$1;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    .line 839
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 5

    .prologue
    .line 843
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$1;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsActivity;->access$0(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$1;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    iget v1, v1, Lcom/waze/navigate/AddressItem;->index:I

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$1;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$1;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->setAddressOptionsView(IIIZ)V

    .line 844
    return-void
.end method
