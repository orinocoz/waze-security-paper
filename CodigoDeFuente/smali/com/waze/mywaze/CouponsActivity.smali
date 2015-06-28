.class public Lcom/waze/mywaze/CouponsActivity;
.super Lcom/waze/view/web/SimpleWebActivity;
.source "CouponsActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;


# instance fields
.field public myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/waze/view/web/SimpleWebActivity;-><init>()V

    .line 13
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/CouponsActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 14
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/waze/view/web/SimpleWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f070100

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/CouponsActivity;->setTitleText(I)V

    .line 22
    return-void
.end method

.method public onUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/waze/mywaze/CouponsActivity;->loadUrl(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onWebViewSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/waze/mywaze/CouponsActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/waze/mywaze/MyWazeNativeManager;->getCouponsUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 27
    return-void
.end method
