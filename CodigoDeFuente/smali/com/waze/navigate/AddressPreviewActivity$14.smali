.class Lcom/waze/navigate/AddressPreviewActivity$14;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AddressPreviewActivity$14;)Lcom/waze/navigate/AddressPreviewActivity;
    .locals 1
    .parameter

    .prologue
    .line 808
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 812
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    iget v3, v3, Lcom/waze/navigate/AddressItem;->index:I

    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v4}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v4

    .line 813
    iget-object v5, p0, Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mEventAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v5}, Lcom/waze/navigate/AddressPreviewActivity;->access$21(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 812
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/waze/navigate/DriveToNativeManager;->VerifyEventByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 815
    const-string v2, "VERIFY_EVENT_SAVE_POST"

    invoke-static {v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 817
    new-instance v0, Lcom/waze/navigate/AddressPreviewActivity$14$1;

    invoke-direct {v0, p0}, Lcom/waze/navigate/AddressPreviewActivity$14$1;-><init>(Lcom/waze/navigate/AddressPreviewActivity$14;)V

    .line 835
    .local v0, autocompleted:Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->IsPublishStreamFbPermissionsNTV()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const-class v3, Lcom/waze/share/FacebookEventPostActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 838
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "message"

    .line 839
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_POST_EVENT_WALL_TEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 838
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    const-string v2, "link"

    .line 841
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v4}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v5}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/waze/NativeManager;->getNavLink(II)Ljava/lang/String;

    move-result-object v3

    .line 840
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    const-string v2, "Id"

    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mEventAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$21(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const/16 v3, 0x14d

    invoke-virtual {v2, v1, v3}, Lcom/waze/navigate/AddressPreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 848
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 845
    :cond_0
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    invoke-virtual {v2, v3, v0}, Lcom/waze/social/facebook/FacebookWrapper;->authorize_publish_stream(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;)V

    goto :goto_0
.end method
