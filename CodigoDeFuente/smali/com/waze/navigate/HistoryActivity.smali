.class public final Lcom/waze/navigate/HistoryActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "HistoryActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;
.implements Lcom/waze/navigate/DriveToNavigateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/navigate/HistoryActivity$HistoryListAdapter;
    }
.end annotation


# instance fields
.field private nm:Lcom/waze/navigate/DriveToNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public addressItemClicked(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    const v3, 0x7f09002c

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    .line 73
    .local v0, ai:Lcom/waze/navigate/AddressItem;
    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 74
    .local v1, store:Z
    :goto_0
    iget-object v3, p0, Lcom/waze/navigate/HistoryActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v3, v0, p0, v2, v1}, Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;ZZ)V

    .line 75
    return-void

    .end local v1           #store:Z
    :cond_0
    move v1, v2

    .line 73
    goto :goto_0
.end method

.method public getAddressItemArrayCallback([Lcom/waze/navigate/AddressItem;)V
    .locals 3
    .parameter "favorites"

    .prologue
    .line 57
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

    .line 59
    const v0, 0x7f090319

    invoke-virtual {p0, v0}, Lcom/waze/navigate/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/waze/navigate/HistoryActivity$HistoryListAdapter;

    const v2, 0x7f03000e

    invoke-direct {v1, p0, p0, v2, p1}, Lcom/waze/navigate/HistoryActivity$HistoryListAdapter;-><init>(Lcom/waze/navigate/HistoryActivity;Landroid/content/Context;I[Lcom/waze/navigate/AddressItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    return-void
.end method

.method public moreActionClicked(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 63
    const v2, 0x7f09002c

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    .line 64
    .local v0, addressItem:Lcom/waze/navigate/AddressItem;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/waze/navigate/AddressPreviewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "AddressItem"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 66
    const-string v2, "ActionButton"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const-string v2, "AdditionalButton"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v1, v4}, Lcom/waze/navigate/HistoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    return-void
.end method

.method public navigateCallback(I)V
    .locals 3
    .parameter "rc"

    .prologue
    .line 158
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "navigateCallback:rc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/navigate/HistoryActivity;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lcom/waze/navigate/HistoryActivity;->finish()V

    .line 161
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/navigate/HistoryActivity;->requestWindowFeature(I)Z

    .line 40
    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/waze/navigate/HistoryActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/waze/navigate/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_HISTORY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 44
    const v0, 0x7f090319

    invoke-virtual {p0, v0}, Lcom/waze/navigate/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/waze/navigate/HistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/navigate/HistoryActivity$1;-><init>(Lcom/waze/navigate/HistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/HistoryActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    .line 52
    iget-object v0, p0, Lcom/waze/navigate/HistoryActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0, p0}, Lcom/waze/navigate/DriveToNativeManager;->getHistory(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 53
    return-void
.end method
