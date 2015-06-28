.class final Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProcessCaptureFullSize"
.end annotation


# instance fields
.field private final aData:[B

.field final synthetic this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;


# direct methods
.method private constructor <init>(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;[B)V
    .locals 0
    .parameter
    .parameter "aData"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p2, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->aData:[B

    .line 501
    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;[BLcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 499
    invoke-direct {p0, p1, p2}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;-><init>(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;[B)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;)Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;
    .locals 1
    .parameter

    .prologue
    .line 496
    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 505
    iget-object v10, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->aData:[B

    invoke-static {v10}, Lcom/waze/ifs/ui/CameraPreview$Exif;->getOrientation([B)I

    move-result v3

    .line 507
    .local v3, degrees:I
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 508
    .local v5, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 509
    iget-object v10, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->aData:[B

    iget-object v11, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->aData:[B

    array-length v11, v11

    invoke-static {v10, v9, v11, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 511
    invoke-static {}, Lcom/waze/ifs/ui/CameraPreview;->access$0()Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    move-result-object v10

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageHeight:I
    invoke-static {v10}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$0(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v0

    .line 512
    .local v0, capHeight:I
    invoke-static {}, Lcom/waze/ifs/ui/CameraPreview;->access$0()Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    move-result-object v10

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageWidth:I
    invoke-static {v10}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v1

    .line 514
    .local v1, capWidth:I
    if-le v0, v1, :cond_1

    move v7, v8

    .line 515
    .local v7, requiredPortrait:Z
    :goto_0
    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v10, v11, :cond_2

    move v2, v8

    .line 519
    .local v2, capturedPortrait:Z
    :goto_1
    if-ne v7, v2, :cond_3

    .line 521
    :try_start_0
    new-instance v6, Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v9}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v9

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mLeft:F
    invoke-static {v9}, Lcom/waze/ifs/ui/CameraPreview;->access$1(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v10}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v10

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mTop:F
    invoke-static {v10}, Lcom/waze/ifs/ui/CameraPreview;->access$2(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 522
    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v11}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v11

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mLeft:F
    invoke-static {v11}, Lcom/waze/ifs/ui/CameraPreview;->access$1(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v11

    iget-object v12, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v12}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v12

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mWidth:F
    invoke-static {v12}, Lcom/waze/ifs/ui/CameraPreview;->access$3(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v12

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 523
    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v11, v11

    iget-object v12, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v12}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v12

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mTop:F
    invoke-static {v12}, Lcom/waze/ifs/ui/CameraPreview;->access$2(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v12

    iget-object v13, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v13}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v13

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mHeight:F
    invoke-static {v13}, Lcom/waze/ifs/ui/CameraPreview;->access$4(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v13

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 521
    invoke-direct {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 524
    .local v6, r:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v8}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v8

    .line 525
    iget-object v9, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->aData:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->aData:[B

    array-length v11, v11

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 524
    #setter for: Lcom/waze/ifs/ui/CameraPreview;->mBitmapOut:Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/waze/ifs/ui/CameraPreview;->access$5(Lcom/waze/ifs/ui/CameraPreview;Landroid/graphics/Bitmap;)V

    .line 526
    if-eqz v3, :cond_0

    .line 527
    iget-object v8, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v8}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v8

    iget-object v9, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v9}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v9

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mBitmapOut:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/waze/ifs/ui/CameraPreview;->access$6(Lcom/waze/ifs/ui/CameraPreview;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/waze/utils/ImageUtils;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v9

    #setter for: Lcom/waze/ifs/ui/CameraPreview;->mBitmapOut:Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/waze/ifs/ui/CameraPreview;->access$5(Lcom/waze/ifs/ui/CameraPreview;Landroid/graphics/Bitmap;)V

    .line 539
    :cond_0
    :goto_2
    iget-object v8, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v8}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v8

    iget-object v9, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v9}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v9

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mBitmapOut:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/waze/ifs/ui/CameraPreview;->access$6(Lcom/waze/ifs/ui/CameraPreview;)Landroid/graphics/Bitmap;

    move-result-object v9

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #calls: Lcom/waze/ifs/ui/CameraPreview;->compressToBuffer(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)V
    invoke-static {v8, v9, v10}, Lcom/waze/ifs/ui/CameraPreview;->access$7(Lcom/waze/ifs/ui/CameraPreview;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v6           #r:Landroid/graphics/Rect;
    :goto_3
    iget-object v8, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v8}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v8

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mBitmapOut:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/waze/ifs/ui/CameraPreview;->access$6(Lcom/waze/ifs/ui/CameraPreview;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 547
    iget-object v8, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v8}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v8

    const/4 v9, 0x2

    #setter for: Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I
    invoke-static {v8, v9}, Lcom/waze/ifs/ui/CameraPreview;->access$8(Lcom/waze/ifs/ui/CameraPreview;I)V

    .line 552
    :goto_4
    new-instance v8, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize$1;

    invoke-direct {v8, p0}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize$1;-><init>(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;)V

    invoke-static {v8}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 560
    return-void

    .end local v2           #capturedPortrait:Z
    .end local v7           #requiredPortrait:Z
    :cond_1
    move v7, v9

    .line 514
    goto/16 :goto_0

    .restart local v7       #requiredPortrait:Z
    :cond_2
    move v2, v9

    .line 515
    goto/16 :goto_1

    .line 531
    .restart local v2       #capturedPortrait:Z
    :cond_3
    :try_start_1
    new-instance v6, Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v9}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v9

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mTop:F
    invoke-static {v9}, Lcom/waze/ifs/ui/CameraPreview;->access$2(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v10}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v10

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mLeft:F
    invoke-static {v10}, Lcom/waze/ifs/ui/CameraPreview;->access$1(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 532
    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v11}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v11

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mTop:F
    invoke-static {v11}, Lcom/waze/ifs/ui/CameraPreview;->access$2(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v11

    iget-object v12, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v12}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v12

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mHeight:F
    invoke-static {v12}, Lcom/waze/ifs/ui/CameraPreview;->access$4(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v12

    add-float/2addr v11, v12

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 533
    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v11, v11

    iget-object v12, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v12}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v12

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mLeft:F
    invoke-static {v12}, Lcom/waze/ifs/ui/CameraPreview;->access$1(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v12

    iget-object v13, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v13}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v13

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mWidth:F
    invoke-static {v13}, Lcom/waze/ifs/ui/CameraPreview;->access$3(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v13

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 531
    invoke-direct {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 534
    .restart local v6       #r:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v8}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v8

    .line 535
    iget-object v9, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->aData:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->aData:[B

    array-length v11, v11

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 534
    #setter for: Lcom/waze/ifs/ui/CameraPreview;->mBitmapOut:Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/waze/ifs/ui/CameraPreview;->access$5(Lcom/waze/ifs/ui/CameraPreview;Landroid/graphics/Bitmap;)V

    .line 536
    const/16 v8, 0x5a

    if-eq v3, v8, :cond_4

    const/16 v8, 0x10e

    if-ne v3, v8, :cond_5

    :cond_4
    add-int/lit8 v3, v3, -0x5a

    .line 537
    :cond_5
    iget-object v8, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v8}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v8

    iget-object v9, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v9}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v9

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mBitmapOut:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lcom/waze/ifs/ui/CameraPreview;->access$6(Lcom/waze/ifs/ui/CameraPreview;)Landroid/graphics/Bitmap;

    move-result-object v9

    add-int/lit8 v10, v3, 0x5a

    invoke-static {v9, v10}, Lcom/waze/utils/ImageUtils;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v9

    #setter for: Lcom/waze/ifs/ui/CameraPreview;->mBitmapOut:Landroid/graphics/Bitmap;
    invoke-static {v8, v9}, Lcom/waze/ifs/ui/CameraPreview;->access$5(Lcom/waze/ifs/ui/CameraPreview;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 540
    .end local v6           #r:Landroid/graphics/Rect;
    :catch_0
    move-exception v4

    .line 541
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 549
    .end local v4           #e:Ljava/io/IOException;
    :cond_6
    iget-object v8, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v8}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v8

    const/4 v9, 0x3

    #setter for: Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I
    invoke-static {v8, v9}, Lcom/waze/ifs/ui/CameraPreview;->access$8(Lcom/waze/ifs/ui/CameraPreview;I)V

    goto/16 :goto_4
.end method
