.class public final Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;
.super Lcom/tokenautocomplete/FilteredArrayAdapter;
.source "AddFromActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/social/AddFromActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
            "Lcom/waze/user/PersonBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 777
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Lcom/waze/user/PersonBase;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/tokenautocomplete/FilteredArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 778
    iput-object p1, p0, Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;->ab:Lcom/waze/ifs/ui/ActivityBase;

    .line 779
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/waze/user/PersonBase;
    .locals 1
    .parameter "position"

    .prologue
    .line 809
    invoke-super {p0, p1}, Lcom/tokenautocomplete/FilteredArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/user/PersonBase;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;->getItem(I)Lcom/waze/user/PersonBase;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f0904d1

    const/4 v8, 0x0

    .line 783
    if-nez p2, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 786
    .local v6, l:Landroid/view/LayoutInflater;
    const v0, 0x7f03009f

    invoke-virtual {v6, v0, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 789
    .end local v6           #l:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;->getItem(I)Lcom/waze/user/PersonBase;

    move-result-object v7

    .line 790
    .local v7, p:Lcom/waze/user/PersonBase;
    const v0, 0x7f090236

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    const v0, 0x7f0904d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/waze/user/PersonBase;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    const v0, 0x7f090235

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 794
    .local v3, friendImageInLayout:Landroid/widget/ImageView;
    const v0, 0x7f02011b

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 795
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    invoke-virtual {v7}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;->ab:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual/range {v0 .. v5}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 798
    invoke-virtual {v7}, Lcom/waze/user/PersonBase;->getIsOnWaze()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 804
    :goto_0
    return-object p2

    .line 801
    :cond_1
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected keepObject(Lcom/waze/user/PersonBase;Ljava/lang/String;)Z
    .locals 1
    .parameter "obj"
    .parameter "mask"

    .prologue
    .line 814
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

    invoke-virtual {p0, p1, p2}, Lcom/waze/navigate/social/AddFromActivity$PersonFilteredArrayAdapter;->keepObject(Lcom/waze/user/PersonBase;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
