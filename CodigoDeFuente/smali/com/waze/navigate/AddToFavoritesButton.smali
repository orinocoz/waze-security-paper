.class public Lcom/waze/navigate/AddToFavoritesButton;
.super Lcom/waze/navigate/GenericView;
.source "AddToFavoritesButton.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    const v0, 0x7f0201a6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0700f6

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/waze/navigate/GenericView;-><init>(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 14
    return-void
.end method


# virtual methods
.method onClick(Lcom/waze/navigate/AddressOptionsActivity;Landroid/view/View;)V
    .locals 4
    .parameter "activity"
    .parameter "v"

    .prologue
    .line 16
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":onClick"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/AddFavoriteNameActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AddressItem"

    invoke-virtual {p1}, Lcom/waze/navigate/AddressOptionsActivity;->getAddressItem()Lcom/waze/navigate/AddressItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 19
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/waze/navigate/AddressOptionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 20
    return-void
.end method
