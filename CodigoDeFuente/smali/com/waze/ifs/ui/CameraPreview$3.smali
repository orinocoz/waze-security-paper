.class Lcom/waze/ifs/ui/CameraPreview$3;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/CameraPreview;->capture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/CameraPreview;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/CameraPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/CameraPreview$3;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 307
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview$3;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I
    invoke-static {v1}, Lcom/waze/ifs/ui/CameraPreview;->access$9(Lcom/waze/ifs/ui/CameraPreview;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 309
    :try_start_0
    const-string v1, "capture() - autoFocus timed out"

    invoke-static {v1}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview$3;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/waze/ifs/ui/CameraPreview;->access$11(Lcom/waze/ifs/ui/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 311
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview$3;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/waze/ifs/ui/CameraPreview;->access$11(Lcom/waze/ifs/ui/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    iget-object v5, p0, Lcom/waze/ifs/ui/CameraPreview$3;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;-><init>(Lcom/waze/ifs/ui/CameraPreview;Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "autoFocus timeout"

    invoke-static {v1, v0}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview$3;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    const/4 v2, 0x3

    #setter for: Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I
    invoke-static {v1, v2}, Lcom/waze/ifs/ui/CameraPreview;->access$8(Lcom/waze/ifs/ui/CameraPreview;I)V

    .line 315
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview$3;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    const/4 v2, 0x0

    #calls: Lcom/waze/ifs/ui/CameraPreview;->callOnCaptureListener(Z)V
    invoke-static {v1, v2}, Lcom/waze/ifs/ui/CameraPreview;->access$10(Lcom/waze/ifs/ui/CameraPreview;Z)V

    goto :goto_0
.end method
