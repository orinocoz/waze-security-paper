.class final Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;
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
    name = "ProcessCapture"
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
    .line 566
    iput-object p1, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-object p2, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->aData:[B

    .line 568
    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;[BLcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 566
    invoke-direct {p0, p1, p2}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;-><init>(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;[B)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;)Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;
    .locals 1
    .parameter

    .prologue
    .line 563
    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 572
    iget-object v3, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->aData:[B

    invoke-static {v3}, Lcom/waze/ifs/ui/CameraPreview$Exif;->getOrientation([B)I

    move-result v0

    .line 576
    .local v0, degrees:I
    iget-object v3, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->aData:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->aData:[B

    array-length v5, v5

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 580
    .local v1, imageBitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_9

    .line 585
    iget-object v3, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v3}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v3

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mHeight:F
    invoke-static {v3}, Lcom/waze/ifs/ui/CameraPreview;->access$4(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v3

    cmpl-float v3, v3, v6

    if-nez v3, :cond_6

    .line 588
    invoke-static {}, Lcom/waze/ifs/ui/CameraPreview;->access$0()Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    move-result-object v3

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageHeight:I
    invoke-static {v3}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$0(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v3

    .line 589
    invoke-static {}, Lcom/waze/ifs/ui/CameraPreview;->access$0()Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    move-result-object v4

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageWidth:I
    invoke-static {v4}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v4

    const/4 v5, 0x1

    .line 588
    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 592
    .local v2, scaledBitmap:Landroid/graphics/Bitmap;
    if-eq v2, v1, :cond_0

    .line 594
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 601
    :cond_0
    :goto_0
    invoke-static {}, Lcom/waze/ifs/ui/CameraPreview;->access$0()Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    move-result-object v3

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageHeight:I
    invoke-static {v3}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$0(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v3

    invoke-static {}, Lcom/waze/ifs/ui/CameraPreview;->access$0()Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    move-result-object v4

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageWidth:I
    invoke-static {v4}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v4

    if-le v3, v4, :cond_1

    .line 602
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 603
    :cond_1
    invoke-static {}, Lcom/waze/ifs/ui/CameraPreview;->access$0()Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    move-result-object v3

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageHeight:I
    invoke-static {v3}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$0(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v3

    invoke-static {}, Lcom/waze/ifs/ui/CameraPreview;->access$0()Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    move-result-object v4

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageWidth:I
    invoke-static {v4}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 604
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_7

    .line 607
    :cond_2
    const/16 v3, 0x5a

    if-eq v0, v3, :cond_3

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_4

    :cond_3
    add-int/lit8 v0, v0, -0x5a

    .line 608
    :cond_4
    add-int/lit8 v3, v0, 0x5a

    invoke-static {v2, v3}, Lcom/waze/utils/ImageUtils;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 615
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v3}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v3

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mHeight:F
    invoke-static {v3}, Lcom/waze/ifs/ui/CameraPreview;->access$4(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    .line 617
    iget-object v3, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v3}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v3

    .line 618
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v5}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v5

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mLeft:F
    invoke-static {v5}, Lcom/waze/ifs/ui/CameraPreview;->access$1(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 619
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v6}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v6

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mTop:F
    invoke-static {v6}, Lcom/waze/ifs/ui/CameraPreview;->access$2(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 620
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v7}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v7

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mWidth:F
    invoke-static {v7}, Lcom/waze/ifs/ui/CameraPreview;->access$3(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 621
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v8}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v8

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mHeight:F
    invoke-static {v8}, Lcom/waze/ifs/ui/CameraPreview;->access$4(Lcom/waze/ifs/ui/CameraPreview;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 618
    invoke-static {v2, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 617
    #setter for: Lcom/waze/ifs/ui/CameraPreview;->mBitmapOut:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/waze/ifs/ui/CameraPreview;->access$5(Lcom/waze/ifs/ui/CameraPreview;Landroid/graphics/Bitmap;)V

    .line 624
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 630
    :goto_2
    iget-object v3, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v3}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v4}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v4

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mBitmapOut:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/waze/ifs/ui/CameraPreview;->access$6(Lcom/waze/ifs/ui/CameraPreview;)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    #calls: Lcom/waze/ifs/ui/CameraPreview;->compressToBuffer(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)V
    invoke-static {v3, v4, v5}, Lcom/waze/ifs/ui/CameraPreview;->access$7(Lcom/waze/ifs/ui/CameraPreview;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 636
    iget-object v3, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v3}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v3

    const/4 v4, 0x2

    #setter for: Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I
    invoke-static {v3, v4}, Lcom/waze/ifs/ui/CameraPreview;->access$8(Lcom/waze/ifs/ui/CameraPreview;I)V

    .line 641
    .end local v2           #scaledBitmap:Landroid/graphics/Bitmap;
    :goto_3
    new-instance v3, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture$1;

    invoke-direct {v3, p0}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture$1;-><init>(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;)V

    invoke-static {v3}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 649
    return-void

    .line 598
    :cond_6
    move-object v2, v1

    .restart local v2       #scaledBitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 611
    :cond_7
    if-eqz v0, :cond_5

    .line 612
    invoke-static {v2, v0}, Lcom/waze/utils/ImageUtils;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_1

    .line 626
    :cond_8
    iget-object v3, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v3}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v3

    #setter for: Lcom/waze/ifs/ui/CameraPreview;->mBitmapOut:Landroid/graphics/Bitmap;
    invoke-static {v3, v2}, Lcom/waze/ifs/ui/CameraPreview;->access$5(Lcom/waze/ifs/ui/CameraPreview;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 638
    .end local v2           #scaledBitmap:Landroid/graphics/Bitmap;
    :cond_9
    iget-object v3, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v3}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v3

    const/4 v4, 0x3

    #setter for: Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I
    invoke-static {v3, v4}, Lcom/waze/ifs/ui/CameraPreview;->access$8(Lcom/waze/ifs/ui/CameraPreview;I)V

    goto :goto_3
.end method
