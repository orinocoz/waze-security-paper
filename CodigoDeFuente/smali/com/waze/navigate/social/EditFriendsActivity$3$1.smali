.class Lcom/waze/navigate/social/EditFriendsActivity$3$1;
.super Ljava/lang/Object;
.source "EditFriendsActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/EditFriendsActivity$3;->onComplete(Lcom/waze/navigate/social/FriendsListData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/social/EditFriendsActivity$3;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/EditFriendsActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/EditFriendsActivity$3$1;->this$1:Lcom/waze/navigate/social/EditFriendsActivity$3;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/FriendsListData;)V
    .locals 5
    .parameter "aData"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity$3$1;->this$1:Lcom/waze/navigate/social/EditFriendsActivity$3;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity$3;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;
    invoke-static {v1}, Lcom/waze/navigate/social/EditFriendsActivity$3;->access$0(Lcom/waze/navigate/social/EditFriendsActivity$3;)Lcom/waze/navigate/social/EditFriendsActivity;

    move-result-object v1

    iget-object v2, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v2, v2

    #setter for: Lcom/waze/navigate/social/EditFriendsActivity;->mNumRemoved:I
    invoke-static {v1, v2}, Lcom/waze/navigate/social/EditFriendsActivity;->access$8(Lcom/waze/navigate/social/EditFriendsActivity;I)V

    .line 146
    iget-object v2, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity$3$1;->this$1:Lcom/waze/navigate/social/EditFriendsActivity$3;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity$3;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;
    invoke-static {v1}, Lcom/waze/navigate/social/EditFriendsActivity$3;->access$0(Lcom/waze/navigate/social/EditFriendsActivity$3;)Lcom/waze/navigate/social/EditFriendsActivity;

    move-result-object v1

    #calls: Lcom/waze/navigate/social/EditFriendsActivity;->finishedReading()V
    invoke-static {v1}, Lcom/waze/navigate/social/EditFriendsActivity;->access$9(Lcom/waze/navigate/social/EditFriendsActivity;)V

    .line 152
    return-void

    .line 146
    :cond_1
    aget-object v0, v2, v1

    .line 147
    .local v0, p:Lcom/waze/user/PersonBase;
    iget-object v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$3$1;->this$1:Lcom/waze/navigate/social/EditFriendsActivity$3;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity$3;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;
    invoke-static {v4}, Lcom/waze/navigate/social/EditFriendsActivity$3;->access$0(Lcom/waze/navigate/social/EditFriendsActivity$3;)Lcom/waze/navigate/social/EditFriendsActivity;

    move-result-object v4

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/waze/navigate/social/EditFriendsActivity;->access$2(Lcom/waze/navigate/social/EditFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
