.class Lcom/waze/reports/PlacePhotoGallery$2$3;
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

.field private final synthetic val$vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;


# direct methods
.method constructor <init>(Lcom/waze/reports/PlacePhotoGallery$2;Lcom/waze/reports/PhotoPagerSection$VenueImage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/PlacePhotoGallery$2$3;->this$1:Lcom/waze/reports/PlacePhotoGallery$2;

    iput-object p2, p0, Lcom/waze/reports/PlacePhotoGallery$2$3;->val$vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/waze/reports/PlacePhotoGallery$2$3;->this$1:Lcom/waze/reports/PlacePhotoGallery$2;

    iget-object v2, p0, Lcom/waze/reports/PlacePhotoGallery$2$3;->val$vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;

    invoke-virtual {v1, v2}, Lcom/waze/reports/PlacePhotoGallery$2;->getImagePosition(Lcom/waze/reports/PhotoPagerSection$VenueImage;)I

    move-result v0

    .line 221
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 222
    iget-object v1, p0, Lcom/waze/reports/PlacePhotoGallery$2$3;->this$1:Lcom/waze/reports/PlacePhotoGallery$2;

    #getter for: Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v1}, Lcom/waze/reports/PlacePhotoGallery$2;->access$0(Lcom/waze/reports/PlacePhotoGallery$2;)Lcom/waze/reports/PlacePhotoGallery;

    move-result-object v1

    #calls: Lcom/waze/reports/PlacePhotoGallery;->areYouSureDelete(I)V
    invoke-static {v1, v0}, Lcom/waze/reports/PlacePhotoGallery;->access$5(Lcom/waze/reports/PlacePhotoGallery;I)V

    .line 223
    :cond_0
    return-void
.end method
