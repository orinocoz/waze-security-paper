.class Lcom/waze/reports/TakePhotoFragment$8;
.super Ljava/lang/Object;
.source "TakePhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/TakePhotoFragment;->onCapture(Z)V
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
    iput-object p1, p0, Lcom/waze/reports/TakePhotoFragment$8;->this$0:Lcom/waze/reports/TakePhotoFragment;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 284
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment$8;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v1}, Lcom/waze/reports/TakePhotoFragment;->access$2(Lcom/waze/reports/TakePhotoFragment;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/ifs/ui/CameraPreview;->saveToFile()V

    .line 285
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment$8;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mSavedFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/waze/reports/TakePhotoFragment;->access$9(Lcom/waze/reports/TakePhotoFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, f:Ljava/io/File;
    iget-object v1, p0, Lcom/waze/reports/TakePhotoFragment$8;->this$0:Lcom/waze/reports/TakePhotoFragment;

    invoke-virtual {v1}, Lcom/waze/reports/TakePhotoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/waze/reports/TakePhotoFragment$ITakePhoto;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/waze/reports/TakePhotoFragment$ITakePhoto;->photoTaken(Landroid/net/Uri;Ljava/lang/String;)V

    .line 288
    const-string v1, "PLACES_TAKING_PHOTO_APPROVE_CLICKED"

    invoke-static {v1, v4, v4}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method
