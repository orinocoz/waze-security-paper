.class Lcom/waze/navbar/NavBar$1;
.super Landroid/os/Handler;
.source "NavBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navbar/NavBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navbar/NavBar;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    if-ne v0, v1, :cond_6

    .line 108
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->dtnm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$0(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 109
    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v2, v2, Lcom/waze/navbar/NavBar;->mHandler:Landroid/os/Handler;

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 111
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 113
    .local v8, b:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mPhotoGallery:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$1(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/PlacePhotoGallery;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mPhotoGallery:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$1(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/PlacePhotoGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/reports/PlacePhotoGallery;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v1, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    const-string v0, "address_item"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    #setter for: Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1, v0}, Lcom/waze/navbar/NavBar;->access$2(Lcom/waze/navbar/NavBar;Lcom/waze/navigate/AddressItem;)V

    .line 115
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$3(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$3(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v1, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$3(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    #setter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0, v1}, Lcom/waze/navbar/NavBar;->access$4(Lcom/waze/navbar/NavBar;Lcom/waze/reports/VenueData;)V

    .line 119
    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget v0, v0, Lcom/waze/reports/VenueData;->numImages:I

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v10, imageArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/PhotoPagerSection$VenueImage;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget v0, v0, Lcom/waze/reports/VenueData;->numImages:I

    if-lt v9, v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mPhotoGallery:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$1(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/PlacePhotoGallery;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/waze/reports/PlacePhotoGallery;->updateImages(Ljava/util/ArrayList;)V

    .line 158
    .end local v8           #b:Landroid/os/Bundle;
    .end local v9           #i:I
    .end local v10           #imageArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/PhotoPagerSection$VenueImage;>;"
    :cond_0
    :goto_1
    return-void

    .line 121
    .restart local v8       #b:Landroid/os/Bundle;
    .restart local v9       #i:I
    .restart local v10       #imageArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/PhotoPagerSection$VenueImage;>;"
    :cond_1
    new-instance v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;

    iget-object v1, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v1, v1, v9

    .line 122
    iget-object v2, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v3}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v3

    iget-object v3, v3, Lcom/waze/reports/VenueData;->imageReporters:[Ljava/lang/String;

    aget-object v3, v3, v9

    .line 123
    iget-object v4, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v4}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v4

    iget-object v4, v4, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    aget-object v4, v4, v9

    iget-object v5, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v5}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v5

    iget-object v5, v5, Lcom/waze/reports/VenueData;->imageLiked:[Z

    aget-boolean v5, v5, v9

    .line 124
    iget-object v6, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v6}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/reports/VenueData;->imageByMe:[Z

    aget-boolean v6, v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/waze/reports/PhotoPagerSection$VenueImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 121
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 131
    .end local v9           #i:I
    .end local v10           #imageArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/PhotoPagerSection$VenueImage;>;"
    :cond_2
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    const/4 v1, 0x1

    #setter for: Lcom/waze/navbar/NavBar;->mReceivedSearchResult:Z
    invoke-static {v0, v1}, Lcom/waze/navbar/NavBar;->access$6(Lcom/waze/navbar/NavBar;Z)V

    .line 132
    const/4 v11, 0x0

    .line 134
    .local v11, numImages:I
    iget-object v1, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    const-string v0, "address_item"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    #setter for: Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1, v0}, Lcom/waze/navbar/NavBar;->access$2(Lcom/waze/navbar/NavBar;Lcom/waze/navigate/AddressItem;)V

    .line 135
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$3(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$3(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    if-eqz v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v1, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$3(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    #setter for: Lcom/waze/navbar/NavBar;->mVenueID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/waze/navbar/NavBar;->access$7(Lcom/waze/navbar/NavBar;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v1, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$3(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    #setter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0, v1}, Lcom/waze/navbar/NavBar;->access$4(Lcom/waze/navbar/NavBar;Lcom/waze/reports/VenueData;)V

    .line 138
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mSaveNav:Z
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$8(Lcom/waze/navbar/NavBar;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #setter for: Lcom/waze/navbar/NavBar;->mSaveNav:Z
    invoke-static {v0, v7}, Lcom/waze/navbar/NavBar;->access$9(Lcom/waze/navbar/NavBar;Z)V

    .line 140
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$10(Lcom/waze/navbar/NavBar;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->venueSaveNav(Lcom/waze/reports/VenueData;)V

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v1, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$3(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    #calls: Lcom/waze/navbar/NavBar;->updateVenueImages(Lcom/waze/reports/VenueData;)V
    invoke-static {v0, v1}, Lcom/waze/navbar/NavBar;->access$11(Lcom/waze/navbar/NavBar;Lcom/waze/reports/VenueData;)V

    .line 143
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$3(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$3(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v11, v0, Lcom/waze/reports/VenueData;->numImages:I

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->nearingDisplayed:Z
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$12(Lcom/waze/navbar/NavBar;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v1, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v1, v1, Lcom/waze/navbar/NavBar;->destinationData:Lcom/waze/main/navigate/LocationData;

    #calls: Lcom/waze/navbar/NavBar;->openNearingDest(Lcom/waze/main/navigate/LocationData;I)V
    invoke-static {v0, v1, v11}, Lcom/waze/navbar/NavBar;->access$13(Lcom/waze/navbar/NavBar;Lcom/waze/main/navigate/LocationData;I)V

    .line 150
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    #calls: Lcom/waze/navbar/NavBar;->animateNearingDestinationIn()V
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$14(Lcom/waze/navbar/NavBar;)V

    goto/16 :goto_1

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v1, p0, Lcom/waze/navbar/NavBar$1;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v1, v1, Lcom/waze/navbar/NavBar;->destinationData:Lcom/waze/main/navigate/LocationData;

    #calls: Lcom/waze/navbar/NavBar;->openNearingDest(Lcom/waze/main/navigate/LocationData;I)V
    invoke-static {v0, v1, v11}, Lcom/waze/navbar/NavBar;->access$13(Lcom/waze/navbar/NavBar;Lcom/waze/main/navigate/LocationData;I)V

    goto/16 :goto_1

    .line 157
    .end local v8           #b:Landroid/os/Bundle;
    .end local v11           #numImages:I
    :cond_6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1
.end method
