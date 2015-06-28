.class Lcom/waze/reports/TakePhotoFragment$2;
.super Ljava/lang/Object;
.source "TakePhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/TakePhotoFragment;->setUpFragment()V
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
    iput-object p1, p0, Lcom/waze/reports/TakePhotoFragment$2;->this$0:Lcom/waze/reports/TakePhotoFragment;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/waze/reports/TakePhotoFragment$2;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v3}, Lcom/waze/reports/TakePhotoFragment;->access$2(Lcom/waze/reports/TakePhotoFragment;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/ifs/ui/CameraPreview;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 142
    .local v0, relX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/waze/reports/TakePhotoFragment$2;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v3}, Lcom/waze/reports/TakePhotoFragment;->access$2(Lcom/waze/reports/TakePhotoFragment;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/ifs/ui/CameraPreview;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 143
    .local v1, relY:F
    iget-object v2, p0, Lcom/waze/reports/TakePhotoFragment$2;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v2}, Lcom/waze/reports/TakePhotoFragment;->access$2(Lcom/waze/reports/TakePhotoFragment;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/waze/ifs/ui/CameraPreview;->focus(FF)V

    .line 145
    .end local v0           #relX:F
    .end local v1           #relY:F
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
