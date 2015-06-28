.class Lcom/waze/navigate/social/EditFriendsActivity$2;
.super Ljava/lang/Object;
.source "EditFriendsActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/EditFriendsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/EditFriendsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/EditFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/EditFriendsActivity$2;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 95
    iget-object v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$2;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v4}, Lcom/waze/navigate/social/EditFriendsActivity;->access$3(Lcom/waze/navigate/social/EditFriendsActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/autocomplete/ContactsCompletionView;->enoughToFilter()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$2;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;
    invoke-static {v4}, Lcom/waze/navigate/social/EditFriendsActivity;->access$4(Lcom/waze/navigate/social/EditFriendsActivity;)Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 96
    iget-object v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$2;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;
    invoke-static {v4}, Lcom/waze/navigate/social/EditFriendsActivity;->access$4(Lcom/waze/navigate/social/EditFriendsActivity;)Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 97
    iget-object v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$2;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity;->mPersonFilteredArrayAdapter:Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;
    invoke-static {v4}, Lcom/waze/navigate/social/EditFriendsActivity;->access$4(Lcom/waze/navigate/social/EditFriendsActivity;)Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/user/PersonBase;

    .line 98
    .local v1, p:Lcom/waze/user/PersonBase;
    iget-object v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$2;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/waze/navigate/social/EditFriendsActivity;->access$2(Lcom/waze/navigate/social/EditFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 99
    .local v2, position:I
    iget-object v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$2;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity;->mNumCurrent:I
    invoke-static {v4}, Lcom/waze/navigate/social/EditFriendsActivity;->access$5(Lcom/waze/navigate/social/EditFriendsActivity;)I

    move-result v4

    if-lt v2, v4, :cond_0

    move v0, v3

    .line 100
    .local v0, bAddBackList:Z
    :cond_0
    if-eqz v0, :cond_3

    .line 101
    iget-object v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$2;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    #calls: Lcom/waze/navigate/social/EditFriendsActivity;->addFriend(Lcom/waze/user/PersonBase;)V
    invoke-static {v4, v1}, Lcom/waze/navigate/social/EditFriendsActivity;->access$0(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/user/PersonBase;)V

    .line 106
    .end local v0           #bAddBackList:Z
    .end local v1           #p:Lcom/waze/user/PersonBase;
    .end local v2           #position:I
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$2;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity;->mCompletionView:Lcom/waze/autocomplete/ContactsCompletionView;
    invoke-static {v4}, Lcom/waze/navigate/social/EditFriendsActivity;->access$3(Lcom/waze/navigate/social/EditFriendsActivity;)Lcom/waze/autocomplete/ContactsCompletionView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/waze/autocomplete/ContactsCompletionView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_2
    return v3

    .line 103
    .restart local v0       #bAddBackList:Z
    .restart local v1       #p:Lcom/waze/user/PersonBase;
    .restart local v2       #position:I
    :cond_3
    iget-object v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$2;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    #calls: Lcom/waze/navigate/social/EditFriendsActivity;->removeFriend(Lcom/waze/user/PersonBase;)V
    invoke-static {v4, v1}, Lcom/waze/navigate/social/EditFriendsActivity;->access$1(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/user/PersonBase;)V

    goto :goto_0
.end method
