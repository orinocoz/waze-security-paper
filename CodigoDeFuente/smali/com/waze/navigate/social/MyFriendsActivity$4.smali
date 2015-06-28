.class Lcom/waze/navigate/social/MyFriendsActivity$4;
.super Ljava/lang/Object;
.source "MyFriendsActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$PersonMappingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyFriendsActivity;->getAddressBookAndFriendsData()V
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
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$4;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    iget-object v3, p0, Lcom/waze/navigate/social/MyFriendsActivity$4;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArray:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/waze/navigate/social/MyFriendsActivity;->access$9(Lcom/waze/navigate/social/MyFriendsActivity;Ljava/util/ArrayList;)V

    .line 184
    iget-object v3, p0, Lcom/waze/navigate/social/MyFriendsActivity$4;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/waze/navigate/social/MyFriendsActivity;->access$10(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 185
    iget-object v3, p0, Lcom/waze/navigate/social/MyFriendsActivity$4;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    new-instance v4, Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/waze/navigate/social/MyFriendsActivity$4;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/waze/navigate/social/MyFriendsActivity;->access$10(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    #setter for: Lcom/waze/navigate/social/MyFriendsActivity;->mContactsByUid:Landroid/util/SparseArray;
    invoke-static {v3, v4}, Lcom/waze/navigate/social/MyFriendsActivity;->access$11(Lcom/waze/navigate/social/MyFriendsActivity;Landroid/util/SparseArray;)V

    .line 188
    iget-object v3, p0, Lcom/waze/navigate/social/MyFriendsActivity$4;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mFriendsArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/waze/navigate/social/MyFriendsActivity;->access$10(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 197
    :cond_1
    if-eqz p1, :cond_3

    .line 199
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 214
    :cond_3
    iget-object v3, p0, Lcom/waze/navigate/social/MyFriendsActivity$4;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #calls: Lcom/waze/navigate/social/MyFriendsActivity;->readDone()V
    invoke-static {v3}, Lcom/waze/navigate/social/MyFriendsActivity;->access$14(Lcom/waze/navigate/social/MyFriendsActivity;)V

    .line 215
    return-void

    .line 188
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 189
    .local v2, p:Ljava/lang/Object;
    instance-of v4, v2, Lcom/waze/user/FriendUserData;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 190
    check-cast v1, Lcom/waze/user/FriendUserData;

    .line 191
    .local v1, fud:Lcom/waze/user/FriendUserData;
    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$4;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/waze/navigate/social/MyFriendsActivity;->access$12(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$4;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mContactsByUid:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/waze/navigate/social/MyFriendsActivity;->access$13(Lcom/waze/navigate/social/MyFriendsActivity;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v1}, Lcom/waze/user/FriendUserData;->getID()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 199
    .end local v1           #fud:Lcom/waze/user/FriendUserData;
    .end local v2           #p:Ljava/lang/Object;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/user/PersonBase;

    .line 200
    .local v2, p:Lcom/waze/user/PersonBase;
    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$4;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mContactsByUid:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/waze/navigate/social/MyFriendsActivity;->access$13(Lcom/waze/navigate/social/MyFriendsActivity;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v2}, Lcom/waze/user/PersonBase;->getID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/user/PersonBase;

    .line 201
    .local v0, dup:Lcom/waze/user/PersonBase;
    if-eqz v0, :cond_7

    .line 202
    invoke-virtual {v0}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    .line 203
    invoke-virtual {v2}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/user/PersonBase;->setImage(Ljava/lang/String;)V

    .line 205
    :cond_6
    invoke-virtual {v0}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/waze/user/PersonBase;->setIsOnWaze(Z)V

    goto :goto_1

    .line 210
    :cond_7
    iget-object v4, p0, Lcom/waze/navigate/social/MyFriendsActivity$4;->this$0:Lcom/waze/navigate/social/MyFriendsActivity;

    #getter for: Lcom/waze/navigate/social/MyFriendsActivity;->mPersonArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/waze/navigate/social/MyFriendsActivity;->access$12(Lcom/waze/navigate/social/MyFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
