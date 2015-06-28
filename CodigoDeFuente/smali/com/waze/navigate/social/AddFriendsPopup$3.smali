.class Lcom/waze/navigate/social/AddFriendsPopup$3;
.super Ljava/lang/Object;
.source "AddFriendsPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFriendsPopup;->AddFriendInLayout(Lcom/waze/user/FriendUserData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/AddFriendsPopup;

.field private final synthetic val$friend:Lcom/waze/user/FriendUserData;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFriendsPopup;Lcom/waze/user/FriendUserData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFriendsPopup$3;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    iput-object p2, p0, Lcom/waze/navigate/social/AddFriendsPopup$3;->val$friend:Lcom/waze/user/FriendUserData;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const v1, 0x7f09008f

    .line 128
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 131
    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup$3;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #getter for: Lcom/waze/navigate/social/AddFriendsPopup;->mFriendsToAdd:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/waze/navigate/social/AddFriendsPopup;->access$5(Lcom/waze/navigate/social/AddFriendsPopup;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsPopup$3;->val$friend:Lcom/waze/user/FriendUserData;

    invoke-virtual {v1}, Lcom/waze/user/FriendUserData;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/social/AddFriendsPopup$3;->val$friend:Lcom/waze/user/FriendUserData;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup$3;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #getter for: Lcom/waze/navigate/social/AddFriendsPopup;->signButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/waze/navigate/social/AddFriendsPopup;->access$6(Lcom/waze/navigate/social/AddFriendsPopup;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup$3;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #getter for: Lcom/waze/navigate/social/AddFriendsPopup;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/social/AddFriendsPopup;->access$7(Lcom/waze/navigate/social/AddFriendsPopup;)Lcom/waze/NativeManager;

    move-result-object v2

    .line 139
    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup$3;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #getter for: Lcom/waze/navigate/social/AddFriendsPopup;->mFriendsToAdd:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/waze/navigate/social/AddFriendsPopup;->access$5(Lcom/waze/navigate/social/AddFriendsPopup;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 140
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_ADD:Lcom/waze/strings/DisplayStrings;

    .line 138
    :goto_1
    invoke-virtual {v2, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void

    .line 135
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 136
    iget-object v0, p0, Lcom/waze/navigate/social/AddFriendsPopup$3;->this$0:Lcom/waze/navigate/social/AddFriendsPopup;

    #getter for: Lcom/waze/navigate/social/AddFriendsPopup;->mFriendsToAdd:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/waze/navigate/social/AddFriendsPopup;->access$5(Lcom/waze/navigate/social/AddFriendsPopup;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/social/AddFriendsPopup$3;->val$friend:Lcom/waze/user/FriendUserData;

    invoke-virtual {v1}, Lcom/waze/user/FriendUserData;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    :cond_1
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_NEXT:Lcom/waze/strings/DisplayStrings;

    goto :goto_1
.end method
