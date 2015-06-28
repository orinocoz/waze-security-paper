.class final Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;
.super Lcom/tokenautocomplete/FilteredArrayAdapter;
.source "MyFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/social/MyFriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FriendUserDataFilteredArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tokenautocomplete/FilteredArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field ab:Lcom/waze/ifs/ui/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/waze/ifs/ui/ActivityBase;Ljava/util/List;)V
    .locals 1
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/waze/ifs/ui/ActivityBase;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/tokenautocomplete/FilteredArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 658
    iput-object p1, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;->ab:Lcom/waze/ifs/ui/ActivityBase;

    .line 659
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const v10, 0x7f0904d0

    const/4 v11, 0x0

    const v5, 0x7f09008a

    .line 663
    if-nez p2, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 666
    .local v7, l:Landroid/view/LayoutInflater;
    const v0, 0x7f03009f

    invoke-virtual {v7, v0, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 669
    .end local v7           #l:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    .local v8, o:Ljava/lang/Object;
    move-object v9, v8

    .line 670
    check-cast v9, Lcom/waze/user/PersonBase;

    .line 671
    .local v9, pr:Lcom/waze/user/PersonBase;
    instance-of v0, v8, Lcom/waze/user/PersonBase;

    if-nez v0, :cond_1

    .line 753
    .end local v8           #o:Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 673
    .restart local v8       #o:Ljava/lang/Object;
    :cond_1
    instance-of v0, v8, Lcom/waze/user/FriendUserData;

    if-eqz v0, :cond_3

    move-object v6, v8

    .line 674
    check-cast v6, Lcom/waze/user/FriendUserData;

    .line 675
    .local v6, fud:Lcom/waze/user/FriendUserData;
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v6, Lcom/waze/user/FriendUserData;->mFaceBookNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    iget-boolean v0, v6, Lcom/waze/user/FriendUserData;->mIsFriend:Z

    if-eqz v0, :cond_2

    .line 677
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 739
    .end local v6           #fud:Lcom/waze/user/FriendUserData;
    .end local v8           #o:Ljava/lang/Object;
    :goto_1
    const v0, 0x7f090236

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    const v0, 0x7f090235

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 742
    .local v3, friendImageInLayout:Landroid/widget/ImageView;
    const v0, 0x7f02011b

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 743
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    invoke-virtual {v9}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;->ab:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual/range {v0 .. v5}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 745
    new-instance v0, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$3;

    invoke-direct {v0, p0, v9}, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$3;-><init>(Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;Lcom/waze/user/PersonBase;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v4, p2

    .line 753
    goto :goto_0

    .line 679
    .end local v3           #friendImageInLayout:Landroid/widget/ImageView;
    .restart local v6       #fud:Lcom/waze/user/FriendUserData;
    .restart local v8       #o:Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 680
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 681
    new-instance v1, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$1;

    invoke-direct {v1, p0, v6, v9}, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$1;-><init>(Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;Lcom/waze/user/FriendUserData;Lcom/waze/user/PersonBase;)V

    .line 680
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 699
    .end local v6           #fud:Lcom/waze/user/FriendUserData;
    :cond_3
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 700
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 701
    new-instance v1, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$2;

    invoke-direct {v1, p0, v9}, Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter$2;-><init>(Lcom/waze/navigate/social/MyFriendsActivity$FriendUserDataFilteredArrayAdapter;Lcom/waze/user/PersonBase;)V

    .line 700
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    check-cast v8, Lcom/waze/user/PersonBase;

    .end local v8           #o:Ljava/lang/Object;
    invoke-virtual {v8}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v0

    if-nez v0, :cond_5

    .line 727
    invoke-virtual {v9}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v9}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 728
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 729
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_INVITE_VIA_PS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v11

    .line 728
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 731
    :cond_4
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 732
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_NOT_ON_WAZE_SEND_INVITE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 731
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 735
    :cond_5
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 736
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_ADD_AS_A_FRIEND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 735
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method protected keepObject(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .parameter "obj"
    .parameter "mask"

    .prologue
    .line 758
    instance-of v0, p1, Lcom/waze/user/PersonBase;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 759
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Lcom/waze/user/PersonBase;

    .end local p1
    invoke-static {p1, p2}, Lcom/waze/navigate/social/MyFriendsActivity;->nameContains(Lcom/waze/user/PersonBase;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
