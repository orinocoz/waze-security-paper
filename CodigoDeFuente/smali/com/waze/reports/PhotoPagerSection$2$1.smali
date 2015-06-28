.class Lcom/waze/reports/PhotoPagerSection$2$1;
.super Ljava/lang/Object;
.source "PhotoPagerSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/PhotoPagerSection$2;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/reports/PhotoPagerSection$2;

.field private final synthetic val$listener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

.field private final synthetic val$vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;


# direct methods
.method constructor <init>(Lcom/waze/reports/PhotoPagerSection$2;Lcom/waze/reports/PhotoPagerSection$VenueImage;Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/PhotoPagerSection$2$1;->this$1:Lcom/waze/reports/PhotoPagerSection$2;

    iput-object p2, p0, Lcom/waze/reports/PhotoPagerSection$2$1;->val$vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;

    iput-object p3, p0, Lcom/waze/reports/PhotoPagerSection$2$1;->val$listener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/PhotoPagerSection$2$1;)Lcom/waze/reports/PhotoPagerSection$2;
    .locals 1
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$2$1;->this$1:Lcom/waze/reports/PhotoPagerSection$2;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 251
    iget-object v2, p0, Lcom/waze/reports/PhotoPagerSection$2$1;->this$1:Lcom/waze/reports/PhotoPagerSection$2;

    iget-object v3, p0, Lcom/waze/reports/PhotoPagerSection$2$1;->val$vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;

    #calls: Lcom/waze/reports/PhotoPagerSection$2;->getImagePosition(Lcom/waze/reports/PhotoPagerSection$VenueImage;)I
    invoke-static {v2, v3}, Lcom/waze/reports/PhotoPagerSection$2;->access$0(Lcom/waze/reports/PhotoPagerSection$2;Lcom/waze/reports/PhotoPagerSection$VenueImage;)I

    move-result v0

    .line 252
    .local v0, position:I
    if-gez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/waze/reports/PhotoPagerSection$2$1;->this$1:Lcom/waze/reports/PhotoPagerSection$2;

    #getter for: Lcom/waze/reports/PhotoPagerSection$2;->this$0:Lcom/waze/reports/PhotoPagerSection;
    invoke-static {v2}, Lcom/waze/reports/PhotoPagerSection$2;->access$1(Lcom/waze/reports/PhotoPagerSection$2;)Lcom/waze/reports/PhotoPagerSection;

    move-result-object v2

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mViewPager:Lcom/waze/ifs/ui/WazeViewPager;
    invoke-static {v2}, Lcom/waze/reports/PhotoPagerSection;->access$0(Lcom/waze/reports/PhotoPagerSection;)Lcom/waze/ifs/ui/WazeViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/ifs/ui/WazeViewPager;->getCurrentItem()I

    move-result v1

    .line 255
    .local v1, selPoition:I
    if-eq v0, v1, :cond_1

    .line 257
    iget-object v2, p0, Lcom/waze/reports/PhotoPagerSection$2$1;->this$1:Lcom/waze/reports/PhotoPagerSection$2;

    #getter for: Lcom/waze/reports/PhotoPagerSection$2;->this$0:Lcom/waze/reports/PhotoPagerSection;
    invoke-static {v2}, Lcom/waze/reports/PhotoPagerSection$2;->access$1(Lcom/waze/reports/PhotoPagerSection$2;)Lcom/waze/reports/PhotoPagerSection;

    move-result-object v2

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mViewPager:Lcom/waze/ifs/ui/WazeViewPager;
    invoke-static {v2}, Lcom/waze/reports/PhotoPagerSection;->access$0(Lcom/waze/reports/PhotoPagerSection;)Lcom/waze/ifs/ui/WazeViewPager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/waze/reports/PhotoPagerSection$2$1;->this$1:Lcom/waze/reports/PhotoPagerSection$2;

    #getter for: Lcom/waze/reports/PhotoPagerSection$2;->this$0:Lcom/waze/reports/PhotoPagerSection;
    invoke-static {v2}, Lcom/waze/reports/PhotoPagerSection$2;->access$1(Lcom/waze/reports/PhotoPagerSection$2;)Lcom/waze/reports/PhotoPagerSection;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/reports/PhotoPagerSection$2$1;->this$1:Lcom/waze/reports/PhotoPagerSection$2;

    #getter for: Lcom/waze/reports/PhotoPagerSection$2;->this$0:Lcom/waze/reports/PhotoPagerSection;
    invoke-static {v3}, Lcom/waze/reports/PhotoPagerSection$2;->access$1(Lcom/waze/reports/PhotoPagerSection$2;)Lcom/waze/reports/PhotoPagerSection;

    move-result-object v3

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/waze/reports/PhotoPagerSection;->access$2(Lcom/waze/reports/PhotoPagerSection;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/reports/PhotoPagerSection$2$1;->val$listener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    iget-object v5, p0, Lcom/waze/reports/PhotoPagerSection$2$1;->this$1:Lcom/waze/reports/PhotoPagerSection$2;

    #getter for: Lcom/waze/reports/PhotoPagerSection$2;->this$0:Lcom/waze/reports/PhotoPagerSection;
    invoke-static {v5}, Lcom/waze/reports/PhotoPagerSection$2;->access$1(Lcom/waze/reports/PhotoPagerSection$2;)Lcom/waze/reports/PhotoPagerSection;

    move-result-object v5

    iget-object v5, v5, Lcom/waze/reports/PhotoPagerSection;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-static {p1, v3, v0, v4, v5}, Lcom/waze/reports/PhotoPagerSection;->openPlacePhotoGalleryFromView(Landroid/view/View;Ljava/util/ArrayList;ILcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;Lcom/waze/ifs/ui/ActivityBase;)Lcom/waze/reports/PlacePhotoGallery;

    move-result-object v3

    #setter for: Lcom/waze/reports/PhotoPagerSection;->mGallery:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v2, v3}, Lcom/waze/reports/PhotoPagerSection;->access$3(Lcom/waze/reports/PhotoPagerSection;Lcom/waze/reports/PlacePhotoGallery;)V

    .line 262
    iget-object v2, p0, Lcom/waze/reports/PhotoPagerSection$2$1;->this$1:Lcom/waze/reports/PhotoPagerSection$2;

    #getter for: Lcom/waze/reports/PhotoPagerSection$2;->this$0:Lcom/waze/reports/PhotoPagerSection;
    invoke-static {v2}, Lcom/waze/reports/PhotoPagerSection$2;->access$1(Lcom/waze/reports/PhotoPagerSection$2;)Lcom/waze/reports/PhotoPagerSection;

    move-result-object v2

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mGallery:Lcom/waze/reports/PlacePhotoGallery;
    invoke-static {v2}, Lcom/waze/reports/PhotoPagerSection;->access$4(Lcom/waze/reports/PhotoPagerSection;)Lcom/waze/reports/PlacePhotoGallery;

    move-result-object v2

    new-instance v3, Lcom/waze/reports/PhotoPagerSection$2$1$1;

    invoke-direct {v3, p0}, Lcom/waze/reports/PhotoPagerSection$2$1$1;-><init>(Lcom/waze/reports/PhotoPagerSection$2$1;)V

    invoke-virtual {v2, v3}, Lcom/waze/reports/PlacePhotoGallery;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method
