.class Lcom/waze/ifs/ui/CameraPreview$2;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


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
    iput-object p1, p0, Lcom/waze/ifs/ui/CameraPreview$2;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 7
    .parameter "success"
    .parameter "camera"

    .prologue
    .line 294
    :try_start_0
    const-string v1, "capture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "autoFocus done, success="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/waze/Logger;->v_(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview$2;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/waze/ifs/ui/CameraPreview;->access$11(Lcom/waze/ifs/ui/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    iget-object v5, p0, Lcom/waze/ifs/ui/CameraPreview$2;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;-><init>(Lcom/waze/ifs/ui/CameraPreview;Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "onAutoFocus"

    invoke-static {v1, v0}, Lcom/waze/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview$2;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    const/4 v2, 0x3

    #setter for: Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I
    invoke-static {v1, v2}, Lcom/waze/ifs/ui/CameraPreview;->access$8(Lcom/waze/ifs/ui/CameraPreview;I)V

    .line 299
    iget-object v1, p0, Lcom/waze/ifs/ui/CameraPreview$2;->this$0:Lcom/waze/ifs/ui/CameraPreview;

    const/4 v2, 0x0

    #calls: Lcom/waze/ifs/ui/CameraPreview;->callOnCaptureListener(Z)V
    invoke-static {v1, v2}, Lcom/waze/ifs/ui/CameraPreview;->access$10(Lcom/waze/ifs/ui/CameraPreview;Z)V

    goto :goto_0
.end method
