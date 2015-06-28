.class Lcom/waze/share/ShareUtility$2;
.super Ljava/lang/Object;
.source "ShareUtility.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNativeManager$LocationDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/ShareUtility;->BuildShareURL(Lcom/waze/share/ShareUtility$ShareType;Ljava/lang/String;Lcom/waze/navigate/AddressItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$Url:Ljava/lang/String;

.field private final synthetic val$addressItem:Lcom/waze/navigate/AddressItem;

.field private final synthetic val$type:Lcom/waze/share/ShareUtility$ShareType;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareUtility$ShareType;Lcom/waze/navigate/AddressItem;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareUtility$2;->val$type:Lcom/waze/share/ShareUtility$ShareType;

    iput-object p2, p0, Lcom/waze/share/ShareUtility$2;->val$addressItem:Lcom/waze/navigate/AddressItem;

    iput-object p3, p0, Lcom/waze/share/ShareUtility$2;->val$Url:Ljava/lang/String;

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/waze/main/navigate/LocationData;)V
    .locals 6
    .parameter "lData"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 684
    invoke-static {p1}, Lcom/waze/share/ShareUtility;->access$2(Lcom/waze/main/navigate/LocationData;)V

    .line 685
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ETA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, eta:Ljava/lang/String;
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v1

    if-nez v1, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v1, p0, Lcom/waze/share/ShareUtility$2;->val$type:Lcom/waze/share/ShareUtility$ShareType;

    sget-object v2, Lcom/waze/share/ShareUtility$ShareType;->ShareType_PickUp:Lcom/waze/share/ShareUtility$ShareType;

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/waze/share/ShareUtility$2;->val$type:Lcom/waze/share/ShareUtility$ShareType;

    sget-object v2, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    if-eq v1, v2, :cond_9

    .line 693
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$4()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 694
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HEADED_TO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/share/ShareUtility;->access$7(Ljava/lang/String;)V

    .line 700
    :cond_2
    :goto_1
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$4()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 701
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$8()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/main/navigate/LocationData;->destinationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/main/navigate/LocationData;->locationEta:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/share/ShareUtility;->access$7(Ljava/lang/String;)V

    .line 710
    :cond_3
    :goto_2
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$4()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 712
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$8()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ALREADY_HAVE_WAZEQ_TAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_HERE_WITH_WAZE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 713
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/main/navigate/LocationData;->smsLocationUrlPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/main/navigate/LocationData;->locationHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 714
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_NO_WAZEQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/main/navigate/LocationData;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/share/ShareUtility;->access$7(Ljava/lang/String;)V

    .line 741
    :goto_3
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    instance-of v1, v1, Lcom/waze/navigate/social/ShareDriveActivity;

    if-eqz v1, :cond_0

    .line 743
    invoke-static {}, Lcom/waze/AppService;->getActiveActivity()Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v1

    check-cast v1, Lcom/waze/navigate/social/ShareDriveActivity;

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/navigate/social/ShareDriveActivity;->SendURL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 695
    :cond_4
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$4()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 696
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ISM_AT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/share/ShareUtility;->access$7(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 697
    :cond_5
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$4()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 698
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HERESS_THE_PLACEC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/share/ShareUtility;->access$7(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 702
    :cond_6
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$4()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 703
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$8()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/main/navigate/LocationData;->locationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/share/ShareUtility;->access$7(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 704
    :cond_7
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$4()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 705
    iget-object v1, p0, Lcom/waze/share/ShareUtility$2;->val$addressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v1, :cond_3

    .line 706
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$8()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/share/ShareUtility;->access$7(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 718
    :cond_8
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$8()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ALREADY_HAVE_WAZEQ_TAP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_THERE_WITH_WAZE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 719
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/main/navigate/LocationData;->smsLocationUrlPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/main/navigate/LocationData;->locationHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 720
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_NO_WAZEQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/main/navigate/LocationData;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/share/ShareUtility;->access$7(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 723
    :cond_9
    iget-object v1, p0, Lcom/waze/share/ShareUtility$2;->val$type:Lcom/waze/share/ShareUtility$ShareType;

    sget-object v2, Lcom/waze/share/ShareUtility$ShareType;->ShareType_ShareDrive:Lcom/waze/share/ShareUtility$ShareType;

    if-ne v1, v2, :cond_a

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_IM_ON_THE_WAY_TO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 727
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/main/navigate/LocationData;->destinationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/waze/share/ShareUtility;->access$3()Lcom/waze/main/navigate/LocationData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/main/navigate/LocationData;->locationEta:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 728
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$5()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_TRACK_MY_LOCATIONC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 726
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 725
    invoke-static {v1}, Lcom/waze/share/ShareUtility;->access$7(Ljava/lang/String;)V

    .line 729
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$8()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/waze/share/ShareUtility$2;->val$Url:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/share/ShareUtility;->access$7(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 733
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SMS_TEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/share/ShareUtility;->access$7(Ljava/lang/String;)V

    .line 734
    invoke-static {}, Lcom/waze/share/ShareUtility;->access$8()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/waze/share/ShareUtility$2;->val$Url:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/share/ShareUtility;->access$7(Ljava/lang/String;)V

    goto/16 :goto_3
.end method
