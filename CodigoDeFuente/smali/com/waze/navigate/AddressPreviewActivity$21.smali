.class Lcom/waze/navigate/AddressPreviewActivity$21;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;

.field private final synthetic val$placeImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    iput-object p2, p0, Lcom/waze/navigate/AddressPreviewActivity$21;->val$placeImage:Landroid/widget/ImageView;

    .line 1245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AddressPreviewActivity$21;)Lcom/waze/navigate/AddressPreviewActivity;
    .locals 1
    .parameter

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1249
    const-string v0, "ADDRESS_PREVIEW_IMAGE_CLICKED"

    const-string v1, "VENUE_ID"

    .line 1250
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v2, v2, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    .line 1249
    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-boolean v0, v0, Lcom/waze/reports/VenueData;->bHasMoreData:Z

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$26(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 1255
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$26(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 1256
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/navigate/AddressItem;->venueData:Lcom/waze/reports/VenueData;

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->venueGet(Ljava/lang/String;I)V

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 1260
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$27(Lcom/waze/navigate/AddressPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 1261
    new-instance v3, Lcom/waze/navigate/AddressPreviewActivity$21$1;

    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity$21;->val$placeImage:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Lcom/waze/navigate/AddressPreviewActivity$21$1;-><init>(Lcom/waze/navigate/AddressPreviewActivity$21;Landroid/widget/ImageView;)V

    .line 1325
    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity$21;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 1260
    invoke-static {p1, v1, v2, v3, v4}, Lcom/waze/reports/PhotoPagerSection;->openPlacePhotoGalleryFromView(Landroid/view/View;Ljava/util/ArrayList;ILcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;Lcom/waze/ifs/ui/ActivityBase;)Lcom/waze/reports/PlacePhotoGallery;

    move-result-object v1

    .line 1259
    #setter for: Lcom/waze/navigate/AddressPreviewActivity;->mGallery:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$29(Lcom/waze/navigate/AddressPreviewActivity;Lcom/waze/reports/PlacePhotoGallery;)V

    .line 1326
    return-void
.end method
