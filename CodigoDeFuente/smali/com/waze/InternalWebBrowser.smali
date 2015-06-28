.class public Lcom/waze/InternalWebBrowser;
.super Lcom/waze/view/web/SimpleWebActivity;
.source "InternalWebBrowser.java"


# instance fields
.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/waze/view/web/SimpleWebActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/waze/view/web/SimpleWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/waze/InternalWebBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 16
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 18
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/InternalWebBrowser;->mTitle:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/waze/InternalWebBrowser;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/waze/InternalWebBrowser;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/waze/InternalWebBrowser;->setTitleStr(Ljava/lang/String;)V

    .line 22
    :cond_0
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/InternalWebBrowser;->mUrl:Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lcom/waze/InternalWebBrowser;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/waze/InternalWebBrowser;->onUrl(Ljava/lang/String;)V

    .line 25
    :cond_1
    return-void
.end method

.method public onUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/waze/InternalWebBrowser;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/waze/InternalWebBrowser;->loadUrl(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public onWebViewSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 30
    return-void
.end method
