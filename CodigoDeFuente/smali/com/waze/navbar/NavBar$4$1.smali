.class Lcom/waze/navbar/NavBar$4$1;
.super Ljava/lang/Object;
.source "NavBar.java"

# interfaces
.implements Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navbar/NavBar$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navbar/NavBar$4;

.field private final synthetic val$imageArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/waze/navbar/NavBar$4;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    iput-object p2, p0, Lcom/waze/navbar/NavBar$4$1;->val$imageArray:Ljava/util/ArrayList;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v0}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v0

    #getter for: Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$10(Lcom/waze/navbar/NavBar;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v1}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v1

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v2}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v2

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->venueDeleteImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v0}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v0

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/waze/reports/VenueData;->removeImage(I)Z

    .line 252
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4$1;->val$imageArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 253
    if-nez p1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v0}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v1}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v1

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v1

    #calls: Lcom/waze/navbar/NavBar;->updateVenueImages(Lcom/waze/reports/VenueData;)V
    invoke-static {v0, v1}, Lcom/waze/navbar/NavBar;->access$11(Lcom/waze/navbar/NavBar;Lcom/waze/reports/VenueData;)V

    .line 256
    :cond_0
    return-void
.end method

.method public onFlag(II)V
    .locals 3
    .parameter "position"
    .parameter "reason"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v0}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v0

    #getter for: Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$10(Lcom/waze/navbar/NavBar;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v1}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v1

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v2}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v2

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2, p2}, Lcom/waze/NativeManager;->venueFlagImage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v0}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v0

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/waze/reports/VenueData;->removeImage(I)Z

    .line 241
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4$1;->val$imageArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 242
    if-nez p1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v0}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v1}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v1

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v1

    #calls: Lcom/waze/navbar/NavBar;->updateVenueImages(Lcom/waze/reports/VenueData;)V
    invoke-static {v0, v1}, Lcom/waze/navbar/NavBar;->access$11(Lcom/waze/navbar/NavBar;Lcom/waze/reports/VenueData;)V

    .line 245
    :cond_0
    return-void
.end method

.method public onLike(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v0}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v0

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 261
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v0}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v0

    #getter for: Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$10(Lcom/waze/navbar/NavBar;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v1}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v1

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v2}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v2

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->venueLikeImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public onScroll(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 233
    return-void
.end method

.method public onUnlike(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v0}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v0

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v0

    iget-object v0, v0, Lcom/waze/reports/VenueData;->imageLiked:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 267
    iget-object v0, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v0}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v0

    #getter for: Lcom/waze/navbar/NavBar;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navbar/NavBar;->access$10(Lcom/waze/navbar/NavBar;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v1}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v1

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v1}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v1

    iget-object v1, v1, Lcom/waze/reports/VenueData;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/navbar/NavBar$4$1;->this$1:Lcom/waze/navbar/NavBar$4;

    #getter for: Lcom/waze/navbar/NavBar$4;->this$0:Lcom/waze/navbar/NavBar;
    invoke-static {v2}, Lcom/waze/navbar/NavBar$4;->access$0(Lcom/waze/navbar/NavBar$4;)Lcom/waze/navbar/NavBar;

    move-result-object v2

    #getter for: Lcom/waze/navbar/NavBar;->mFoundVenue:Lcom/waze/reports/VenueData;
    invoke-static {v2}, Lcom/waze/navbar/NavBar;->access$5(Lcom/waze/navbar/NavBar;)Lcom/waze/reports/VenueData;

    move-result-object v2

    iget-object v2, v2, Lcom/waze/reports/VenueData;->imageURLs:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->venueUnlikeImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method
