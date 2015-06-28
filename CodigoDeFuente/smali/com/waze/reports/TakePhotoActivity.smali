.class public Lcom/waze/reports/TakePhotoActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "TakePhotoActivity.java"

# interfaces
.implements Lcom/waze/reports/TakePhotoFragment$ITakePhoto;


# static fields
.field private static final IMAGE_FILE_NAME:Ljava/lang/String; = "newPlaceImage.jpg"

.field public static final INT_EXT_CAMERA_BUTTON_LOCATION:Ljava/lang/String; = "camera_button_location"

.field public static final INT_EXT_FILENAME:Ljava/lang/String; = "filename"

.field public static final INT_EXT_TRANSITION:Ljava/lang/String; = "transition"

.field public static final REC_EXT_CALL_INTENT:Ljava/lang/String; = "call_when_done"

.field public static final RET_EXT_FILE_NAME:Ljava/lang/String; = "file_name"


# instance fields
.field private mCameraButtonLocation:Landroid/os/Bundle;

.field private mToCallWhenDone:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/reports/TakePhotoActivity;->mCameraButtonLocation:Landroid/os/Bundle;

    .line 11
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 26
    if-ne p2, v0, :cond_0

    .line 27
    invoke-virtual {p0, v0}, Lcom/waze/reports/TakePhotoActivity;->setResult(I)V

    .line 28
    invoke-virtual {p0}, Lcom/waze/reports/TakePhotoActivity;->finish()V

    .line 30
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 31
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v1, "newPlaceImage.jpg"

    .line 39
    .local v1, fileName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/waze/reports/TakePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, caller:Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 41
    const-string v3, "call_when_done"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    const-string v3, "call_when_done"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcom/waze/reports/TakePhotoActivity;->mToCallWhenDone:Landroid/content/Intent;

    .line 44
    :cond_0
    const-string v3, "transition"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    const-string v3, "transition"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 46
    const-string v3, "camera_button_location"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/reports/TakePhotoActivity;->mCameraButtonLocation:Landroid/os/Bundle;

    .line 48
    :cond_1
    const-string v3, "filename"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    const-string v3, "filename"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    :cond_2
    const v3, 0x7f03005a

    invoke-virtual {p0, v3}, Lcom/waze/reports/TakePhotoActivity;->setContentView(I)V

    .line 54
    if-nez p1, :cond_3

    .line 55
    new-instance v2, Lcom/waze/reports/TakePhotoFragment;

    invoke-direct {v2, v1}, Lcom/waze/reports/TakePhotoFragment;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, fragment:Lcom/waze/reports/TakePhotoFragment;
    iget-object v3, p0, Lcom/waze/reports/TakePhotoActivity;->mCameraButtonLocation:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/waze/reports/TakePhotoFragment;->setAnimateButton(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/waze/reports/TakePhotoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0902cc

    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 59
    .end local v2           #fragment:Lcom/waze/reports/TakePhotoFragment;
    :cond_3
    return-void
.end method

.method public photoTaken(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "path"

    .prologue
    .line 63
    iget-object v1, p0, Lcom/waze/reports/TakePhotoActivity;->mToCallWhenDone:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/waze/reports/TakePhotoActivity;->mToCallWhenDone:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/waze/reports/TakePhotoActivity;->mToCallWhenDone:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/waze/reports/TakePhotoActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/waze/reports/TakePhotoActivity;->finish()V

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, ret:Landroid/content/Intent;
    const-string v1, "file_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/waze/reports/TakePhotoActivity;->setResult(ILandroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lcom/waze/reports/TakePhotoActivity;->finish()V

    goto :goto_0
.end method
