.class public Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AddFromActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/social/AddFromActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersonArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/waze/user/PersonBase;",
        ">;"
    }
.end annotation


# instance fields
.field private _nativeManager:Lcom/waze/NativeManager;

.field private _selectedIds:Landroid/util/SparseBooleanArray;

.field private activity:Lcom/waze/ifs/ui/ActivityBase;

.field private hasMore:Z

.field private inflater:Landroid/view/LayoutInflater;

.field private mHeaderBg:I

.field private mHeaderText:I

.field private numSuggested:I

.field private showStatus:Z


# direct methods
.method public constructor <init>(Lcom/waze/ifs/ui/ActivityBase;Ljava/util/List;IZ)V
    .locals 4
    .parameter "a"
    .parameter
    .parameter "numSuggested"
    .parameter "showStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/waze/ifs/ui/ActivityBase;",
            "Ljava/util/List",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Lcom/waze/user/PersonBase;>;"
    const/4 v1, 0x0

    .line 618
    invoke-direct {p0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 612
    const/16 v0, 0x93

    const/16 v2, 0xc4

    const/16 v3, 0xd3

    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->mHeaderBg:I

    .line 613
    const/16 v0, 0x2f

    const/16 v2, 0x4a

    const/16 v3, 0x53

    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->mHeaderText:I

    .line 619
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/waze/ifs/ui/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 620
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->activity:Lcom/waze/ifs/ui/ActivityBase;

    .line 621
    iput p3, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->numSuggested:I

    .line 622
    if-lez p3, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->hasMore:Z

    .line 623
    iput-boolean p4, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->showStatus:Z

    .line 624
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->_nativeManager:Lcom/waze/NativeManager;

    .line 625
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->_selectedIds:Landroid/util/SparseBooleanArray;

    .line 626
    return-void

    :cond_0
    move v0, v1

    .line 622
    goto :goto_0
.end method

.method private makeHeader(Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .parameter "text"

    .prologue
    .line 730
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->activity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 731
    .local v2, header:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    iget v4, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->mHeaderBg:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 733
    iget v4, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->mHeaderText:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 734
    const/4 v4, 0x2

    const/high16 v5, 0x4190

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 736
    iget-object v4, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->activity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v4}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 737
    .local v0, density:F
    const/high16 v4, 0x4170

    mul-float/2addr v4, v0

    float-to-int v1, v4

    .line 738
    .local v1, hPad:I
    const/high16 v4, 0x40a0

    mul-float/2addr v4, v0

    float-to-int v3, v4

    .line 739
    .local v3, vPad:I
    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 740
    return-object v2
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 630
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 631
    .local v0, count:I
    iget-boolean v1, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->hasMore:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    .line 632
    .end local v0           #count:I
    :cond_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 645
    iget-boolean v5, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->hasMore:Z

    if-eqz v5, :cond_2

    .line 647
    if-nez p1, :cond_0

    .line 648
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    .line 649
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_SUGGESTED_FRIENDS:Lcom/waze/strings/DisplayStrings;

    .line 648
    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->makeHeader(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 721
    :goto_0
    return-object v1

    .line 651
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 652
    iget v5, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->numSuggested:I

    if-ne p1, v5, :cond_1

    .line 653
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    .line 654
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_MORE_FRIENDS:Lcom/waze/strings/DisplayStrings;

    .line 653
    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->makeHeader(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 656
    :cond_1
    iget v5, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->numSuggested:I

    if-le p1, v5, :cond_2

    .line 657
    add-int/lit8 p1, p1, -0x1

    .line 662
    :cond_2
    invoke-virtual {p0, p1}, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/waze/user/PersonBase;

    .line 666
    .local v3, p:Lcom/waze/user/PersonBase;
    if-eqz p2, :cond_3

    instance-of v5, p2, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 667
    :cond_3
    iget-object v5, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030008

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 672
    .local v1, friendLayout:Landroid/view/View;
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 675
    iget-object v5, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->activity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v1, v6, v7}, Lcom/waze/navigate/social/AddFriendsUtils;->setNameAndImage(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const v5, 0x7f090087

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 678
    .local v4, statusText:Landroid/widget/TextView;
    iget-boolean v5, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->showStatus:Z

    if-nez v5, :cond_5

    .line 679
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 699
    :goto_2
    const v5, 0x7f09008f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 700
    .local v0, cb:Landroid/widget/CheckBox;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 701
    iget-object v5, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->_selectedIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getID()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 703
    const v5, 0x7f090085

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 706
    instance-of v5, v3, Lcom/waze/user/FriendUserData;

    if-eqz v5, :cond_a

    move-object v2, v3

    .line 707
    check-cast v2, Lcom/waze/user/FriendUserData;

    .line 708
    .local v2, fud:Lcom/waze/user/FriendUserData;
    const v5, 0x7f09007f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 709
    iget-boolean v5, v2, Lcom/waze/user/FriendUserData;->isOnline:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    .line 708
    :goto_3
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 715
    .end local v2           #fud:Lcom/waze/user/FriendUserData;
    :goto_4
    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 716
    const v5, 0x7f09008e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 669
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v1           #friendLayout:Landroid/view/View;
    .end local v4           #statusText:Landroid/widget/TextView;
    :cond_4
    move-object v1, p2

    .restart local v1       #friendLayout:Landroid/view/View;
    goto :goto_1

    .line 681
    .restart local v4       #statusText:Landroid/widget/TextView;
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    invoke-virtual {v3}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 683
    iget-object v5, v3, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v3, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 684
    iget-object v5, v3, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 686
    :cond_6
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 689
    :cond_7
    iget-object v5, v3, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, v3, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 691
    iget-object v5, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->_nativeManager:Lcom/waze/NativeManager;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_INVITE_VIA_PS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v3, Lcom/waze/user/PersonBase;->mPhone:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 690
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 693
    :cond_8
    iget-object v5, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->_nativeManager:Lcom/waze/NativeManager;

    .line 694
    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_NOT_ON_WAZE_SEND_INVITE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 693
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 709
    .restart local v0       #cb:Landroid/widget/CheckBox;
    .restart local v2       #fud:Lcom/waze/user/FriendUserData;
    :cond_9
    const/4 v5, 0x4

    goto :goto_3

    .line 711
    .end local v2           #fud:Lcom/waze/user/FriendUserData;
    :cond_a
    const v5, 0x7f09007f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 718
    :cond_b
    const v5, 0x7f09008e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setHeaderColors(II)V
    .locals 0
    .parameter "bg"
    .parameter "text"

    .prologue
    .line 725
    iput p1, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->mHeaderBg:I

    .line 726
    iput p2, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->mHeaderText:I

    .line 727
    return-void
.end method

.method setSelected(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->_selectedIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 637
    return-void
.end method

.method setUnselected(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/waze/navigate/social/AddFromActivity$PersonArrayAdapter;->_selectedIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 641
    return-void
.end method
