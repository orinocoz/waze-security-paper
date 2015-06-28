.class Lcom/waze/share/ShareUtility$1$1;
.super Ljava/lang/Object;
.source "ShareUtility.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$FriendsListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareUtility$1;->onComplete(Lcom/waze/main/navigate/LocationData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/share/ShareUtility$1;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareUtility$1;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareUtility$1$1;->this$1:Lcom/waze/share/ShareUtility$1;

    iput-object p2, p0, Lcom/waze/share/ShareUtility$1$1;->val$intent:Landroid/content/Intent;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/FriendsListData;)V
    .locals 7
    .parameter "aData"

    .prologue
    .line 422
    iget-object v3, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 431
    iget-object v2, p0, Lcom/waze/share/ShareUtility$1$1;->val$intent:Landroid/content/Intent;

    const-string v3, "FriendUserDataList"

    .line 432
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/waze/navigate/social/FriendsListData;->friends:[Lcom/waze/user/FriendUserData;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 431
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 433
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/share/ShareUtility$1$1;->val$intent:Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/waze/ifs/ui/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    .line 434
    return-void

    .line 422
    :cond_0
    aget-object v0, v3, v2

    .line 423
    .local v0, fud:Lcom/waze/user/FriendUserData;
    iget v5, v0, Lcom/waze/user/FriendUserData;->mContactID:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 424
    iget v5, v0, Lcom/waze/user/FriendUserData;->mContactID:I

    invoke-static {v5}, Lcom/waze/phone/AddressBook;->GetPersonFromID(I)Lcom/waze/autocomplete/Person;

    move-result-object v1

    .line 425
    .local v1, p:Lcom/waze/autocomplete/Person;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 426
    invoke-virtual {v1}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/waze/user/FriendUserData;->setImage(Ljava/lang/String;)V

    .line 422
    .end local v1           #p:Lcom/waze/autocomplete/Person;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
