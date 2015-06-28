.class Lcom/waze/navigate/social/EditFriendsActivity$3;
.super Ljava/lang/Object;
.source "EditFriendsActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/EditFriendsActivity;->getFriendsData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/EditFriendsActivity;

.field private final synthetic val$driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/EditFriendsActivity$3;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    iput-object p2, p0, Lcom/waze/navigate/social/EditFriendsActivity$3;->val$driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/EditFriendsActivity$3;)Lcom/waze/navigate/social/EditFriendsActivity;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity$3;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/FriendsListData;)V
    .locals 5
    .parameter "aData"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity$3;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArray:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/waze/navigate/social/EditFriendsActivity;->access$6(Lcom/waze/navigate/social/EditFriendsActivity;Ljava/util/ArrayList;)V

    .line 133
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity$3;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    iget-object v2, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v2, v2

    #setter for: Lcom/waze/navigate/social/EditFriendsActivity;->mNumCurrent:I
    invoke-static {v1, v2}, Lcom/waze/navigate/social/EditFriendsActivity;->access$7(Lcom/waze/navigate/social/EditFriendsActivity;I)V

    .line 135
    iget-object v2, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/waze/navigate/social/EditFriendsActivity$3;->val$driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    new-instance v2, Lcom/waze/navigate/social/EditFriendsActivity$3$1;

    invoke-direct {v2, p0}, Lcom/waze/navigate/social/EditFriendsActivity$3$1;-><init>(Lcom/waze/navigate/social/EditFriendsActivity$3;)V

    invoke-virtual {v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->getRemovedFriendsData(Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 154
    return-void

    .line 135
    :cond_1
    aget-object v0, v2, v1

    .line 136
    .local v0, p:Lcom/waze/user/PersonBase;
    iget-object v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$3;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/waze/navigate/social/EditFriendsActivity;->access$2(Lcom/waze/navigate/social/EditFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
