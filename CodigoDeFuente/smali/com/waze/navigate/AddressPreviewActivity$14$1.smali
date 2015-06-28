.class Lcom/waze/navigate/AddressPreviewActivity$14$1;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddressPreviewActivity$14;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity$14;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$14$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$14;

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizeCompleted(ZI)V
    .locals 5
    .parameter "result"
    .parameter "state"

    .prologue
    .line 822
    if-eqz p1, :cond_0

    .line 824
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$14$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$14;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$14;->access$0(Lcom/waze/navigate/AddressPreviewActivity$14;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    const-class v2, Lcom/waze/share/FacebookEventPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 825
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "message"

    .line 826
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$14$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$14;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity$14;->access$0(Lcom/waze/navigate/AddressPreviewActivity$14;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_POST_EVENT_WALL_TEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 825
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    const-string v1, "link"

    .line 828
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$14$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$14;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity$14;->access$0(Lcom/waze/navigate/AddressPreviewActivity$14;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$14$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$14;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity$14;->access$0(Lcom/waze/navigate/AddressPreviewActivity$14;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v3

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity$14$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$14;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v4}, Lcom/waze/navigate/AddressPreviewActivity$14;->access$0(Lcom/waze/navigate/AddressPreviewActivity$14;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v4

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v4}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/waze/NativeManager;->getNavLink(II)Ljava/lang/String;

    move-result-object v2

    .line 827
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    const-string v1, "Id"

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$14$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$14;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity$14;->access$0(Lcom/waze/navigate/AddressPreviewActivity$14;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mEventAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$21(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$14$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$14;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$14;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$14;->access$0(Lcom/waze/navigate/AddressPreviewActivity$14;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    const/16 v2, 0x14d

    invoke-virtual {v1, v0, v2}, Lcom/waze/navigate/AddressPreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 832
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
