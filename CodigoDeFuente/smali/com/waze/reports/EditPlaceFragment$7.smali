.class Lcom/waze/reports/EditPlaceFragment$7;
.super Ljava/lang/Object;
.source "EditPlaceFragment.java"

# interfaces
.implements Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditPlaceFragment;->setUpFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditPlaceFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditPlaceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 491
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$12(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/NativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v3}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v3

    iget-object v3, v3, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v4}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v4

    iget-object v4, v4, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/waze/NativeManager;->venueDeleteImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget v2, v2, Lcom/waze/reports/VenueData;->numImages:I

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v3}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v3

    iget v3, v3, Lcom/waze/reports/VenueData;->numNewImages:I

    sub-int/2addr v2, v3

    sub-int v0, p1, v2

    .line 493
    .local v0, idPos:I
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/waze/reports/VenueData;->removeNewImageId(I)Z

    .line 495
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/waze/reports/VenueData;->removeImage(I)Z

    .line 496
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$13(Lcom/waze/reports/EditPlaceFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 498
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mPhotoPagerSection:Lcom/waze/reports/PhotoPagerSection;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$14(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/PhotoPagerSection;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/waze/reports/EditPlaceFragment;->access$13(Lcom/waze/reports/EditPlaceFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/reports/PhotoPagerSection;->venueUpdated(Ljava/util/ArrayList;)V

    .line 500
    sget-object v2, Lcom/waze/reports/EditPlacePointsHolder$PointsType;->Images:Lcom/waze/reports/EditPlacePointsHolder$PointsType;

    invoke-static {v2}, Lcom/waze/reports/EditPlacePointsHolder;->getPoints(Lcom/waze/reports/EditPlacePointsHolder$PointsType;)I

    move-result v1

    .line 501
    .local v1, pts:I
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$4(Lcom/waze/reports/EditPlaceFragment;)I

    move-result v3

    sub-int/2addr v3, v1

    #setter for: Lcom/waze/reports/EditPlaceFragment;->mEarnedPoints:I
    invoke-static {v2, v3}, Lcom/waze/reports/EditPlaceFragment;->access$5(Lcom/waze/reports/EditPlaceFragment;I)V

    .line 502
    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    invoke-virtual {v2}, Lcom/waze/reports/EditPlaceFragment;->updatePoints()V

    .line 503
    return-void
.end method

.method public onFlag(II)V
    .locals 3
    .parameter "position"
    .parameter "reason"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$12(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2, p2}, Lcom/waze/NativeManager;->venueFlagImage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 484
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/waze/reports/VenueData;->removeImage(I)Z

    .line 485
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$13(Lcom/waze/reports/EditPlaceFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 486
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mPhotoPagerSection:Lcom/waze/reports/PhotoPagerSection;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$14(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/PhotoPagerSection;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFragment;->access$13(Lcom/waze/reports/EditPlaceFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/reports/PhotoPagerSection;->venueUpdated(Ljava/util/ArrayList;)V

    .line 487
    return-void
.end method

.method public onLike(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 508
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$12(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->venueLikeImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public onScroll(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 478
    return-void
.end method

.method public onUnlike(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 514
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mNm:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/reports/EditPlaceFragment;->access$12(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceFragment$7;->this$0:Lcom/waze/reports/EditPlaceFragment;

    #getter for: Lcom/waze/reports/EditPlaceFragment;->mVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/reports/EditPlaceFragment;->access$0(Lcom/waze/reports/EditPlaceFragment;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->venueUnlikeImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    return-void
.end method
