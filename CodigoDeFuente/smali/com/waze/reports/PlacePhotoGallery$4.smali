.class Lcom/waze/reports/PlacePhotoGallery$4;
.super Ljava/lang/Object;
.source "PlacePhotoGallery.java"

# interfaces
.implements Lcom/waze/ifs/ui/WazeViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/PlacePhotoGallery;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/os/Bundle;Lcom/waze/ifs/ui/ActivityBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/PlacePhotoGallery;


# direct methods
.method constructor <init>(Lcom/waze/reports/PlacePhotoGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/PlacePhotoGallery$4;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 304
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 301
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery$4;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;
    invoke-static {v0}, Lcom/waze/reports/PlacePhotoGallery;->access$6(Lcom/waze/reports/PlacePhotoGallery;)Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery$4;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;
    invoke-static {v0}, Lcom/waze/reports/PlacePhotoGallery;->access$6(Lcom/waze/reports/PlacePhotoGallery;)Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;->onScroll(I)V

    .line 298
    :cond_0
    return-void
.end method
