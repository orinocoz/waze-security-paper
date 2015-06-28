.class public Lcom/waze/ifs/ui/CameraPreview$CaptureParams;
.super Ljava/lang/Object;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureParams"
.end annotation


# instance fields
.field private mCallback:Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;

.field private mCaptureCallbackActive:Z

.field private mImageFile:Ljava/lang/String;

.field private mImageFolder:Ljava/lang/String;

.field private mImageHeight:I

.field private mImageQuality:I

.field private mImageWidth:I

.field private mMaximizeCapture:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x100

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageWidth:I

    .line 449
    iput v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageHeight:I

    .line 450
    const/16 v0, 0x32

    iput v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageQuality:I

    .line 451
    const-string v0, "./"

    iput-object v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageFolder:Ljava/lang/String;

    .line 452
    const-string v0, "temp.jpg"

    iput-object v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageFile:Ljava/lang/String;

    .line 453
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCallback:Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCaptureCallbackActive:Z

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mMaximizeCapture:Z

    .line 419
    return-void
.end method

.method static synthetic access$0(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I
    .locals 1
    .parameter

    .prologue
    .line 449
    iget v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageHeight:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I
    .locals 1
    .parameter

    .prologue
    .line 448
    iget v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageWidth:I

    return v0
.end method

.method static synthetic access$2(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mMaximizeCapture:Z

    return v0
.end method

.method static synthetic access$3(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 454
    iput-boolean p1, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCaptureCallbackActive:Z

    return-void
.end method

.method static synthetic access$4(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;
    .locals 1
    .parameter

    .prologue
    .line 453
    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCallback:Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCaptureCallbackActive:Z

    return v0
.end method

.method static synthetic access$6(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)I
    .locals 1
    .parameter

    .prologue
    .line 450
    iget v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageQuality:I

    return v0
.end method

.method static synthetic access$7(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 452
    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageFile:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setCallback(Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;)V
    .locals 0
    .parameter "aVal"

    .prologue
    .line 441
    iput-object p1, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mCallback:Lcom/waze/ifs/ui/CameraPreview$CameraCallbacks;

    .line 442
    return-void
.end method

.method public setImageFile(Ljava/lang/String;)V
    .locals 0
    .parameter "aVal"

    .prologue
    .line 437
    iput-object p1, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageFile:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setImageFolder(Ljava/lang/String;)V
    .locals 0
    .parameter "aVal"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageFolder:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setImageHeight(I)V
    .locals 0
    .parameter "aVal"

    .prologue
    .line 425
    iput p1, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageHeight:I

    .line 426
    return-void
.end method

.method public setImageQuality(I)V
    .locals 0
    .parameter "aVal"

    .prologue
    .line 429
    iput p1, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageQuality:I

    .line 430
    return-void
.end method

.method public setImageWidth(I)V
    .locals 0
    .parameter "aVal"

    .prologue
    .line 421
    iput p1, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mImageWidth:I

    .line 422
    return-void
.end method

.method public setMaximizeCapture(Z)V
    .locals 0
    .parameter "aVal"

    .prologue
    .line 445
    iput-boolean p1, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mMaximizeCapture:Z

    .line 446
    return-void
.end method
