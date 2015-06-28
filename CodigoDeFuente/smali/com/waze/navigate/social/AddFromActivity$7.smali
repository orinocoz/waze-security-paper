.class Lcom/waze/navigate/social/AddFromActivity$7;
.super Ljava/lang/Object;
.source "AddFromActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$PersonMappingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFromActivity;->getFriendsDataFromShare(Ljava/util/ArrayList;Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cb:Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;

.field private final synthetic val$personArray:Ljava/util/ArrayList;

.field private final synthetic val$preSelected:Landroid/util/SparseArray;

.field private final synthetic val$suggested:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity$7;->val$personArray:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/waze/navigate/social/AddFromActivity$7;->val$preSelected:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/waze/navigate/social/AddFromActivity$7;->val$cb:Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;

    iput-object p4, p0, Lcom/waze/navigate/social/AddFromActivity$7;->val$suggested:Landroid/util/SparseArray;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/ArrayList;)V
    .locals 10
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
    .line 370
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v5, setSelected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/user/PersonBase;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 373
    .local v2, contactsByUid:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/waze/user/PersonBase;>;"
    if-eqz p1, :cond_1

    .line 375
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 384
    :cond_1
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v9

    .line 385
    new-instance v0, Lcom/waze/navigate/social/AddFromActivity$7$1;

    iget-object v3, p0, Lcom/waze/navigate/social/AddFromActivity$7;->val$personArray:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/waze/navigate/social/AddFromActivity$7;->val$preSelected:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/waze/navigate/social/AddFromActivity$7;->val$cb:Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;

    iget-object v7, p0, Lcom/waze/navigate/social/AddFromActivity$7;->val$suggested:Landroid/util/SparseArray;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/waze/navigate/social/AddFromActivity$7$1;-><init>(Lcom/waze/navigate/social/AddFromActivity$7;Landroid/util/SparseArray;Ljava/util/ArrayList;Landroid/util/SparseArray;Ljava/util/ArrayList;Lcom/waze/navigate/social/AddFromActivity$IOnReadDone;Landroid/util/SparseArray;)V

    .line 384
    invoke-virtual {v9, v0}, Lcom/waze/navigate/DriveToNativeManager;->getFacebookFriendsList(Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    .line 430
    return-void

    .line 375
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/waze/user/PersonBase;

    .line 376
    .local v8, p:Lcom/waze/user/PersonBase;
    iget-object v1, p0, Lcom/waze/navigate/social/AddFromActivity$7;->val$personArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {v8}, Lcom/waze/user/PersonBase;->getID()I

    move-result v1

    invoke-virtual {v2, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    iget-object v1, p0, Lcom/waze/navigate/social/AddFromActivity$7;->val$preSelected:Landroid/util/SparseArray;

    invoke-virtual {v8}, Lcom/waze/user/PersonBase;->getID()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
