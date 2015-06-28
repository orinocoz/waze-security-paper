.class public Lcom/waze/share/FacebookLikeActivity;
.super Lcom/waze/view/web/SimpleWebActivity;
.source "FacebookLikeActivity.java"


# instance fields
.field private mUrl:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/waze/share/FacebookLikeActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

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

    .line 22
    invoke-virtual {p0}, Lcom/waze/share/FacebookLikeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LikeUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/share/FacebookLikeActivity;->mUrl:Ljava/lang/String;

    .line 23
    const v0, 0x7f070192

    invoke-virtual {p0, v0}, Lcom/waze/share/FacebookLikeActivity;->setTitleText(I)V

    .line 24
    iget-object v0, p0, Lcom/waze/share/FacebookLikeActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/waze/share/FacebookLikeActivity;->loadUrl(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/waze/share/FacebookLikeActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->foursquarePostConnect()V

    .line 30
    invoke-super {p0}, Lcom/waze/view/web/SimpleWebActivity;->onDestroy()V

    .line 31
    return-void
.end method

.method protected onUrlOverride(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 35
    const-string v1, "waze://dialog_hide_current"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    const-string v1, "waze://browser_close"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    invoke-virtual {p0, v0}, Lcom/waze/share/FacebookLikeActivity;->setResult(I)V

    .line 38
    invoke-virtual {p0}, Lcom/waze/share/FacebookLikeActivity;->finish()V

    .line 39
    const/4 v0, 0x1

    .line 41
    :cond_1
    return v0
.end method
