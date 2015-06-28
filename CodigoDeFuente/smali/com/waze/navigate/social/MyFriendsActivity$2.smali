.class Lcom/waze/navigate/social/MyFriendsActivity$2;
.super Ljava/lang/Object;
.source "MyFriendsActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyFriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/MyFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$2;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity$2;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->searchBox:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v1}, Lcom/waze/navigate/social/MyFriendsActivity;->access$6(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/autocomplete/ContactsCompletionView;->enoughToFilter()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity$2;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendUserDataFilteredArrayAdapter:Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;
    invoke-static {v1}, Lcom/waze/navigate/social/MyFriendsActivity;->access$7(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity$2;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendUserDataFilteredArrayAdapter:Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;
    invoke-static {v1}, Lcom/waze/navigate/social/MyFriendsActivity;->access$7(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity$2;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendUserDataFilteredArrayAdapter:Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;
    invoke-static {v1}, Lcom/waze/navigate/social/MyFriendsActivity;->access$7(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/user/PersonBase;

    .line 142
    .local v0, p:Lcom/waze/user/PersonBase;
    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity$2;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #calls: Lcom/waze/navigate/social/MyFriendsActivity;->userSelected(Lcom/waze/user/PersonBase;)V
    invoke-static {v1, v0}, Lcom/waze/navigate/social/MyFriendsActivity;->access$5(Lcom/waze/navigate/social/MyFriendsActivity;Lcom/waze/user/PersonBase;)V

    .line 147
    .end local v0           #p:Lcom/waze/user/PersonBase;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/waze/navigate/social/MyFriendsActivity$2;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->searchBox:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v1}, Lcom/waze/navigate/social/MyFriendsActivity;->access$6(Lcom/waze/navigate/social/MyFriendsActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/waze/autocomplete/ContactsCompletionView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
