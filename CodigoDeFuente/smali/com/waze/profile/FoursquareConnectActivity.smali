.class public Lcom/waze/profile/FoursquareConnectActivity;
.super Lcom/waze/view/web/SimpleWebActivity;
.source "FoursquareConnectActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;


# instance fields
.field private myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/waze/view/web/SimpleWebActivity;-><init>()V

    .line 16
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/FoursquareConnectActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 17
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/waze/view/web/SimpleWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/profile/FoursquareConnectActivity;->setWebViewFlags(I)V

    .line 24
    const v0, 0x7f070176

    invoke-virtual {p0, v0}, Lcom/waze/profile/FoursquareConnectActivity;->setTitleText(I)V

    .line 25
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/waze/profile/FoursquareConnectActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->foursquarePostConnect()V

    .line 39
    invoke-super {p0}, Lcom/waze/view/web/SimpleWebActivity;->onDestroy()V

    .line 40
    return-void
.end method

.method public onUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/waze/profile/FoursquareConnectActivity;->loadUrl(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method protected onUrlOverride(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 44
    const-string v1, "waze://dialog_hide_current"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    const-string v1, "waze://browser_close"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    invoke-virtual {p0, v0}, Lcom/waze/profile/FoursquareConnectActivity;->setResult(I)V

    .line 47
    invoke-virtual {p0}, Lcom/waze/profile/FoursquareConnectActivity;->finish()V

    .line 48
    const/4 v0, 0x1

    .line 50
    :cond_1
    return v0
.end method

.method public onWebViewSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/waze/profile/FoursquareConnectActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/waze/mywaze/MyWazeNativeManager;->getFoursquareConnectUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 30
    return-void
.end method
