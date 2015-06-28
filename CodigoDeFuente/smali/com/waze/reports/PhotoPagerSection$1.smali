.class Lcom/waze/reports/PhotoPagerSection$1;
.super Ljava/lang/Object;
.source "PhotoPagerSection.java"

# interfaces
.implements Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/PhotoPagerSection;->setupViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/PhotoPagerSection;


# direct methods
.method constructor <init>(Lcom/waze/reports/PhotoPagerSection;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/PhotoPagerSection$1;->this$0:Lcom/waze/reports/PhotoPagerSection;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$1;->this$0:Lcom/waze/reports/PhotoPagerSection;

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;
    invoke-static {v0}, Lcom/waze/reports/PhotoPagerSection;->access$1(Lcom/waze/reports/PhotoPagerSection;)Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;->onDelete(I)V

    .line 178
    return-void
.end method

.method public onFlag(II)V
    .locals 1
    .parameter "position"
    .parameter "reason"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$1;->this$0:Lcom/waze/reports/PhotoPagerSection;

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;
    invoke-static {v0}, Lcom/waze/reports/PhotoPagerSection;->access$1(Lcom/waze/reports/PhotoPagerSection;)Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;->onFlag(II)V

    .line 173
    return-void
.end method

.method public onLike(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$1;->this$0:Lcom/waze/reports/PhotoPagerSection;

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;
    invoke-static {v0}, Lcom/waze/reports/PhotoPagerSection;->access$1(Lcom/waze/reports/PhotoPagerSection;)Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;->onLike(I)V

    .line 183
    return-void
.end method

.method public onScroll(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$1;->this$0:Lcom/waze/reports/PhotoPagerSection;

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mViewPager:Lcom/waze/ifs/ui/WazeViewPager;
    invoke-static {v0}, Lcom/waze/reports/PhotoPagerSection;->access$0(Lcom/waze/reports/PhotoPagerSection;)Lcom/waze/ifs/ui/WazeViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItem(IZ)V

    .line 167
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$1;->this$0:Lcom/waze/reports/PhotoPagerSection;

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;
    invoke-static {v0}, Lcom/waze/reports/PhotoPagerSection;->access$1(Lcom/waze/reports/PhotoPagerSection;)Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;->onScroll(I)V

    .line 168
    return-void
.end method

.method public onUnlike(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$1;->this$0:Lcom/waze/reports/PhotoPagerSection;

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;
    invoke-static {v0}, Lcom/waze/reports/PhotoPagerSection;->access$1(Lcom/waze/reports/PhotoPagerSection;)Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;->onUnlike(I)V

    .line 188
    return-void
.end method
