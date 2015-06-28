.class Lcom/waze/navigate/AddressPreviewActivity$21$1;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity$21;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

.field private final synthetic val$placeImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity$21;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    iput-object p2, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->val$placeImage:Landroid/widget/ImageView;

    .line 1261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    .line 1293
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v2, v2, p1

    .line 1292
    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->venueDeleteImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    invoke-virtual {v0, p1}, Lcom/waze/reports/VenueData;->removeImage(I)Z

    .line 1295
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$27(Lcom/waze/navigate/AddressPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1297
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v0, v0, Lcom/waze/reports/VenueData;->numImages:I

    if-lez v0, :cond_1

    .line 1298
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mGallery:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$28(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/reports/PlacePhotoGallery;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$27(Lcom/waze/navigate/AddressPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/reports/PlacePhotoGallery;->updateImages(Ljava/util/ArrayList;)V

    .line 1303
    :goto_0
    if-nez p1, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v0, v0, Lcom/waze/reports/VenueData;->numImages:I

    if-lez v0, :cond_2

    .line 1305
    sget-object v1, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$27(Lcom/waze/navigate/AddressPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;

    iget-object v0, v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->imageUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->val$placeImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1310
    :cond_0
    :goto_1
    return-void

    .line 1300
    :cond_1
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mGallery:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$28(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/reports/PlacePhotoGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/reports/PlacePhotoGallery;->dismiss()V

    goto :goto_0

    .line 1307
    :cond_2
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$11(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onFlag(II)V
    .locals 3
    .parameter "position"
    .parameter "reason"

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    .line 1270
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v2, v2, p1

    .line 1269
    invoke-virtual {v0, v1, v2, p2}, Lcom/waze/NativeManager;->venueFlagImage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1271
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    invoke-virtual {v0, p1}, Lcom/waze/reports/VenueData;->removeImage(I)Z

    .line 1272
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$27(Lcom/waze/navigate/AddressPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1274
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v0, v0, Lcom/waze/reports/VenueData;->numImages:I

    if-lez v0, :cond_1

    .line 1275
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mGallery:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$28(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/reports/PlacePhotoGallery;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$27(Lcom/waze/navigate/AddressPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/reports/PlacePhotoGallery;->updateImages(Ljava/util/ArrayList;)V

    .line 1280
    :goto_0
    if-nez p1, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget v0, v0, Lcom/waze/reports/VenueData;->numImages:I

    if-lez v0, :cond_2

    .line 1282
    sget-object v1, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$27(Lcom/waze/navigate/AddressPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;

    iget-object v0, v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->imageUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->val$placeImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1287
    :cond_0
    :goto_1
    return-void

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mGallery:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$28(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/reports/PlacePhotoGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/reports/PlacePhotoGallery;->dismiss()V

    goto :goto_0

    .line 1284
    :cond_2
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$11(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onLike(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v0, v0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1315
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    .line 1316
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v2, v2, p1

    .line 1315
    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->venueLikeImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    return-void
.end method

.method public onScroll(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1264
    return-void
.end method

.method public onUnlike(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v0, v0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 1322
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    .line 1323
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$21$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$21;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity$21;->access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v2

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v2, v2, p1

    .line 1322
    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->venueUnlikeImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    return-void
.end method
