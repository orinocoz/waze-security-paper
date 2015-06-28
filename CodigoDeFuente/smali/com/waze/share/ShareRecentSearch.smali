.class public final Lcom/waze/share/ShareRecentSearch;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "ShareRecentSearch.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;
.implements Lcom/waze/navigate/DriveToNavigateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/share/ShareRecentSearch$HistoryListAdapter;
    }
.end annotation


# instance fields
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
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 68
    const v1, 0x7f09002c

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    .line 75
    .local v0, ai:Lcom/waze/navigate/AddressItem;
    sget-object v1, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareSelection:Lcom/waze/share/ShareUtility$ShareType;

    invoke-static {v1, v2, v0, v2}, Lcom/waze/share/ShareUtility;->OpenShareActivity(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;[Lcom/waze/user/PersonBase;)V

    .line 76
    return-void
.end method

.method public getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V
    .locals 3
    .parameter "favorites"

    .prologue
    .line 61
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "got history len="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const v0, 0x7f090319

    invoke-virtual {p0, v0}, Lcom/waze/share/ShareRecentSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/waze/share/ShareRecentSearch$HistoryListAdapter;

    const v2, 0x7f03000e

    invoke-direct {v1, p0, p0, v2, p1}, Lcom/waze/share/ShareRecentSearch$HistoryListAdapter;-><init>(Lcom/waze/share/ShareRecentSearch;Landroid/content/Context;I[Lcom/waze/navigate/AddressItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    return-void
.end method

.method public navigateCallback(I)V
    .locals 3
    .parameter "rc"

    .prologue
    .line 173
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "navigateCallback:rc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/share/ShareRecentSearch;->setResult(I)V

    .line 175
    invoke-virtual {p0}, Lcom/waze/share/ShareRecentSearch;->finish()V

    .line 176
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 163
    if-ne p2, v0, :cond_0

    .line 165
    invoke-virtual {p0, v0}, Lcom/waze/share/ShareRecentSearch;->setResult(I)V

    .line 166
    invoke-virtual {p0}, Lcom/waze/share/ShareRecentSearch;->finish()V

    .line 168
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 169
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/share/ShareRecentSearch;->requestWindowFeature(I)Z

    .line 44
    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/waze/share/ShareRecentSearch;->setContentView(I)V

    .line 46
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/waze/share/ShareRecentSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_HISTORY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 48
    const v0, 0x7f090319

    invoke-virtual {p0, v0}, Lcom/waze/share/ShareRecentSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/waze/share/ShareRecentSearch$1;

    invoke-direct {v1, p0}, Lcom/waze/share/ShareRecentSearch$1;-><init>(Lcom/waze/share/ShareRecentSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 55
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/share/ShareRecentSearch;->nm:Lcom/waze/navigate/DriveToNativeManager;

    .line 56
    iget-object v0, p0, Lcom/waze/share/ShareRecentSearch;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0, p0}, Lcom/waze/navigate/DriveToNativeManager;->getHistory(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 57
    return-void
.end method
