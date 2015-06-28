.class Lcom/waze/share/ShareUtility$1;
.super Ljava/lang/Object;
.source "ShareUtility.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareUtility;->OpenShareActivity(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;[Lcom/waze/user/PersonBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$Sharefriends:[Lcom/waze/user/PersonBase;

.field private final synthetic val$Url:Ljava/lang/String;

.field private final synthetic val$addressItem:Lcom/waze/navigate/AddressItem;

.field private final synthetic val$intent:Landroid/content/Intent;

.field private final synthetic val$type:Lcom/waze/share/ShareUtility$ShareType;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressItem;Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Landroid/content/Intent;[Lcom/waze/user/PersonBase;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareUtility$1;->val$addressItem:Lcom/waze/navigate/AddressItem;

    iput-object p2, p0, Lcom/waze/share/ShareUtility$1;->val$type:Lcom/waze/share/ShareUtility$ShareType;

    iput-object p3, p0, Lcom/waze/share/ShareUtility$1;->val$Url:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/share/ShareUtility$1;->val$intent:Landroid/content/Intent;

    iput-object p5, p0, Lcom/waze/share/ShareUtility$1;->val$Sharefriends:[Lcom/waze/user/PersonBase;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/main/navigate/LocationData;)V
    .locals 12
    .parameter "lData"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    .line 303
    invoke-static {p1}, Lcom/waze/share/ShareUtility;->access$2(Lcom/waze/main/navigate/LocationData;)V

    .line 304
    const-string v5, ""

    .line 306
    .local v5, str:Ljava/lang/String;
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v6

    if-nez v6, :cond_0

    .line 437
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/main/navigate/LocationData;->mVenueId:Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/main/navigate/LocationData;->mVenueId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 311
    :cond_1
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$addressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$addressItem:Lcom/waze/navigate/AddressItem;

    iget-object v6, v6, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 312
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v6

    iget-object v8, p0, Lcom/waze/share/ShareUtility$1;->val$addressItem:Lcom/waze/navigate/AddressItem;

    iget-object v8, v8, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    iput-object v8, v6, Lcom/waze/main/navigate/LocationData;->mVenueId:Ljava/lang/String;

    .line 315
    :cond_2
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$type:Lcom/waze/share/ShareUtility$ShareType;

    sget-object v8, Lcom/waze/share/ShareUtility$ShareType;->ShareType_PickUp:Lcom/waze/share/ShareUtility$ShareType;

    if-eq v6, v8, :cond_c

    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$type:Lcom/waze/share/ShareUtility$ShareType;

    sget-object v8, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    if-eq v6, v8, :cond_c

    .line 317
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$4()I

    move-result v6

    if-ne v6, v11, :cond_7

    .line 318
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v6

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_IVE_SENT_YOU_A_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 324
    :cond_3
    :goto_1
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$4()I

    move-result v6

    if-ne v6, v11, :cond_9

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v8

    iget-object v8, v8, Lcom/waze/main/navigate/LocationData;->destinationName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 334
    :cond_4
    :goto_2
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$4()I

    move-result v6

    if-ne v6, v9, :cond_b

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v8

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_ALREADY_HAVE_WAZEQ_TAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v8

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_HERE_WITH_WAZE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 337
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v8

    iget-object v8, v8, Lcom/waze/main/navigate/LocationData;->smsLocationUrlPrefix:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/h"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v8

    iget-object v8, v8, Lcom/waze/main/navigate/LocationData;->locationHash:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 336
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 374
    :goto_3
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$4()I

    move-result v6

    if-ne v6, v10, :cond_5

    .line 375
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$addressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v6}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 376
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v6

    iget-object v8, p0, Lcom/waze/share/ShareUtility$1;->val$addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v8}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/waze/main/navigate/LocationData;->locationName:Ljava/lang/String;

    .line 380
    :cond_5
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$intent:Landroid/content/Intent;

    const-string v8, "link"

    invoke-virtual {v6, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$intent:Landroid/content/Intent;

    const-string v8, "LocationData"

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 382
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$intent:Landroid/content/Intent;

    const-string v8, "AddressItem"

    iget-object v9, p0, Lcom/waze/share/ShareUtility$1;->val$addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 384
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$type:Lcom/waze/share/ShareUtility$ShareType;

    sget-object v8, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    if-ne v6, v8, :cond_12

    .line 386
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$Sharefriends:[Lcom/waze/user/PersonBase;

    if-eqz v6, :cond_f

    .line 388
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$intent:Landroid/content/Intent;

    const-string v7, "FriendUserDataList"

    .line 389
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/waze/share/ShareUtility$1;->val$Sharefriends:[Lcom/waze/user/PersonBase;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 388
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 390
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$intent:Landroid/content/Intent;

    const-string v7, "selected"

    invoke-virtual {v6, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    :cond_6
    :goto_4
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v6

    iget-object v7, p0, Lcom/waze/share/ShareUtility$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v6, v7, v11}, Lcom/waze/ifs/ui/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 319
    :cond_7
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$4()I

    move-result v6

    if-ne v6, v9, :cond_8

    .line 320
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v6

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_ISM_AT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 321
    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$4()I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 322
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v6

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_IVE_SENT_YOU_A_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 326
    :cond_9
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$4()I

    move-result v6

    if-ne v6, v9, :cond_a

    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v8

    iget-object v8, v8, Lcom/waze/main/navigate/LocationData;->locationName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 328
    goto/16 :goto_2

    :cond_a
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$4()I

    move-result v6

    if-ne v6, v10, :cond_4

    .line 329
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$addressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v6, :cond_4

    .line 330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$6()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 341
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v8

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_ALREADY_HAVE_WAZEQ_TAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v8

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_THERE_WITH_WAZE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 342
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v8

    iget-object v8, v8, Lcom/waze/main/navigate/LocationData;->smsLocationUrlPrefix:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/h"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v8

    iget-object v8, v8, Lcom/waze/main/navigate/LocationData;->locationHash:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 341
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 344
    goto/16 :goto_3

    .line 345
    :cond_c
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$type:Lcom/waze/share/ShareUtility$ShareType;

    sget-object v8, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    if-ne v6, v8, :cond_e

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v1, bob:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v6

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_IM_ON_THE_WAY_TO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/main/navigate/LocationData;->destinationName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v6

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_ISLL_BE_THERE_AT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/main/navigate/LocationData;->locationEta:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v6, ". "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v6

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_TRACK_MY_LOCATIONC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$Url:Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 358
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$Url:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 362
    goto/16 :goto_3

    .line 365
    .end local v1           #bob:Ljava/lang/StringBuilder;
    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v8

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_SMS_TEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 366
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/waze/share/ShareUtility$1;->val$Url:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 394
    :cond_f
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 395
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/waze/LayoutManager;->getNotifyFriends()[Lcom/waze/user/FriendUserData;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 396
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/waze/LayoutManager;->getNotifyFriends()[Lcom/waze/user/FriendUserData;

    move-result-object v0

    .line 398
    .local v0, Friends:[Lcom/waze/user/FriendUserData;
    array-length v8, v0

    move v6, v7

    :goto_5
    if-lt v6, v8, :cond_10

    .line 407
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$intent:Landroid/content/Intent;

    const-string v8, "FriendUserDataList"

    .line 408
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 407
    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 409
    iget-object v6, p0, Lcom/waze/share/ShareUtility$1;->val$intent:Landroid/content/Intent;

    const-string v8, "selected"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_4

    .line 398
    :cond_10
    aget-object v3, v0, v6

    .line 399
    .local v3, fud:Lcom/waze/user/FriendUserData;
    iget v9, v3, Lcom/waze/user/FriendUserData;->mContactID:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_11

    .line 400
    iget v9, v3, Lcom/waze/user/FriendUserData;->mContactID:I

    invoke-static {v9}, Lcom/waze/phone/AddressBook;->GetPersonFromID(I)Lcom/waze/autocomplete/Person;

    move-result-object v4

    .line 401
    .local v4, p:Lcom/waze/autocomplete/Person;
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 402
    invoke-virtual {v4}, Lcom/waze/autocomplete/Person;->getImage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/waze/user/FriendUserData;->setImage(Ljava/lang/String;)V

    .line 398
    .end local v4           #p:Lcom/waze/autocomplete/Person;
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 416
    .end local v0           #Friends:[Lcom/waze/user/FriendUserData;
    .end local v3           #fud:Lcom/waze/user/FriendUserData;
    :cond_12
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    .line 417
    .local v2, driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v6

    iget v6, v6, Lcom/waze/main/navigate/LocationData;->locationX:I

    .line 418
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v7

    iget v7, v7, Lcom/waze/main/navigate/LocationData;->locationY:I

    new-instance v8, Lcom/waze/share/ShareUtility$1$1;

    iget-object v9, p0, Lcom/waze/share/ShareUtility$1;->val$intent:Landroid/content/Intent;

    invoke-direct {v8, p0, v9}, Lcom/waze/share/ShareUtility$1$1;-><init>(Lcom/waze/share/ShareUtility$1;Landroid/content/Intent;)V

    .line 417
    invoke-virtual {v2, v6, v7, v8}, Lcom/waze/navigate/DriveToNativeManager;->getShareFriendsListData(IILcom/waze/navigate/DriveToNativeManager$FriendsListListener;)V

    goto/16 :goto_0
.end method
