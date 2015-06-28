.class final Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;
.super Lcom/tokenautocomplete/FilteredArrayAdapter;
.source "EditFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/social/EditFriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersonFilteredArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tokenautocomplete/FilteredArrayAdapter",
        "<",
        "Lcom/waze/user/PersonBase;",
        ">;"
    }
.end annotation


# instance fields
.field _ab:Lcom/waze/ifs/ui/ActivityBase;

.field _numToRemove:I

.field final synthetic this$0:Lcom/waze/navigate/social/EditFriendsActivity;


# direct methods
.method public constructor <init>(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/ifs/ui/ActivityBase;Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter "activity"
    .parameter
    .parameter "numToRemove"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/waze/ifs/ui/ActivityBase;",
            "Ljava/util/List",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/waze/user/PersonBase;>;"
    iput-object p1, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/tokenautocomplete/FilteredArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 427
    iput-object p2, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->_ab:Lcom/waze/ifs/ui/ActivityBase;

    .line 428
    iput p4, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->_numToRemove:I

    .line 429
    return-void
.end method

.method static synthetic access$1(Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;)Lcom/waze/navigate/social/EditFriendsActivity;
    .locals 1
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x7f09008a

    const v9, 0x7f090089

    const/16 v8, 0x8

    const/4 v4, 0x0

    .line 433
    invoke-virtual {p0, p1}, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/user/PersonBase;

    .line 435
    .local v3, p:Lcom/waze/user/PersonBase;
    iget-object v5, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    #getter for: Lcom/waze/navigate/social/EditFriendsActivity;->mPersonArray:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/waze/navigate/social/EditFriendsActivity;->access$2(Lcom/waze/navigate/social/EditFriendsActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 436
    iget v5, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->_numToRemove:I

    if-lt p1, v5, :cond_0

    const/4 v0, 0x1

    .line 440
    .local v0, bAddBackList:Z
    :goto_0
    if-nez p2, :cond_1

    .line 441
    iget-object v5, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->_ab:Lcom/waze/ifs/ui/ActivityBase;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/waze/ifs/ui/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 442
    .local v2, l:Landroid/view/LayoutInflater;
    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 447
    .end local v2           #l:Landroid/view/LayoutInflater;
    .local v1, friendLayout:Landroid/view/View;
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 450
    iget-object v5, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->_ab:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v1, v6, v7}, Lcom/waze/navigate/social/AddFriendsUtils;->setNameAndImage(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    if-eqz v0, :cond_2

    .line 454
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 455
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 461
    :goto_2
    const v4, 0x7f09007f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 463
    if-eqz v0, :cond_3

    .line 464
    new-instance v4, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter$1;

    invoke-direct {v4, p0, v3}, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter$1;-><init>(Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;Lcom/waze/user/PersonBase;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    :goto_3
    return-object v1

    .end local v0           #bAddBackList:Z
    .end local v1           #friendLayout:Landroid/view/View;
    :cond_0
    move v0, v4

    .line 436
    goto :goto_0

    .line 444
    .restart local v0       #bAddBackList:Z
    :cond_1
    move-object v1, p2

    .restart local v1       #friendLayout:Landroid/view/View;
    goto :goto_1

    .line 457
    :cond_2
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 458
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 472
    :cond_3
    new-instance v4, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter$2;

    invoke-direct {v4, p0, v3}, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter$2;-><init>(Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;Lcom/waze/user/PersonBase;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method protected keepObject(Lcom/waze/user/PersonBase;Ljava/lang/String;)Z
    .locals 1
    .parameter "obj"
    .parameter "mask"

    .prologue
    .line 486
    invoke-static {p1, p2}, Lcom/waze/navigate/social/MyFriendsActivity;->nameContains(Lcom/waze/user/PersonBase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic keepObject(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/waze/user/PersonBase;

    invoke-virtual {p0, p1, p2}, Lcom/waze/navigate/social/EditFriendsActivity$PersonFilteredArrayAdapter;->keepObject(Lcom/waze/user/PersonBase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
