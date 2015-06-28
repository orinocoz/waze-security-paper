.class Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize$1;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize$1;->this$2:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize$1;->this$2:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;
    invoke-static {v0}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;)Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    move-result-object v0

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v0}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v1

    iget-object v0, p0, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize$1;->this$2:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->this$1:Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;
    invoke-static {v0}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback$ProcessCaptureFullSize;)Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;

    move-result-object v0

    #getter for: Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->this$0:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v0}, Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;->access$1(Lcom/waze/ifs/ui/CameraPreview$CaptureCallback;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v0

    #getter for: Lcom/waze/ifs/ui/CameraPreview;->mCaptureStatus:I
    invoke-static {v0}, Lcom/waze/ifs/ui/CameraPreview;->access$9(Lcom/waze/ifs/ui/CameraPreview;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/waze/ifs/ui/CameraPreview;->callOnCaptureListener(Z)V
    invoke-static {v1, v0}, Lcom/waze/ifs/ui/CameraPreview;->access$10(Lcom/waze/ifs/ui/CameraPreview;Z)V

    .line 557
    return-void

    .line 556
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
