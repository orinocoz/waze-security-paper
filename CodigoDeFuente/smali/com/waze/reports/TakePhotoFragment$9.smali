.class Lcom/waze/reports/TakePhotoFragment$9;
.super Ljava/lang/Object;
.source "TakePhotoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/TakePhotoFragment;->onSize(Landroid/hardware/Camera$Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/TakePhotoFragment;

.field private final synthetic val$p:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/waze/reports/TakePhotoFragment;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/TakePhotoFragment$9;->this$0:Lcom/waze/reports/TakePhotoFragment;

    iput-object p2, p0, Lcom/waze/reports/TakePhotoFragment$9;->val$p:Landroid/view/ViewGroup$LayoutParams;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment$9;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v0}, Lcom/waze/reports/TakePhotoFragment;->access$2(Lcom/waze/reports/TakePhotoFragment;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment$9;->val$p:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    return-void
.end method
