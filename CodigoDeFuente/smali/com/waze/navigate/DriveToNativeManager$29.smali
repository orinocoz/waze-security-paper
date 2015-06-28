.class Lcom/waze/navigate/DriveToNativeManager$29;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$ai:Lcom/waze/navigate/AddressItem;

.field private final synthetic val$onGoAnalytics:Z

.field private final synthetic val$storeAddress:Z


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/AddressItem;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$29;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    iput-boolean p3, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$storeAddress:Z

    iput-boolean p4, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$onGoAnalytics:Z

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 895
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "navigate event running in thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ai="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-boolean v0, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$storeAddress:Z

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$29;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->storeAddressItemInt(Lcom/waze/navigate/AddressItem;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->access$28(Lcom/waze/navigate/DriveToNativeManager;Lcom/waze/navigate/AddressItem;)Ljava/lang/String;

    move-result-object v14

    .line 900
    .local v14, id:Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 901
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0, v14}, Lcom/waze/navigate/AddressItem;->setId(Ljava/lang/String;)V

    .line 905
    .end local v14           #id:Ljava/lang/String;
    :cond_0
    const-string v13, ""

    .line 907
    .local v13, routingContext:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v0, v0, Lcom/waze/reports/VenueData;->RoutingContext:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v13, v0, Lcom/waze/reports/VenueData;->RoutingContext:Ljava/lang/String;

    .line 911
    :cond_1
    iget-boolean v0, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$onGoAnalytics:Z

    if-eqz v0, :cond_2

    .line 912
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$29;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    iget v1, v1, Lcom/waze/navigate/AddressItem;->index:I

    #calls: Lcom/waze/navigate/DriveToNativeManager;->logAnalyticsOnGoNTV(I)V
    invoke-static {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->access$29(Lcom/waze/navigate/DriveToNativeManager;I)V

    .line 914
    :cond_2
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 915
    .local v3, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 916
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getSecondaryTitle()Ljava/lang/String;

    move-result-object v3

    .line 918
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 919
    :cond_4
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 922
    :cond_5
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$29;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getDealId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    iget v5, v5, Lcom/waze/navigate/AddressItem;->advPointId:I

    .line 923
    iget-object v6, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    iget-object v6, v6, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    iget-object v7, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v7}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v8}, Lcom/waze/navigate/AddressItem;->getCountry()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getState()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getCity()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v11}, Lcom/waze/navigate/AddressItem;->getStreet()Ljava/lang/String;

    move-result-object v11

    .line 924
    iget-object v12, p0, Lcom/waze/navigate/DriveToNativeManager$29;->val$ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v12}, Lcom/waze/navigate/AddressItem;->getHouse()Ljava/lang/String;

    move-result-object v12

    .line 922
    #calls: Lcom/waze/navigate/DriveToNativeManager;->navigateNTV(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v13}, Lcom/waze/navigate/DriveToNativeManager;->access$30(Lcom/waze/navigate/DriveToNativeManager;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    return-void
.end method
