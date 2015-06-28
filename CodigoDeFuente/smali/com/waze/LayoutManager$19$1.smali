.class Lcom/waze/LayoutManager$19$1;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager$19;->onComplete(Lcom/waze/navigate/social/EndDriveData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/LayoutManager$19;

.field private final synthetic val$data:Lcom/waze/navigate/social/EndDriveData;

.field private final synthetic val$endDriveFriendsLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager$19;Landroid/widget/RelativeLayout;Lcom/waze/navigate/social/EndDriveData;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$19$1;->this$1:Lcom/waze/LayoutManager$19;

    iput-object p2, p0, Lcom/waze/LayoutManager$19$1;->val$endDriveFriendsLayout:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/waze/LayoutManager$19$1;->val$data:Lcom/waze/navigate/social/EndDriveData;

    .line 1298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 1301
    iget-object v0, p0, Lcom/waze/LayoutManager$19$1;->val$endDriveFriendsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    .line 1302
    .local v12, obs:Landroid/view/ViewTreeObserver;
    invoke-virtual {v12, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1304
    iget-object v0, p0, Lcom/waze/LayoutManager$19$1;->val$data:Lcom/waze/navigate/social/EndDriveData;

    iget-object v7, v0, Lcom/waze/navigate/social/EndDriveData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v8, v7

    move v6, v5

    :goto_0
    if-lt v6, v8, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/waze/LayoutManager$19$1;->this$1:Lcom/waze/LayoutManager$19;

    #getter for: Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;
    invoke-static {v0}, Lcom/waze/LayoutManager$19;->access$0(Lcom/waze/LayoutManager$19;)Lcom/waze/LayoutManager;

    move-result-object v5

    iget-object v0, p0, Lcom/waze/LayoutManager$19$1;->val$data:Lcom/waze/navigate/social/EndDriveData;

    iget v6, v0, Lcom/waze/navigate/social/EndDriveData;->myEtaSeconds:I

    iget-object v0, p0, Lcom/waze/LayoutManager$19$1;->this$1:Lcom/waze/LayoutManager$19;

    #getter for: Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;
    invoke-static {v0}, Lcom/waze/LayoutManager$19;->access$0(Lcom/waze/LayoutManager$19;)Lcom/waze/LayoutManager;

    move-result-object v0

    #getter for: Lcom/waze/LayoutManager;->nMaxETA:I
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$30(Lcom/waze/LayoutManager;)I

    move-result v7

    iget-object v0, p0, Lcom/waze/LayoutManager$19$1;->val$data:Lcom/waze/navigate/social/EndDriveData;

    iget-object v8, v0, Lcom/waze/navigate/social/EndDriveData;->myPictureUrl:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    #calls: Lcom/waze/LayoutManager;->AddUserToTimeline(IILjava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v5 .. v10}, Lcom/waze/LayoutManager;->access$31(Lcom/waze/LayoutManager;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1323
    return-void

    .line 1304
    :cond_0
    aget-object v11, v7, v6

    .line 1306
    .local v11, friend:Lcom/waze/user/FriendUserData;
    iget v1, v11, Lcom/waze/user/FriendUserData;->mEtaSeconds:I

    .line 1307
    .local v1, etaSeconds:I
    invoke-virtual {v11}, Lcom/waze/user/FriendUserData;->getImage()Ljava/lang/String;

    move-result-object v3

    .line 1309
    .local v3, pictureUrl:Ljava/lang/String;
    iget v0, v11, Lcom/waze/user/FriendUserData;->mContactID:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1310
    iget v0, v11, Lcom/waze/user/FriendUserData;->mContactID:I

    invoke-static {v0}, Lcom/waze/phone/AddressBook;->GetPersonFromID(I)Lcom/waze/autocomplete/Person;

    move-result-object v13

    .line 1312
    .local v13, p:Lcom/waze/autocomplete/Person;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1313
    invoke-virtual {v13}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v3

    .line 1317
    .end local v13           #p:Lcom/waze/autocomplete/Person;
    :cond_1
    invoke-virtual {v11}, Lcom/waze/user/FriendUserData;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1319
    .local v4, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/LayoutManager$19$1;->this$1:Lcom/waze/LayoutManager$19;

    #getter for: Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;
    invoke-static {v0}, Lcom/waze/LayoutManager$19;->access$0(Lcom/waze/LayoutManager$19;)Lcom/waze/LayoutManager;

    move-result-object v0

    iget-object v2, p0, Lcom/waze/LayoutManager$19$1;->this$1:Lcom/waze/LayoutManager$19;

    #getter for: Lcom/waze/LayoutManager$19;->this$0:Lcom/waze/LayoutManager;
    invoke-static {v2}, Lcom/waze/LayoutManager$19;->access$0(Lcom/waze/LayoutManager$19;)Lcom/waze/LayoutManager;

    move-result-object v2

    #getter for: Lcom/waze/LayoutManager;->nMaxETA:I
    invoke-static {v2}, Lcom/waze/LayoutManager;->access$30(Lcom/waze/LayoutManager;)I

    move-result v2

    #calls: Lcom/waze/LayoutManager;->AddUserToTimeline(IILjava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v5}, Lcom/waze/LayoutManager;->access$31(Lcom/waze/LayoutManager;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1304
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method
