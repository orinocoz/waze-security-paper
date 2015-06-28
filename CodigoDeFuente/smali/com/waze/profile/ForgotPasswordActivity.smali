.class public Lcom/waze/profile/ForgotPasswordActivity;
.super Lcom/waze/view/web/SimpleWebActivity;
.source "ForgotPasswordActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;


# instance fields
.field private myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/waze/view/web/SimpleWebActivity;-><init>()V

    .line 15
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/ForgotPasswordActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 16
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/waze/view/web/SimpleWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/profile/ForgotPasswordActivity;->setRequestedOrientation(I)V

    .line 23
    const v0, 0x7f070161

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/waze/profile/ForgotPasswordActivity;->setTitleText(IZ)V

    .line 24
    return-void
.end method

.method public onUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/waze/profile/ForgotPasswordActivity;->loadUrl(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public onWebViewSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/waze/profile/ForgotPasswordActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/waze/mywaze/MyWazeNativeManager;->getForgotPasswordUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 29
    return-void
.end method

.method protected passBackPresses()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method
