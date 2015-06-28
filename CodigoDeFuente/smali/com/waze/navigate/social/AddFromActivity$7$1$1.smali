.class Lcom/waze/navigate/social/AddFromActivity$7$1$1;
.super Ljava/lang/Object;
.source "AddFromActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/AddFromActivity$7$1;->onComplete(Lcom/waze/navigate/social/FriendsListData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/waze/user/PersonBase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/waze/navigate/social/AddFromActivity$7$1;

.field private final synthetic val$suggested:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/AddFromActivity$7$1;Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity$7$1$1;->this$2:Lcom/waze/navigate/social/AddFromActivity$7$1;

    iput-object p2, p0, Lcom/waze/navigate/social/AddFromActivity$7$1$1;->val$suggested:Landroid/util/SparseArray;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/waze/user/PersonBase;Lcom/waze/user/PersonBase;)I
    .locals 7
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 413
    iget-object v5, p0, Lcom/waze/navigate/social/AddFromActivity$7$1$1;->val$suggested:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/waze/user/PersonBase;->getID()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 414
    .local v0, lIsSuggested:Z
    :goto_0
    iget-object v5, p0, Lcom/waze/navigate/social/AddFromActivity$7$1$1;->val$suggested:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/waze/user/PersonBase;->getID()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    move v1, v2

    .line 415
    .local v1, rIsSuggested:Z
    :goto_1
    if-eq v0, v1, :cond_3

    .line 416
    if-eqz v0, :cond_0

    move v2, v4

    .line 421
    :cond_0
    :goto_2
    return v2

    .end local v0           #lIsSuggested:Z
    .end local v1           #rIsSuggested:Z
    :cond_1
    move v0, v3

    .line 413
    goto :goto_0

    .restart local v0       #lIsSuggested:Z
    :cond_2
    move v1, v3

    .line 414
    goto :goto_1

    .line 418
    .restart local v1       #rIsSuggested:Z
    :cond_3
    invoke-virtual {p1}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v3

    invoke-virtual {p2}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v5

    if-eq v3, v5, :cond_5

    .line 419
    invoke-virtual {p1}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    move v2, v4

    goto :goto_2

    :cond_4
    move v4, v2

    goto :goto_3

    .line 421
    :cond_5
    invoke-virtual {p1}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/waze/user/PersonBase;

    check-cast p2, Lcom/waze/user/PersonBase;

    invoke-virtual {p0, p1, p2}, Lcom/waze/navigate/social/AddFromActivity$7$1$1;->compare(Lcom/waze/user/PersonBase;Lcom/waze/user/PersonBase;)I

    move-result v0

    return v0
.end method
