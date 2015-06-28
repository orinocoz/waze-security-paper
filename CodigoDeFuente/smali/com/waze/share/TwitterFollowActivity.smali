.class public Lcom/waze/share/TwitterFollowActivity;
.super Lcom/waze/view/web/SimpleWebActivity;
.source "TwitterFollowActivity.java"

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

    iput-object v0, p0, Lcom/waze/share/TwitterFollowActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 16
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/waze/view/web/SimpleWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f070193

    invoke-virtual {p0, v0}, Lcom/waze/share/TwitterFollowActivity;->setTitleText(I)V

    .line 23
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/waze/share/TwitterFollowActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->foursquarePostConnect()V

    .line 37
    invoke-super {p0}, Lcom/waze/view/web/SimpleWebActivity;->onDestroy()V

    .line 38
    return-void
.end method

.method public onUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/waze/share/TwitterFollowActivity;->loadUrl(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method protected onUrlOverride(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 42
    const-string v1, "waze://dialog_hide_current"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const-string v1, "waze://browser_close"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    :cond_0
    invoke-virtual {p0, v0}, Lcom/waze/share/TwitterFollowActivity;->setResult(I)V

    .line 45
    invoke-virtual {p0}, Lcom/waze/share/TwitterFollowActivity;->finish()V

    .line 46
    const/4 v0, 0x1

    .line 48
    :cond_1
    return v0
.end method

.method public onWebViewSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/waze/share/TwitterFollowActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/waze/mywaze/MyWazeNativeManager;->getTwitterFollowUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 28
    return-void
.end method
