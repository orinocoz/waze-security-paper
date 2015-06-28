.class public Lcom/waze/navigate/GoButton;
.super Lcom/waze/navigate/GenericView;
.source "GoButton.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    const v0, 0x7f0201cf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0700f8

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/waze/navigate/GenericView;-><init>(Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 15
    return-void
.end method


# virtual methods
.method onClick(Lcom/waze/navigate/AddressOptionsActivity;Landroid/view/View;)V
    .locals 7
    .parameter "activity"
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    const-string v4, "WAZE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":onClick"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p1}, Lcom/waze/navigate/AddressOptionsActivity;->getAddressItem()Lcom/waze/navigate/AddressItem;

    move-result-object v0

    .line 20
    .local v0, ai:Lcom/waze/navigate/AddressItem;
    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 22
    const-string v4, "DRIVE_TYPE"

    const-string v5, "VAUE"

    const-string v6, "HOME"

    invoke-static {v4, v5, v6}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_4

    .line 35
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    .line 37
    .local v1, nm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    move v2, v3

    .line 39
    .local v2, store:Z
    :cond_1
    invoke-virtual {v1, v0, p1, v3, v2}, Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;ZZ)V

    .line 41
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v3

    iget v4, v0, Lcom/waze/navigate/AddressItem;->index:I

    invoke-virtual {v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemNavigate(I)V

    .line 49
    .end local v1           #nm:Lcom/waze/navigate/DriveToNativeManager;
    .end local v2           #store:Z
    :goto_1
    return-void

    .line 24
    :cond_2
    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 26
    const-string v4, "DRIVE_TYPE"

    const-string v5, "VAUE"

    const-string v6, "WORK"

    invoke-static {v4, v5, v6}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_3
    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 30
    const-string v4, "DRIVE_TYPE"

    const-string v5, "VAUE"

    const-string v6, "OTHER_FAV"

    invoke-static {v4, v5, v6}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_4
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/waze/navigate/DriveToNativeManager;->drive(Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {p1, v2}, Lcom/waze/navigate/AddressOptionsActivity;->navigateCallback(I)V

    goto :goto_1
.end method
