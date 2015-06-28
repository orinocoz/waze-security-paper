.class public Lcom/waze/reports/PhotoPagerSection;
.super Ljava/lang/Object;
.source "PhotoPagerSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/reports/PhotoPagerSection$DepthPageTransformer;,
        Lcom/waze/reports/PhotoPagerSection$VenueImage;,
        Lcom/waze/reports/PhotoPagerSection$ZoomOutPageTransformer;
    }
.end annotation


# static fields
.field private static final MIN_ALPHA:F = 0.8f

.field private static final MIN_SCALE:F = 0.85f


# instance fields
.field final mActivity:Lcom/waze/ifs/ui/ActivityBase;

.field private mAtLeast:Landroid/widget/TextView;

.field private mCameraButton:Landroid/widget/ImageButton;

.field private mGallery:Lcom/waze/reports/PlacePhotoGallery;

.field private mImageArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/reports/PhotoPagerSection$VenueImage;",
            ">;"
        }
    .end annotation
.end field

.field final mIsEdit:Z

.field private mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

.field private mNm:Lcom/waze/NativeManager;

.field private mPagerAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

.field private mProgress:Lcom/waze/view/map/ProgressAnimation;

.field mRoot:Landroid/view/View;

.field private mScreenWidth:I

.field private mViewPager:Lcom/waze/ifs/ui/WazeViewPager;


# direct methods
.method public constructor <init>(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;ZLandroid/view/View$OnClickListener;)V
    .locals 4
    .parameter "a"
    .parameter "root"
    .parameter "isEdit"
    .parameter "takeAnother"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    .line 105
    iput-object p1, p0, Lcom/waze/reports/PhotoPagerSection;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    .line 106
    iput-boolean p3, p0, Lcom/waze/reports/PhotoPagerSection;->mIsEdit:Z

    .line 107
    iput-object p2, p0, Lcom/waze/reports/PhotoPagerSection;->mRoot:Landroid/view/View;

    .line 108
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mNm:Lcom/waze/NativeManager;

    .line 109
    invoke-virtual {p1}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/waze/reports/PhotoPagerSection;->mScreenWidth:I

    .line 111
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mRoot:Landroid/view/View;

    const v2, 0x7f090525

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mAtLeast:Landroid/widget/TextView;

    .line 112
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mAtLeast:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/reports/PhotoPagerSection;->mNm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_ADD_A_PHOTO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mRoot:Landroid/view/View;

    const v2, 0x7f090526

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mCameraButton:Landroid/widget/ImageButton;

    .line 115
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mRoot:Landroid/view/View;

    const v2, 0x7f090527

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/map/ProgressAnimation;

    iput-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mProgress:Lcom/waze/view/map/ProgressAnimation;

    .line 119
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mRoot:Landroid/view/View;

    const v2, 0x7f090524

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/ifs/ui/WazeViewPager;

    iput-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mViewPager:Lcom/waze/ifs/ui/WazeViewPager;

    .line 120
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mViewPager:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v1}, Lcom/waze/ifs/ui/WazeViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 121
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/waze/reports/PhotoPagerSection;->mScreenWidth:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 122
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mViewPager:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v1, v0}, Lcom/waze/ifs/ui/WazeViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mViewPager:Lcom/waze/ifs/ui/WazeViewPager;

    const/4 v2, 0x1

    new-instance v3, Lcom/waze/reports/PhotoPagerSection$ZoomOutPageTransformer;

    invoke-direct {v3, p0}, Lcom/waze/reports/PhotoPagerSection$ZoomOutPageTransformer;-><init>(Lcom/waze/reports/PhotoPagerSection;)V

    invoke-virtual {v1, v2, v3}, Lcom/waze/ifs/ui/WazeViewPager;->setPageTransformer(ZLcom/waze/ifs/ui/WazeViewPager$PageTransformer;)V

    .line 126
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mViewPager:Lcom/waze/ifs/ui/WazeViewPager;

    iget v2, p0, Lcom/waze/reports/PhotoPagerSection;->mScreenWidth:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/WazeViewPager;->setPageMargin(I)V

    .line 127
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mViewPager:Lcom/waze/ifs/ui/WazeViewPager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/WazeViewPager;->setOffscreenPageLimit(I)V

    .line 128
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/PhotoPagerSection;)Lcom/waze/ifs/ui/WazeViewPager;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection;->mViewPager:Lcom/waze/ifs/ui/WazeViewPager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/reports/PhotoPagerSection;)Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection;->mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/reports/PhotoPagerSection;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection;->mImageArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/reports/PhotoPagerSection;Lcom/waze/reports/PlacePhotoGallery;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/waze/reports/PhotoPagerSection;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    return-void
.end method

.method static synthetic access$4(Lcom/waze/reports/PhotoPagerSection;)Lcom/waze/reports/PlacePhotoGallery;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/reports/PhotoPagerSection;)Lcom/waze/ifs/ui/WazePagerAdapter;
    .locals 1
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection;->mPagerAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    return-object v0
.end method

.method public static openPlacePhotoGalleryFromView(Landroid/view/View;Ljava/util/ArrayList;ILcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;Lcom/waze/ifs/ui/ActivityBase;)Lcom/waze/reports/PlacePhotoGallery;
    .locals 8
    .parameter "v"
    .parameter
    .parameter "position"
    .parameter "listener"
    .parameter "ab"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/reports/PhotoPagerSection$VenueImage;",
            ">;I",
            "Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;",
            "Lcom/waze/ifs/ui/ActivityBase;",
            ")",
            "Lcom/waze/reports/PlacePhotoGallery;"
        }
    .end annotation

    .prologue
    .local p1, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/PhotoPagerSection$VenueImage;>;"
    const/4 v7, 0x1

    .line 308
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v4, imageLocation:Landroid/os/Bundle;
    const/4 v1, 0x2

    new-array v6, v1, [I

    .line 310
    .local v6, location:[I
    invoke-virtual {p0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 311
    const-string v1, "left"

    const/4 v2, 0x0

    aget v2, v6, v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    const-string v1, "top"

    aget v2, v6, v7

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    const-string v1, "width"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string v1, "height"

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    new-instance v0, Lcom/waze/reports/PlacePhotoGallery;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/PlacePhotoGallery;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/os/Bundle;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 318
    .local v0, ppg:Lcom/waze/reports/PlacePhotoGallery;
    invoke-virtual {v0, p3}, Lcom/waze/reports/PlacePhotoGallery;->setListener(Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;)V

    .line 319
    invoke-virtual {v0, v7}, Lcom/waze/reports/PlacePhotoGallery;->setCanceledOnTouchOutside(Z)V

    .line 320
    invoke-virtual {v0}, Lcom/waze/reports/PlacePhotoGallery;->show()V

    .line 321
    return-object v0
.end method

.method private setupViewPager()V
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x3

    const/4 v2, 0x0

    .line 162
    new-instance v0, Lcom/waze/reports/PhotoPagerSection$1;

    invoke-direct {v0, p0}, Lcom/waze/reports/PhotoPagerSection$1;-><init>(Lcom/waze/reports/PhotoPagerSection;)V

    .line 191
    .local v0, listener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;
    new-instance v3, Lcom/waze/reports/PhotoPagerSection$2;

    invoke-direct {v3, p0, v0}, Lcom/waze/reports/PhotoPagerSection$2;-><init>(Lcom/waze/reports/PhotoPagerSection;Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;)V

    iput-object v3, p0, Lcom/waze/reports/PhotoPagerSection;->mPagerAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    .line 281
    iget-object v3, p0, Lcom/waze/reports/PhotoPagerSection;->mViewPager:Lcom/waze/ifs/ui/WazeViewPager;

    iget-object v4, p0, Lcom/waze/reports/PhotoPagerSection;->mPagerAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v3, v4}, Lcom/waze/ifs/ui/WazeViewPager;->setAdapter(Lcom/waze/ifs/ui/WazePagerAdapter;)V

    .line 282
    iget-object v3, p0, Lcom/waze/reports/PhotoPagerSection;->mViewPager:Lcom/waze/ifs/ui/WazeViewPager;

    iget-object v4, p0, Lcom/waze/reports/PhotoPagerSection;->mPagerAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v4}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItem(I)V

    .line 283
    iget-object v3, p0, Lcom/waze/reports/PhotoPagerSection;->mViewPager:Lcom/waze/ifs/ui/WazeViewPager;

    new-instance v4, Lcom/waze/reports/PhotoPagerSection$3;

    invoke-direct {v4, p0}, Lcom/waze/reports/PhotoPagerSection$3;-><init>(Lcom/waze/reports/PhotoPagerSection;)V

    .line 289
    const-wide/16 v5, 0xa

    .line 283
    invoke-virtual {v3, v4, v5, v6}, Lcom/waze/ifs/ui/WazeViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    iget-object v3, p0, Lcom/waze/reports/PhotoPagerSection;->mCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 292
    .local v1, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/waze/reports/PhotoPagerSection;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    invoke-virtual {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 294
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 295
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 301
    :goto_0
    iget-object v3, p0, Lcom/waze/reports/PhotoPagerSection;->mCameraButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iget-object v3, p0, Lcom/waze/reports/PhotoPagerSection;->mAtLeast:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/reports/PhotoPagerSection;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    return-void

    .line 297
    :cond_0
    invoke-virtual {v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 298
    const v3, 0x7f090524

    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 299
    iget-object v3, p0, Lcom/waze/reports/PhotoPagerSection;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, -0x3fc0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 303
    :cond_1
    const/16 v2, 0x8

    goto :goto_1
.end method


# virtual methods
.method public setInProgress(Z)V
    .locals 2
    .parameter "isInProgress"

    .prologue
    .line 400
    if-eqz p1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection;->mProgress:Lcom/waze/view/map/ProgressAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection;->mProgress:Lcom/waze/view/map/ProgressAnimation;

    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->start()V

    .line 403
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection;->mCameraButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 409
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection;->mProgress:Lcom/waze/view/map/ProgressAnimation;

    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->stop()V

    .line 406
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection;->mProgress:Lcom/waze/view/map/ProgressAnimation;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/waze/reports/PhotoPagerSection;->mCameraButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_0
.end method

.method public setVenue(Ljava/util/ArrayList;Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;)V
    .locals 0
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/reports/PhotoPagerSection$VenueImage;",
            ">;",
            "Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/PhotoPagerSection$VenueImage;>;"
    iput-object p2, p0, Lcom/waze/reports/PhotoPagerSection;->mListener:Lcom/waze/reports/PlacePhotoGallery$IPhotoGalleryListener;

    .line 132
    iput-object p1, p0, Lcom/waze/reports/PhotoPagerSection;->mImageArray:Ljava/util/ArrayList;

    .line 133
    invoke-direct {p0}, Lcom/waze/reports/PhotoPagerSection;->setupViewPager()V

    .line 134
    return-void
.end method

.method public venueUpdated(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/reports/PhotoPagerSection$VenueImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/PhotoPagerSection$VenueImage;>;"
    const/4 v0, 0x0

    .line 138
    .local v0, prevSize:I
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mImageArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/waze/reports/PhotoPagerSection;->mImageArray:Ljava/util/ArrayList;

    .line 142
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mPagerAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    if-eqz v1, :cond_1

    if-nez v0, :cond_3

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/waze/reports/PhotoPagerSection;->setupViewPager()V

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 153
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    iget-object v2, p0, Lcom/waze/reports/PhotoPagerSection;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/waze/reports/PlacePhotoGallery;->updateImages(Ljava/util/ArrayList;)V

    .line 159
    :cond_2
    :goto_1
    return-void

    .line 145
    :cond_3
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mImageArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 146
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mPagerAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;

    invoke-virtual {v1}, Lcom/waze/ifs/ui/WazePagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 148
    :cond_4
    invoke-direct {p0}, Lcom/waze/reports/PhotoPagerSection;->setupViewPager()V

    goto :goto_0

    .line 155
    :cond_5
    iget-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    invoke-virtual {v1}, Lcom/waze/reports/PlacePhotoGallery;->dismiss()V

    .line 156
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/reports/PhotoPagerSection;->mGallery:Lcom/waze/reports/PlacePhotoGallery;

    goto :goto_1
.end method
