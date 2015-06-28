.class Lcom/waze/reports/PlacePhotoGallery$2$4;
.super Ljava/lang/Object;
.source "PlacePhotoGallery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/PlacePhotoGallery$2;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/PlacePhotoGallery$2;

.field private final synthetic val$likeView:Landroid/widget/ImageButton;

.field private final synthetic val$vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;


# direct methods
.method constructor <init>(Lcom/waze/reports/PlacePhotoGallery$2;Lcom/waze/reports/PhotoPagerSection$VenueImage;Landroid/widget/ImageButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/PlacePhotoGallery$2$4;->this$1:Lcom/waze/reports/PlacePhotoGallery$2;

    iput-object p2, p0, Lcom/waze/reports/PlacePhotoGallery$2$4;->val$vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;

    iput-object p3, p0, Lcom/waze/reports/PlacePhotoGallery$2$4;->val$likeView:Landroid/widget/ImageButton;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 231
    iget-object v1, p0, Lcom/waze/reports/PlacePhotoGallery$2$4;->this$1:Lcom/waze/reports/PlacePhotoGallery$2;

    iget-object v2, p0, Lcom/waze/reports/PlacePhotoGallery$2$4;->val$vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;

    invoke-virtual {v1, v2}, Lcom/waze/reports/PlacePhotoGallery$2;->getImagePosition(Lcom/waze/reports/PhotoPagerSection$VenueImage;)I

    move-result v0

    .line 232
    .local v0, position:I
    if-gez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/waze/reports/PlacePhotoGallery$2$4;->val$vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;

    iget-boolean v1, v1, Lcom/waze/reports/PhotoPagerSection$VenueImage;->didLike:Z

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/waze/reports/PlacePhotoGallery$2$4;->val$vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/waze/reports/PhotoPagerSection$VenueImage;->didLike:Z

    .line 235
    iget-object v1, p0, Lcom/waze/reports/PlacePhotoGallery$2$4;->val$likeView:Landroid/widget/ImageButton;

    const v2, 0x7f0202a9

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 236
    iget-object v1, p0, Lcom/waze/reports/PlacePhotoGallery$2$4;->this$1:Lcom/waze/reports/PlacePhotoGallery$2;

    #getter for: Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v1}, Lcom/waze/reports/PlacePhotoGallery$2;->access$0(Lcom/waze/reports/PlacePhotoGallery$2;)Lcom/waze/reports/PlacePhotoGallery;

    move-result-object v1

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;
    invoke-static {v1}, Lcom/waze/reports/PlacePhotoGallery;->access$6(Lcom/waze/reports/PlacePhotoGallery;)Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;->onUnlike(I)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/waze/reports/PlacePhotoGallery$2$4;->val$vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/waze/reports/PhotoPagerSection$VenueImage;->didLike:Z

    .line 239
    iget-object v1, p0, Lcom/waze/reports/PlacePhotoGallery$2$4;->val$likeView:Landroid/widget/ImageButton;

    const v2, 0x7f0202aa

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 240
    iget-object v1, p0, Lcom/waze/reports/PlacePhotoGallery$2$4;->this$1:Lcom/waze/reports/PlacePhotoGallery$2;

    #getter for: Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v1}, Lcom/waze/reports/PlacePhotoGallery$2;->access$0(Lcom/waze/reports/PlacePhotoGallery$2;)Lcom/waze/reports/PlacePhotoGallery;

    move-result-object v1

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;
    invoke-static {v1}, Lcom/waze/reports/PlacePhotoGallery;->access$6(Lcom/waze/reports/PlacePhotoGallery;)Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;->onLike(I)V

    goto :goto_0
.end method
