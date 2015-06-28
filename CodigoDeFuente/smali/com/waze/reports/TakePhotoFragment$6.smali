.class Lcom/waze/reports/TakePhotoFragment$6;
.super Ljava/lang/Object;
.source "TakePhotoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/TakePhotoFragment;->setCaptureRect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/TakePhotoFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/TakePhotoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/TakePhotoFragment$6;->this$0:Lcom/waze/reports/TakePhotoFragment;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 209
    iget-object v4, p0, Lcom/waze/reports/TakePhotoFragment$6;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mClearView:Landroid/view/View;
    invoke-static {v4}, Lcom/waze/reports/TakePhotoFragment;->access$7(Lcom/waze/reports/TakePhotoFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/waze/reports/TakePhotoFragment$6;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v5}, Lcom/waze/reports/TakePhotoFragment;->access$2(Lcom/waze/reports/TakePhotoFragment;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waze/ifs/ui/CameraPreview;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 210
    .local v2, top:F
    iget-object v4, p0, Lcom/waze/reports/TakePhotoFragment$6;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mClearView:Landroid/view/View;
    invoke-static {v4}, Lcom/waze/reports/TakePhotoFragment;->access$7(Lcom/waze/reports/TakePhotoFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/waze/reports/TakePhotoFragment$6;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v5}, Lcom/waze/reports/TakePhotoFragment;->access$2(Lcom/waze/reports/TakePhotoFragment;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waze/ifs/ui/CameraPreview;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 211
    .local v0, height:F
    iget-object v4, p0, Lcom/waze/reports/TakePhotoFragment$6;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mClearView:Landroid/view/View;
    invoke-static {v4}, Lcom/waze/reports/TakePhotoFragment;->access$7(Lcom/waze/reports/TakePhotoFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/waze/reports/TakePhotoFragment$6;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v5}, Lcom/waze/reports/TakePhotoFragment;->access$2(Lcom/waze/reports/TakePhotoFragment;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waze/ifs/ui/CameraPreview;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 212
    .local v1, left:F
    iget-object v4, p0, Lcom/waze/reports/TakePhotoFragment$6;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mClearView:Landroid/view/View;
    invoke-static {v4}, Lcom/waze/reports/TakePhotoFragment;->access$7(Lcom/waze/reports/TakePhotoFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/waze/reports/TakePhotoFragment$6;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v5}, Lcom/waze/reports/TakePhotoFragment;->access$2(Lcom/waze/reports/TakePhotoFragment;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waze/ifs/ui/CameraPreview;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 213
    .local v3, width:F
    iget-object v4, p0, Lcom/waze/reports/TakePhotoFragment$6;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v4}, Lcom/waze/reports/TakePhotoFragment;->access$2(Lcom/waze/reports/TakePhotoFragment;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/waze/ifs/ui/CameraPreview;->setCaptureRect(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 214
    return-void
.end method
