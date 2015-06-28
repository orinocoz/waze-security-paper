.class Lcom/waze/reports/PhotoPagerSection$2;
.super Lcom/waze/ifs/ui/WazePagerAdapter;
.source "PhotoPagerSection.java"


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

.field private final synthetic val$listener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;


# direct methods
.method constructor <init>(Lcom/waze/reports/PhotoPagerSection;Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/PhotoPagerSection$2;->this$0:Lcom/waze/reports/PhotoPagerSection;

    iput-object p2, p0, Lcom/waze/reports/PhotoPagerSection$2;->val$listener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    .line 191
    invoke-direct {p0}, Lcom/waze/ifs/ui/WazePagerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/PhotoPagerSection$2;Lcom/waze/reports/PhotoPagerSection$VenueImage;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/waze/reports/PhotoPagerSection$2;->getImagePosition(Lcom/waze/reports/PhotoPagerSection$VenueImage;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/waze/reports/PhotoPagerSection$2;)Lcom/waze/reports/PhotoPagerSection;
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$2;->this$0:Lcom/waze/reports/PhotoPagerSection;

    return-object v0
.end method

.method private getImagePosition(Lcom/waze/reports/PhotoPagerSection$VenueImage;)I
    .locals 1
    .parameter "vi"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$2;->this$0:Lcom/waze/reports/PhotoPagerSection;

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/reports/PhotoPagerSection;->access$2(Lcom/waze/reports/PhotoPagerSection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$2;->this$0:Lcom/waze/reports/PhotoPagerSection;

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/reports/PhotoPagerSection;->access$2(Lcom/waze/reports/PhotoPagerSection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 277
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 278
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$2;->this$0:Lcom/waze/reports/PhotoPagerSection;

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/reports/PhotoPagerSection;->access$2(Lcom/waze/reports/PhotoPagerSection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .parameter "object"

    .prologue
    .line 205
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 206
    .local v0, v:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/reports/PhotoPagerSection$VenueImage;

    .line 207
    .local v1, vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;
    invoke-direct {p0, v1}, Lcom/waze/reports/PhotoPagerSection$2;->getImagePosition(Lcom/waze/reports/PhotoPagerSection$VenueImage;)I

    move-result v2

    return v2
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9
    .parameter "container"
    .parameter "position"

    .prologue
    const v8, 0x3f59999a

    .line 221
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 222
    const v2, 0x7f0300b2

    const/4 v5, 0x0

    .line 221
    invoke-virtual {v0, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 224
    .local v6, layout:Landroid/view/View;
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection$2;->this$0:Lcom/waze/reports/PhotoPagerSection;

    #getter for: Lcom/waze/reports/PhotoPagerSection;->mImageArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/reports/PhotoPagerSection;->access$2(Lcom/waze/reports/PhotoPagerSection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/waze/reports/PhotoPagerSection$VenueImage;

    .line 226
    .local v7, vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;
    const v0, 0x7f090529

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/waze/view/map/ProgressAnimation;

    .line 228
    .local v4, pa:Lcom/waze/view/map/ProgressAnimation;
    iget-object v1, v7, Lcom/waze/reports/PhotoPagerSection$VenueImage;->imageThumbnailUri:Ljava/lang/String;

    .line 229
    .local v1, imageThumbnailUri:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    iget-object v1, v7, Lcom/waze/reports/PhotoPagerSection$VenueImage;->imageUri:Ljava/lang/String;

    .line 232
    :cond_1
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    invoke-virtual {v0, v1}, Lcom/waze/utils/ImageRepository;->isThumbnailCached(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 238
    :goto_0
    const v0, 0x7f09052a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 239
    .local v3, image:Landroid/widget/ImageView;
    sget-object v0, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/waze/reports/PhotoPagerSection$2;->this$0:Lcom/waze/reports/PhotoPagerSection;

    iget-object v5, v5, Lcom/waze/reports/PhotoPagerSection;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual/range {v0 .. v5}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 241
    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 244
    invoke-virtual {v6, v8}, Landroid/view/View;->setScaleX(F)V

    .line 245
    invoke-virtual {v6, v8}, Landroid/view/View;->setScaleY(F)V

    .line 247
    new-instance v0, Lcom/waze/reports/PhotoPagerSection$2$1;

    iget-object v2, p0, Lcom/waze/reports/PhotoPagerSection$2;->val$listener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    invoke-direct {v0, p0, v7, v2}, Lcom/waze/reports/PhotoPagerSection$2$1;-><init>(Lcom/waze/reports/PhotoPagerSection$2;Lcom/waze/reports/PhotoPagerSection$VenueImage;Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    return-object v6

    .line 235
    .end local v3           #image:Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {v4}, Lcom/waze/view/map/ProgressAnimation;->start()V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 195
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
