.class Lcom/waze/navigate/AddressOptionsActivity$5;
.super Ljava/lang/Object;
.source "AddressOptionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressOptionsActivity;->refreshView()V
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
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$5;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AddressOptionsActivity$5;)Lcom/waze/navigate/AddressOptionsActivity;
    .locals 1
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$5;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 360
    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$5;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v1}, Lcom/waze/navigate/AddressOptionsActivity;->access$0(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$5;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    iget v2, v2, Lcom/waze/navigate/AddressItem;->index:I

    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$5;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/navigate/AddressOptionsActivity$5;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->EventAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v4}, Lcom/waze/navigate/AddressOptionsActivity;->access$9(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/waze/navigate/DriveToNativeManager;->VerifyEventByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 362
    const-string v1, "VERIFY_EVENT_SAVE_POST"

    invoke-static {v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 364
    new-instance v0, Lcom/waze/navigate/AddressOptionsActivity$5$1;

    invoke-direct {v0, p0}, Lcom/waze/navigate/AddressOptionsActivity$5$1;-><init>(Lcom/waze/navigate/AddressOptionsActivity$5;)V

    .line 395
    .local v0, autocompleted:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;
    return-void
.end method
