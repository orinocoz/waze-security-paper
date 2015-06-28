.class Lcom/waze/phone/AddressBook$4;
.super Ljava/lang/Object;
.source "AddressBook.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$IdsMatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/AddressBook;->fillMapBetweenContactIdToUid(Landroid/util/SparseIntArray;Lcom/waze/navigate/social/OnCompleteTaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$onCompleteTaskListener:Lcom/waze/navigate/social/OnCompleteTaskListener;

.field private final synthetic val$personIdMatch:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Landroid/util/SparseIntArray;Lcom/waze/navigate/social/OnCompleteTaskListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/AddressBook$4;->val$personIdMatch:Landroid/util/SparseIntArray;

    iput-object p2, p0, Lcom/waze/phone/AddressBook$4;->val$onCompleteTaskListener:Lcom/waze/navigate/social/OnCompleteTaskListener;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/IdsMatchData;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 656
    if-eqz p1, :cond_0

    .line 657
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p1, Lcom/waze/navigate/social/IdsMatchData;->UIDs:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 662
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/waze/phone/AddressBook$4;->val$onCompleteTaskListener:Lcom/waze/navigate/social/OnCompleteTaskListener;

    if-eqz v1, :cond_1

    .line 663
    iget-object v1, p0, Lcom/waze/phone/AddressBook$4;->val$onCompleteTaskListener:Lcom/waze/navigate/social/OnCompleteTaskListener;

    invoke-interface {v1}, Lcom/waze/navigate/social/OnCompleteTaskListener;->onCompleted()V

    .line 665
    :cond_1
    return-void

    .line 658
    .restart local v0       #i:I
    :cond_2
    iget-object v1, p0, Lcom/waze/phone/AddressBook$4;->val$personIdMatch:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/waze/navigate/social/IdsMatchData;->ContactIds:[I

    aget v2, v2, v0

    iget-object v3, p1, Lcom/waze/navigate/social/IdsMatchData;->UIDs:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
