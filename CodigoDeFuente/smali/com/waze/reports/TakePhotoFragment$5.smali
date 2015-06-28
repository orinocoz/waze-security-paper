.class Lcom/waze/reports/TakePhotoFragment$5;
.super Ljava/lang/Object;
.source "TakePhotoFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    iput-object p1, p0, Lcom/waze/reports/TakePhotoFragment$5;->this$0:Lcom/waze/reports/TakePhotoFragment;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment$5;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #calls: Lcom/waze/reports/TakePhotoFragment;->setCaptureRect()V
    invoke-static {v1}, Lcom/waze/reports/TakePhotoFragment;->access$6(Lcom/waze/reports/TakePhotoFragment;)V

    .line 192
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment$5;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v1}, Lcom/waze/reports/TakePhotoFragment;->access$2(Lcom/waze/reports/TakePhotoFragment;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/ifs/ui/CameraPreview;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 193
    .local v0, vto:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 194
    return-void
.end method
