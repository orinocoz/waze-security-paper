.class Lcom/waze/navigate/social/AddFromActivity$11;
.super Ljava/lang/Object;
.source "AddFromActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFromActivity;->getFriendsDataFromFacebook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/AddFromActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFromActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity$11;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/FriendsListData;)V
    .locals 6
    .parameter "aData"

    .prologue
    const/4 v2, 0x0

    .line 499
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity$11;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/waze/navigate/social/AddFromActivity;->mPersonArray:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/waze/navigate/social/AddFromActivity;->access$8(Lcom/waze/navigate/social/AddFromActivity;Ljava/util/ArrayList;)V

    .line 500
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity$11;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #setter for: Lcom/waze/navigate/social/AddFromActivity;->mNumSuggestions:I
    invoke-static {v3, v2}, Lcom/waze/navigate/social/AddFromActivity;->access$6(Lcom/waze/navigate/social/AddFromActivity;I)V

    .line 502
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 503
    iget-object v3, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v4, v3

    :goto_0
    if-lt v2, v4, :cond_1

    .line 507
    :cond_0
    new-instance v0, Lcom/waze/navigate/social/AddFromActivity$11$1;

    invoke-direct {v0, p0}, Lcom/waze/navigate/social/AddFromActivity$11$1;-><init>(Lcom/waze/navigate/social/AddFromActivity$11;)V

    .line 514
    .local v0, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/waze/user/PersonBase;>;"
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity$11;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mPersonArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/waze/navigate/social/AddFromActivity;->access$10(Lcom/waze/navigate/social/AddFromActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 516
    iget-object v2, p0, Lcom/waze/navigate/social/AddFromActivity$11;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #calls: Lcom/waze/navigate/social/AddFromActivity;->readDone()V
    invoke-static {v2}, Lcom/waze/navigate/social/AddFromActivity;->access$7(Lcom/waze/navigate/social/AddFromActivity;)V

    .line 517
    return-void

    .line 503
    .end local v0           #comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/waze/user/PersonBase;>;"
    :cond_1
    aget-object v1, v3, v2

    .line 504
    .local v1, p:Lcom/waze/user/PersonBase;
    iget-object v5, p0, Lcom/waze/navigate/social/AddFromActivity$11;->this$0:Lcom/waze/navigate/social/AddFromActivity;

    #getter for: Lcom/waze/navigate/social/AddFromActivity;->mPersonArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/waze/navigate/social/AddFromActivity;->access$10(Lcom/waze/navigate/social/AddFromActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
