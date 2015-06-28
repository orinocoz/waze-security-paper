.class public final Lcom/waze/navigate/FavoritesActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "FavoritesActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;
.implements Lcom/waze/navigate/DriveToNavigateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/navigate/FavoritesActivity$FavListAdapter;
    }
.end annotation


# instance fields
.field private nat:Lcom/waze/NativeManager;

.field private nm:Lcom/waze/navigate/DriveToNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public addressItemClicked(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 86
    const v4, 0x7f09002c

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    .line 87
    .local v0, ai:Lcom/waze/navigate/AddressItem;
    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v3

    .line 88
    .local v3, type:Ljava/lang/Integer;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v8, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 89
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/waze/navigate/AddHomeWorkActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "AddressType"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v1, v7}, Lcom/waze/navigate/FavoritesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 92
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/waze/navigate/AddFavoriteActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "AddressType"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v1, v7}, Lcom/waze/navigate/FavoritesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 98
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    .line 100
    .local v2, nm:Lcom/waze/navigate/DriveToNativeManager;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 102
    const-string v4, "DRIVE_TYPE"

    const-string v5, "VAUE"

    const-string v6, "HOME"

    invoke-static {v4, v5, v6}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_3
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressItem;->setCategory(Ljava/lang/Integer;)V

    .line 114
    const/4 v4, 0x0

    invoke-virtual {v2, v0, p0, v4, v7}, Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;ZZ)V

    goto :goto_0

    .line 104
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 106
    const-string v4, "DRIVE_TYPE"

    const-string v5, "VAUE"

    const-string v6, "WORK"

    invoke-static {v4, v5, v6}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_5
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 110
    const-string v4, "DRIVE_TYPE"

    const-string v5, "VAUE"

    const-string v6, "OTHER_FAV"

    invoke-static {v4, v5, v6}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V
    .locals 3
    .parameter "favorites"

    .prologue
    .line 63
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "got favorites len="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pos=0 f="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getMoreAction()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const v0, 0x7f0902ae

    invoke-virtual {p0, v0}, Lcom/waze/navigate/FavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/waze/navigate/FavoritesActivity$FavListAdapter;

    .line 67
    const v2, 0x7f03000e

    invoke-direct {v1, p0, p0, v2, p1}, Lcom/waze/navigate/FavoritesActivity$FavListAdapter;-><init>(Lcom/waze/navigate/FavoritesActivity;Landroid/content/Context;I[Lcom/waze/navigate/AddressItem;)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    return-void
.end method

.method public moreActionClicked(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 71
    const v2, 0x7f09002c

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    .line 73
    .local v0, addressItem:Lcom/waze/navigate/AddressItem;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/waze/navigate/AddressPreviewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "AddressItem"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 76
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    const-string v2, "preview_load_venue"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    :cond_0
    const-string v2, "ActionButton"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v1, v4}, Lcom/waze/navigate/FavoritesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 83
    return-void
.end method

.method public navigateCallback(I)V
    .locals 3
    .parameter "rc"

    .prologue
    .line 190
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "navigateCallback:rc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/navigate/FavoritesActivity;->setResult(I)V

    .line 192
    invoke-virtual {p0}, Lcom/waze/navigate/FavoritesActivity;->finish()V

    .line 193
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 197
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 199
    if-ne p2, v0, :cond_0

    .line 201
    invoke-virtual {p0, v0}, Lcom/waze/navigate/FavoritesActivity;->setResult(I)V

    .line 202
    invoke-virtual {p0}, Lcom/waze/navigate/FavoritesActivity;->finish()V

    .line 204
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/waze/navigate/FavoritesActivity;->requestWindowFeature(I)Z

    .line 45
    const v0, 0x7f030053

    invoke-virtual {p0, v0}, Lcom/waze/navigate/FavoritesActivity;->setContentView(I)V

    .line 47
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/waze/navigate/FavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_FAVORITES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 49
    const v0, 0x7f0902ae

    invoke-virtual {p0, v0}, Lcom/waze/navigate/FavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/waze/navigate/FavoritesActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/navigate/FavoritesActivity$1;-><init>(Lcom/waze/navigate/FavoritesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/FavoritesActivity;->nat:Lcom/waze/NativeManager;

    .line 57
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/FavoritesActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    .line 58
    iget-object v0, p0, Lcom/waze/navigate/FavoritesActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0, p0, v2}, Lcom/waze/navigate/DriveToNativeManager;->getFavorites(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;Z)V

    .line 59
    return-void
.end method
