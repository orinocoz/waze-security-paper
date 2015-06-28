.class Lcom/waze/navigate/social/AddFromActivity$7$1;
.super Ljava/lang/Object;
.source "AddFromActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFromActivity$7;->onComplete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/social/AddFromActivity$7;

.field private final synthetic val$cb:Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;

.field private final synthetic val$contactsByUid:Landroid/util/SparseArray;

.field private final synthetic val$personArray:Ljava/util/ArrayList;

.field private final synthetic val$preSelected:Landroid/util/SparseArray;

.field private final synthetic val$setSelected:Ljava/util/ArrayList;

.field private final synthetic val$suggested:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFromActivity$7;Landroid/util/SparseArray;Ljava/util/ArrayList;Landroid/util/SparseArray;Ljava/util/ArrayList;Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->this$1:Lcom/waze/navigate/social/AddFromActivity$7;

    iput-object p2, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->val$contactsByUid:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->val$personArray:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->val$preSelected:Landroid/util/SparseArray;

    iput-object p5, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->val$setSelected:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->val$cb:Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;

    iput-object p7, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->val$suggested:Landroid/util/SparseArray;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/FriendsListData;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 389
    if-eqz p1, :cond_0

    .line 391
    iget-object v4, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_1

    .line 409
    :cond_0
    new-instance v0, Lcom/waze/navigate/social/AddFromActivity$7$1$1;

    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->val$suggested:Landroid/util/SparseArray;

    invoke-direct {v0, p0, v3}, Lcom/waze/navigate/social/AddFromActivity$7$1$1;-><init>(Lcom/waze/navigate/social/AddFromActivity$7$1;Landroid/util/SparseArray;)V

    .line 425
    .local v0, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/waze/user/PersonBase;>;"
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->val$personArray:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 427
    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->val$cb:Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;

    iget-object v4, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->val$suggested:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iget-object v5, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->val$setSelected:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;->onReadDone(ILjava/util/ArrayList;)V

    .line 428
    return-void

    .line 391
    .end local v0           #comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/waze/user/PersonBase;>;"
    :cond_1
    aget-object v2, v4, v3

    .line 392
    .local v2, p:Lcom/waze/user/PersonBase;
    iget-object v6, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->val$contactsByUid:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/waze/user/PersonBase;->getID()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/user/PersonBase;

    .line 393
    .local v1, dup:Lcom/waze/user/PersonBase;
    if-eqz v1, :cond_4

    .line 394
    invoke-virtual {v1}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 395
    invoke-virtual {v2}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/waze/user/PersonBase;->setImage(Ljava/lang/String;)V

    .line 397
    :cond_2
    invoke-virtual {v1}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 398
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/waze/user/PersonBase;->setIsOnWaze(Z)V

    .line 391
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 402
    :cond_4
    iget-object v6, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->val$personArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v6, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->val$preSelected:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/waze/user/PersonBase;->getID()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 404
    iget-object v6, p0, Lcom/waze/navigate/social/AddFromActivity$7$1;->val$setSelected:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
