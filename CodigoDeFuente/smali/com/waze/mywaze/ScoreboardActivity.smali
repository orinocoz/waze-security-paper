.class public Lcom/waze/mywaze/ScoreboardActivity;
.super Lcom/waze/view/web/SimpleWebActivity;
.source "ScoreboardActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;


# instance fields
.field public myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/waze/view/web/SimpleWebActivity;-><init>()V

    .line 17
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/ScoreboardActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 18
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/waze/view/web/SimpleWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f0700fd

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/ScoreboardActivity;->setTitleText(I)V

    .line 25
    return-void
.end method

.method public onUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/waze/mywaze/ScoreboardActivity;->loadUrl(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method protected onUrlOverride(Ljava/lang/String;)Z
    .locals 6
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    const-string v4, "waze://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    .line 43
    .local v2, mgr:Lcom/waze/NativeManager;
    const-string v0, ""

    .line 46
    .local v0, decodedUrl:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    invoke-virtual {v2, v0}, Lcom/waze/NativeManager;->UrlHandler(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    invoke-virtual {p0, v0}, Lcom/waze/mywaze/ScoreboardActivity;->loadUrl(Ljava/lang/String;)V

    .line 58
    .end local v0           #decodedUrl:Ljava/lang/String;
    .end local v2           #mgr:Lcom/waze/NativeManager;
    :cond_0
    :goto_0
    return v3

    .line 47
    .restart local v0       #decodedUrl:Ljava/lang/String;
    .restart local v2       #mgr:Lcom/waze/NativeManager;
    :catch_0
    move-exception v1

    .line 48
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 58
    .end local v0           #decodedUrl:Ljava/lang/String;
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .end local v2           #mgr:Lcom/waze/NativeManager;
    :cond_1
    invoke-super {p0, p1}, Lcom/waze/view/web/SimpleWebActivity;->onUrlOverride(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method public onWebViewSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/waze/mywaze/ScoreboardActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/waze/mywaze/MyWazeNativeManager;->getScoreboardUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 30
    return-void
.end method
