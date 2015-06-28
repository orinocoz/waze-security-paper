.class Lcom/waze/phone/AddressBook$3;
.super Ljava/lang/Object;
.source "AddressBook.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$IdsMatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/phone/AddressBook;->GetPersonArrayWithMapping(Lcom/waze/navigate/DriveToNativeManager$PersonMappingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$PersonIdMatch:Landroid/util/SparseIntArray;

.field private final synthetic val$pml:Lcom/waze/navigate/DriveToNativeManager$PersonMappingListener;


# direct methods
.method constructor <init>(Landroid/util/SparseIntArray;Lcom/waze/navigate/DriveToNativeManager$PersonMappingListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/phone/AddressBook$3;->val$PersonIdMatch:Landroid/util/SparseIntArray;

    iput-object p2, p0, Lcom/waze/phone/AddressBook$3;->val$pml:Lcom/waze/navigate/DriveToNativeManager$PersonMappingListener;

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/navigate/social/IdsMatchData;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 567
    if-eqz p1, :cond_0

    .line 568
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p1, Lcom/waze/navigate/social/IdsMatchData;->UIDs:[I

    array-length v4, v4

    if-lt v1, v4, :cond_2

    .line 572
    .end local v1           #i:I
    :cond_0
    invoke-static {}, Lcom/waze/phone/AddressBook;->access$1()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 573
    invoke-static {}, Lcom/waze/phone/AddressBook;->access$1()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 584
    :cond_1
    iget-object v4, p0, Lcom/waze/phone/AddressBook$3;->val$pml:Lcom/waze/navigate/DriveToNativeManager$PersonMappingListener;

    invoke-static {}, Lcom/waze/phone/AddressBook;->access$2()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/waze/navigate/DriveToNativeManager$PersonMappingListener;->onComplete(Ljava/util/ArrayList;)V

    .line 585
    return-void

    .line 569
    .restart local v1       #i:I
    :cond_2
    iget-object v4, p0, Lcom/waze/phone/AddressBook$3;->val$PersonIdMatch:Landroid/util/SparseIntArray;

    iget-object v5, p1, Lcom/waze/navigate/social/IdsMatchData;->ContactIds:[I

    aget v5, v5, v1

    iget-object v6, p1, Lcom/waze/navigate/social/IdsMatchData;->UIDs:[I

    aget v6, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    .end local v1           #i:I
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/autocomplete/Person;

    .line 574
    .local v2, p:Lcom/waze/autocomplete/Person;
    new-instance v0, Lcom/waze/autocomplete/Person;

    invoke-direct {v0, v2}, Lcom/waze/autocomplete/Person;-><init>(Lcom/waze/autocomplete/Person;)V

    .line 575
    .local v0, dup:Lcom/waze/autocomplete/Person;
    iget-object v5, p0, Lcom/waze/phone/AddressBook$3;->val$PersonIdMatch:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/waze/autocomplete/Person;->getID()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 576
    .local v3, uid:I
    if-eqz v3, :cond_4

    .line 577
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/waze/autocomplete/Person;->setIsOnWaze(Z)V

    .line 578
    invoke-virtual {v0, v3}, Lcom/waze/autocomplete/Person;->setID(I)V

    .line 580
    :cond_4
    invoke-static {}, Lcom/waze/phone/AddressBook;->access$2()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
