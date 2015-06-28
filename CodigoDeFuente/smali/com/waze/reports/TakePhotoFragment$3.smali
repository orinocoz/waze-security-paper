.class Lcom/waze/reports/TakePhotoFragment$3;
.super Ljava/lang/Object;
.source "TakePhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/waze/reports/TakePhotoFragment$3;->this$0:Lcom/waze/reports/TakePhotoFragment;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment$3;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #calls: Lcom/waze/reports/TakePhotoFragment;->lockOrientation()V
    invoke-static {v0}, Lcom/waze/reports/TakePhotoFragment;->access$3(Lcom/waze/reports/TakePhotoFragment;)V

    .line 164
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment$3;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mOkButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/waze/reports/TakePhotoFragment;->access$0(Lcom/waze/reports/TakePhotoFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment$3;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #calls: Lcom/waze/reports/TakePhotoFragment;->dimOkButton()V
    invoke-static {v0}, Lcom/waze/reports/TakePhotoFragment;->access$4(Lcom/waze/reports/TakePhotoFragment;)V

    .line 166
    iget-object v0, p0, Lcom/waze/reports/TakePhotoFragment$3;->this$0:Lcom/waze/reports/TakePhotoFragment;

    #getter for: Lcom/waze/reports/TakePhotoFragment;->mPreview:Lcom/waze/ifs/ui/CameraPreview;
    invoke-static {v0}, Lcom/waze/reports/TakePhotoFragment;->access$2(Lcom/waze/reports/TakePhotoFragment;)Lcom/waze/ifs/ui/CameraPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/ifs/ui/CameraPreview;->capture()V

    .line 167
    return-void
.end method
