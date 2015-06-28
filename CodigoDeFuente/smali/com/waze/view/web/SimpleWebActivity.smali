.class public Lcom/waze/view/web/SimpleWebActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SimpleWebActivity.java"

# interfaces
.implements Lcom/waze/WzWebView$WebViewSizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient;
    }
.end annotation


# instance fields
.field protected final WAZE_URL_CLOSE:Ljava/lang/String;

.field protected final WAZE_URL_HIDE:Ljava/lang/String;

.field private mTitleBar:Lcom/waze/view/title/TitleBar;

.field private mWebViewLoadAnimation:Lcom/waze/view/map/ProgressAnimation;

.field private webView:Lcom/waze/WzWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 190
    const-string v0, "waze://dialog_hide_current"

    iput-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->WAZE_URL_HIDE:Ljava/lang/String;

    .line 191
    const-string v0, "waze://browser_close"

    iput-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->WAZE_URL_CLOSE:Ljava/lang/String;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/web/SimpleWebActivity;)Lcom/waze/view/title/TitleBar;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/view/web/SimpleWebActivity;)Lcom/waze/view/map/ProgressAnimation;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->mWebViewLoadAnimation:Lcom/waze/view/map/ProgressAnimation;

    return-object v0
.end method


# virtual methods
.method protected canGoBack()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    invoke-virtual {v0}, Lcom/waze/WzWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getWebView()Lcom/waze/WzWebView;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    return-object v0
.end method

.method protected loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    invoke-virtual {v0, p1}, Lcom/waze/WzWebView;->loadUrl(Ljava/lang/String;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/waze/view/web/SimpleWebActivity;->passBackPresses()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    invoke-virtual {v0}, Lcom/waze/WzWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    invoke-virtual {v0}, Lcom/waze/WzWebView;->goBack()V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030135

    invoke-virtual {p0, v0}, Lcom/waze/view/web/SimpleWebActivity;->setContentView(I)V

    .line 29
    const v0, 0x7f0907d0

    invoke-virtual {p0, v0}, Lcom/waze/view/web/SimpleWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    iput-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    .line 30
    const v0, 0x7f0907d1

    invoke-virtual {p0, v0}, Lcom/waze/view/web/SimpleWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/map/ProgressAnimation;

    iput-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->mWebViewLoadAnimation:Lcom/waze/view/map/ProgressAnimation;

    .line 32
    const v0, 0x7f0907d2

    invoke-virtual {p0, v0}, Lcom/waze/view/web/SimpleWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/WzWebView;

    iput-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    .line 33
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/WzWebView;->setFlags(I)V

    .line 34
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    invoke-virtual {v0}, Lcom/waze/WzWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    new-instance v1, Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient;

    invoke-direct {v1, p0}, Lcom/waze/view/web/SimpleWebActivity$MyWebChromeClient;-><init>(Lcom/waze/view/web/SimpleWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/WzWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 38
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    new-instance v1, Lcom/waze/view/web/SimpleWebActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/view/web/SimpleWebActivity$1;-><init>(Lcom/waze/view/web/SimpleWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/WzWebView;->setBackCallback(Lcom/waze/WzWebView$WebViewBackCallback;)V

    .line 43
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    new-instance v1, Lcom/waze/view/web/SimpleWebActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/view/web/SimpleWebActivity$2;-><init>(Lcom/waze/view/web/SimpleWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/WzWebView;->setUrlOverride(Lcom/waze/WzWebView$WebViewUrlOverride;)V

    .line 50
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    new-instance v1, Lcom/waze/view/web/SimpleWebActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/view/web/SimpleWebActivity$3;-><init>(Lcom/waze/view/web/SimpleWebActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/WzWebView;->setPageProgressCallback(Lcom/waze/WzWebView$WebViewPageProgressCallback;)V

    .line 67
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    invoke-virtual {v0, p0}, Lcom/waze/WzWebView;->setSizeCallback(Lcom/waze/WzWebView$WebViewSizeCallback;)V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    .line 86
    :cond_0
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 87
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    invoke-virtual {v0, p1}, Lcom/waze/WzWebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 116
    :cond_0
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    invoke-virtual {v0, p1}, Lcom/waze/WzWebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 108
    :cond_0
    return-void
.end method

.method protected onUrlOverride(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public onWebViewSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 98
    return-void
.end method

.method protected passBackPresses()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method protected setTitleStr(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    invoke-virtual {v0, p0, p1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected setTitleText(I)V
    .locals 1
    .parameter "resTitle"

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/waze/view/web/SimpleWebActivity;->setTitleText(IZ)V

    .line 136
    return-void
.end method

.method protected setTitleText(IZ)V
    .locals 2
    .parameter "resTitle"
    .parameter "showClose"

    .prologue
    .line 124
    if-eqz p2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    invoke-virtual {p0, p1}, Lcom/waze/view/web/SimpleWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    invoke-virtual {p0, p1}, Lcom/waze/view/web/SimpleWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setWebViewFlags(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/waze/view/web/SimpleWebActivity;->webView:Lcom/waze/WzWebView;

    invoke-virtual {v0, p1}, Lcom/waze/WzWebView;->setFlags(I)V

    .line 95
    :cond_0
    return-void
.end method
