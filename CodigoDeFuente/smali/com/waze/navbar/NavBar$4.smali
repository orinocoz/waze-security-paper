.class Lcom/waze/navbar/NavBar$4;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar;-><init>(Landroid/view/View;Lcom/waze/view/navbar/BottomBar;)V
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
    iput-object p1, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090456

    if-ne v0, v1, :cond_3

    .line 208
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget v0, v0, Lcom/waze/reports/VenueData;->numImages:I

    if-lez v0, :cond_3

    .line 210
    const-string v0, "PLACES_NEAR_DESTINATION_PHOTO_CLICKED"

    .line 211
    const-string v1, "VENUE_ID"

    iget-object v2, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mVenueID:Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/navbar/NavBar;->access$15(Lcom/waze/navbar/NavBar;)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/waze/reports/VenueData;->bHasMoreData:Z

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->dtnm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$0(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v2, v2, Lcom/waze/navbar/NavBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 216
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->dtnm:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$0(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v2, v2, Lcom/waze/navbar/NavBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 217
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$10(Lcom/waze/navbar/NavBar;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3}, Lcom/waze/NativeManager;->venueGet(Ljava/lang/String;IZ)V

    .line 221
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget v0, v0, Lcom/waze/reports/VenueData;->numImages:I

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v9, imageArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/PhotoPagerSection$VenueImage;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget v0, v0, Lcom/waze/reports/VenueData;->numImages:I

    if-lt v8, v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    .line 230
    new-instance v1, Lcom/waze/navbar/NavBar$4$1;

    invoke-direct {v1, p0, v9}, Lcom/waze/navbar/NavBar$4$1;-><init>(Lcom/waze/navbar/NavBar$4;Ljava/util/ArrayList;)V

    .line 269
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    .line 229
    invoke-static {p1, v9, v7, v1, v2}, Lcom/waze/reports/PhotoPagerSection;->openPlacePhotoGalleryFromView(Landroid/view/View;Ljava/util/ArrayList;ILcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;Lcom/waze/ifs/ui/ActivityBase;)Lcom/waze/reports/PlacePhotoGallery;

    move-result-object v1

    #setter for: Lcom/waze/navbar/NavBar;->mPhotoGallery:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v0, v1}, Lcom/waze/navbar/NavBar;->access$16(Lcom/waze/navbar/NavBar;Lcom/waze/reports/PlacePhotoGallery;)V

    .line 301
    .end local v8           #i:I
    .end local v9           #imageArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/PhotoPagerSection$VenueImage;>;"
    :cond_1
    :goto_1
    return-void

    .line 223
    .restart local v8       #i:I
    .restart local v9       #imageArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/PhotoPagerSection$VenueImage;>;"
    :cond_2
    new-instance v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;

    iget-object v1, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v1, v1, v8

    .line 224
    iget-object v2, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/reports/VenueData;->imageThumbnailURLs:[Ljava/lang/String;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v3}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v3

    iget-object v3, v3, Lcom/waze/reports/VenueData;->imageReporters:[Ljava/lang/String;

    aget-object v3, v3, v8

    .line 225
    iget-object v4, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v4}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v4

    iget-object v4, v4, Lcom/waze/reports/VenueData;->imageReporterMoods:[Ljava/lang/String;

    aget-object v4, v4, v8

    iget-object v5, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v5}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v5

    iget-object v5, v5, Lcom/waze/reports/VenueData;->imageLiked:[Z

    aget-boolean v5, v5, v8

    .line 226
    iget-object v6, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v6}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v6

    iget-object v6, v6, Lcom/waze/reports/VenueData;->imageByMe:[Z

    aget-boolean v6, v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/waze/reports/PhotoPagerSection$VenueImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 223
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 274
    .end local v8           #i:I
    .end local v9           #imageArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/PhotoPagerSection$VenueImage;>;"
    :cond_3
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->getInvisibleNTV()Z

    move-result v11

    .line 275
    .local v11, isinvisible:Z
    if-eqz v11, :cond_4

    .line 277
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    .line 279
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_CANNOT_REPORT_WHILE_INVISIBLE:Lcom/waze/strings/DisplayStrings;

    .line 278
    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v0, v1, v3}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 283
    :cond_4
    const-string v0, "PLACES_NEAR_DESTINATION_TAKE_PHOTO_CLICKED"

    .line 284
    const-string v1, "VENUE_ID"

    iget-object v2, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mVenueID:Ljava/lang/String;
    invoke-static {v2}, Lcom/waze/navbar/NavBar;->access$15(Lcom/waze/navbar/NavBar;)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v10, Landroid/content/Intent;

    iget-object v0, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mainView:Landroid/view/View;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$17(Lcom/waze/navbar/NavBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/waze/reports/AddPlaceFlowActivity;

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .local v10, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v0, v0, Lcom/waze/navbar/NavBar;->destinationData:Lcom/waze/main/navigate/LocationData;

    if-eqz v0, :cond_5

    .line 288
    const-string v0, "name"

    iget-object v1, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v1, v1, Lcom/waze/navbar/NavBar;->destinationData:Lcom/waze/main/navigate/LocationData;

    iget-object v1, v1, Lcom/waze/main/navigate/LocationData;->destinationName:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v0, "street"

    iget-object v1, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v1, v1, Lcom/waze/navbar/NavBar;->destinationData:Lcom/waze/main/navigate/LocationData;

    iget-object v1, v1, Lcom/waze/main/navigate/LocationData;->mStreet:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v0, "city"

    iget-object v1, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v1, v1, Lcom/waze/navbar/NavBar;->destinationData:Lcom/waze/main/navigate/LocationData;

    iget-object v1, v1, Lcom/waze/main/navigate/LocationData;->mCity:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v0, "x"

    iget-object v1, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v1, v1, Lcom/waze/navbar/NavBar;->destinationData:Lcom/waze/main/navigate/LocationData;

    iget v1, v1, Lcom/waze/main/navigate/LocationData;->locationX:I

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const-string v0, "y"

    iget-object v1, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    iget-object v1, v1, Lcom/waze/navbar/NavBar;->destinationData:Lcom/waze/main/navigate/LocationData;

    iget v1, v1, Lcom/waze/main/navigate/LocationData;->locationY:I

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$3(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$3(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    if-eqz v0, :cond_6

    .line 295
    const-string v0, "destination_venue_id"

    iget-object v1, p0, Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;

    #getter for: Lcom/waze/navbar/NavBar;->mDestAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$3(Lcom/waze/navbar/NavBar;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    :cond_6
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 298
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 299
    const v1, 0x8011

    .line 298
    invoke-virtual {v0, v10, v1}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1
.end method
