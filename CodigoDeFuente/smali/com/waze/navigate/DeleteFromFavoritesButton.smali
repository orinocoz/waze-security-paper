.class public Lcom/waze/navigate/DeleteFromFavoritesButton;
.super Lcom/waze/navigate/GenericView;
.source "DeleteFromFavoritesButton.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    const v0, 0x7f0201a7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0700f5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/waze/navigate/GenericView;-><init>(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 14
    return-void
.end method


# virtual methods
.method onClick(Lcom/waze/navigate/AddressOptionsActivity;Landroid/view/View;)V
    .locals 5
    .parameter "activity"
    .parameter "v"

    .prologue
    .line 16
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":onClick"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p1}, Lcom/waze/navigate/AddressOptionsActivity;->getAddressItem()Lcom/waze/navigate/AddressItem;

    move-result-object v0

    .line 19
    .local v0, ai:Lcom/waze/navigate/AddressItem;
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fav= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    .line 21
    .local v1, nm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-virtual {v1, v0}, Lcom/waze/navigate/DriveToNativeManager;->eraseAddressItem(Lcom/waze/navigate/AddressItem;)V

    .line 22
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/waze/navigate/AddressOptionsActivity;->setResult(I)V

    .line 23
    invoke-virtual {p1}, Lcom/waze/navigate/AddressOptionsActivity;->finish()V

    .line 24
    return-void
.end method
