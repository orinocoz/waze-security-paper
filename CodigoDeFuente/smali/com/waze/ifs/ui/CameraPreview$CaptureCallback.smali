.class final Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaptureCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;,
        Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/CameraPreview;


# direct methods
.method private constructor <init>(Lcom/waze/ifs/ui/CameraPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/ifs/ui/CameraPreview;Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;-><init>(Lcom/waze/ifs/ui/CameraPreview;)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;
    .locals 1
    .parameter

    .prologue
    .line 495
    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    return-object v0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 5
    .parameter "aData"
    .parameter "aCamera"

    .prologue
    const/4 v4, 0x0

    .line 654
    invoke-static {}, Lcom/waze/ifs/ui/CameraPreview;->access$0()Lcom/waze/ifs/ui/CameraPreview$CaptureParams;

    move-result-object v3

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->mMaximizeCapture:Z
    invoke-static {v3}, Lcom/waze/ifs/ui/CameraPreview$CaptureParams;->access$2(Lcom/waze/ifs/ui/CameraPreview$CaptureParams;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 655
    new-instance v1, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;

    invoke-direct {v1, p0, p1, v4}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;-><init>(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;[BLcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;)V

    .line 656
    .local v1, processFullSize:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 661
    .end local v1           #processFullSize:Ljava/lang/Runnable;
    .local v2, th:Ljava/lang/Thread;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 663
    iget-object v3, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/waze/ifs/ui/CameraPreview;->access$11(Lcom/waze/ifs/ui/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 664
    return-void

    .line 658
    .end local v2           #th:Ljava/lang/Thread;
    :cond_0
    new-instance v0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;

    invoke-direct {v0, p0, p1, v4}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;-><init>(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;[BLcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCapture;)V

    .line 659
    .local v0, process:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .restart local v2       #th:Ljava/lang/Thread;
    goto :goto_0
.end method
