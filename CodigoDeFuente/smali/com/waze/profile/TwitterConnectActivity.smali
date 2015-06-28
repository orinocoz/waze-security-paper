.class public Lcom/waze/profile/TwitterConnectActivity;
.super Lcom/waze/view/web/SimpleWebActivity;
.source "TwitterConnectActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;


# static fields
.field public static final FROM_MENU_KEY:Ljava/lang/String; = "com.waze.twitter.frommenu"

.field public static final INITIAL_TWEET:Ljava/lang/String; = "com.waze.twitter.initial"


# instance fields
.field private fromMenu:Z

.field private initialTweet:Z

.field private myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/waze/view/web/SimpleWebActivity;-><init>()V

    .line 17
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/profile/TwitterConnectActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 18
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 22
    invoke-super {p0, p1}, Lcom/waze/view/web/SimpleWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/waze/profile/TwitterConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 25
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "com.waze.twitter.frommenu"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/waze/profile/TwitterConnectActivity;->fromMenu:Z

    .line 26
    if-eqz v0, :cond_1

    const-string v1, "com.waze.twitter.initial"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/waze/profile/TwitterConnectActivity;->initialTweet:Z

    .line 28
    const v1, 0x7f070177

    iget-boolean v2, p0, Lcom/waze/profile/TwitterConnectActivity;->fromMenu:Z

    invoke-virtual {p0, v1, v2}, Lcom/waze/profile/TwitterConnectActivity;->setTitleText(IZ)V

    .line 29
    return-void

    :cond_0
    move v1, v3

    .line 25
    goto :goto_0

    :cond_1
    move v2, v3

    .line 26
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/waze/profile/TwitterConnectActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->twitterPostConnect()V

    .line 43
    invoke-super {p0}, Lcom/waze/view/web/SimpleWebActivity;->onDestroy()V

    .line 44
    return-void
.end method

.method public onUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/waze/profile/TwitterConnectActivity;->loadUrl(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method protected onUrlOverride(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 48
    const-string v1, "waze://dialog_hide_current"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const-string v1, "waze://browser_close"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    :cond_0
    iget-boolean v1, p0, Lcom/waze/profile/TwitterConnectActivity;->fromMenu:Z

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p0, v0}, Lcom/waze/profile/TwitterConnectActivity;->setResult(I)V

    .line 52
    invoke-virtual {p0}, Lcom/waze/profile/TwitterConnectActivity;->finish()V

    .line 58
    :cond_1
    const/4 v0, 0x1

    .line 60
    :cond_2
    return v0
.end method

.method public onWebViewSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/waze/profile/TwitterConnectActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    iget-boolean v1, p0, Lcom/waze/profile/TwitterConnectActivity;->initialTweet:Z

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getTwitterConnectUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;IIZ)V

    .line 34
    return-void
.end method
