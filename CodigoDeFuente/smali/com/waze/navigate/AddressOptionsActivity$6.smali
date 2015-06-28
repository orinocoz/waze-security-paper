.class Lcom/waze/navigate/AddressOptionsActivity$6;
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
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$6;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 402
    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$6;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v1}, Lcom/waze/navigate/AddressOptionsActivity;->access$0(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$6;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    iget v2, v2, Lcom/waze/navigate/AddressItem;->index:I

    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$6;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/navigate/AddressOptionsActivity$6;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->EventAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v4}, Lcom/waze/navigate/AddressOptionsActivity;->access$9(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/waze/navigate/DriveToNativeManager;->VerifyEventByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 404
    const-string v1, "VERIFY_EVENT_SAVE_EVENT_LOCATION"

    invoke-static {v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 405
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v0, resultIntent:Landroid/content/Intent;
    const-string v1, "AddressItem"

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$6;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 407
    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$6;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    const v2, 0x800e

    invoke-virtual {v1, v2, v0}, Lcom/waze/navigate/AddressOptionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 408
    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$6;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressOptionsActivity;->finish()V

    .line 409
    return-void
.end method
