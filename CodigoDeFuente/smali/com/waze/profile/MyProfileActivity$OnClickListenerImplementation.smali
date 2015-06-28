.class final Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/profile/MyProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnClickListenerImplementation"
.end annotation


# instance fields
.field _bSetImage:Z

.field private _bSetNames:Z

.field private _email:Ljava/lang/String;

.field private _firstName:Ljava/lang/String;

.field _imageFile:Ljava/io/File;

.field private _lastName:Ljava/lang/String;

.field private _password:Ljava/lang/String;

.field private _username:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_bSetNames:Z

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 77
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 78
    iget-boolean v0, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_bSetNames:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_firstName:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_lastName:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_username:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_password:Ljava/lang/String;

    .line 80
    iget-object v5, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_email:Ljava/lang/String;

    .line 79
    invoke-virtual/range {v0 .. v5}, Lcom/waze/mywaze/MyWazeNativeManager;->setNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_bSetImage:Z

    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_imageFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->UploadProfileImage(Ljava/lang/String;)V

    .line 86
    :cond_1
    return-void
.end method

.method public setImage(Ljava/io/File;)V
    .locals 1
    .parameter "imageFile"

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_bSetImage:Z

    .line 72
    iput-object p1, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_imageFile:Ljava/io/File;

    .line 73
    return-void
.end method

.method public setNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "firstName"
    .parameter "lastName"
    .parameter "username"
    .parameter "password"
    .parameter "email"

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_bSetNames:Z

    .line 63
    iput-object p1, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_firstName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_lastName:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_username:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_password:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/waze/profile/MyProfileActivity$OnClickListenerImplementation;->_email:Ljava/lang/String;

    .line 68
    return-void
.end method
