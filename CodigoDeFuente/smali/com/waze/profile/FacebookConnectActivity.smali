.class public Lcom/waze/profile/FacebookConnectActivity;
.super Lcom/waze/view/web/SimpleWebActivity;
.source "FacebookConnectActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;


# static fields
.field public static final FROM_MENU_KEY:Ljava/lang/String; = "com.waze.facebook.frommenu"


# instance fields
.field private fromMenu:Z

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

    iput-object v0, p0, Lcom/waze/profile/FacebookConnectActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 18
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/waze/view/web/SimpleWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/waze/profile/FacebookConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 25
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "com.waze.facebook.frommenu"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/waze/profile/FacebookConnectActivity;->fromMenu:Z

    .line 27
    const v1, 0x7f070155

    iget-boolean v2, p0, Lcom/waze/profile/FacebookConnectActivity;->fromMenu:Z

    invoke-virtual {p0, v1, v2}, Lcom/waze/profile/FacebookConnectActivity;->setTitleText(IZ)V

    .line 28
    return-void

    .line 25
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/waze/profile/FacebookConnectActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0}, Lcom/waze/mywaze/MyWazeNativeManager;->facebookPostConnect()V

    .line 42
    invoke-super {p0}, Lcom/waze/view/web/SimpleWebActivity;->onDestroy()V

    .line 43
    return-void
.end method

.method public onUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/waze/profile/FacebookConnectActivity;->loadUrl(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method protected onUrlOverride(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string v2, "waze://dialog_hide_current"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const-string v2, "waze://browser_close"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    :cond_0
    iget-boolean v2, p0, Lcom/waze/profile/FacebookConnectActivity;->fromMenu:Z

    if-eqz v2, :cond_2

    .line 50
    invoke-virtual {p0, v1}, Lcom/waze/profile/FacebookConnectActivity;->setResult(I)V

    .line 51
    invoke-virtual {p0}, Lcom/waze/profile/FacebookConnectActivity;->finish()V

    .line 57
    :goto_0
    const/4 v1, 0x1

    .line 59
    :cond_1
    return v1

    .line 54
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/waze/profile/WelcomeDoneActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v1}, Lcom/waze/profile/FacebookConnectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onWebViewSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/waze/profile/FacebookConnectActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookConnectUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 33
    return-void
.end method
