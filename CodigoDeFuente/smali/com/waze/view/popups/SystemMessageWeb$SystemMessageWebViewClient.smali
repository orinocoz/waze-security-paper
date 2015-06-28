.class final Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SystemMessageWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/view/popups/SystemMessageWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SystemMessageWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/SystemMessageWeb;


# direct methods
.method private constructor <init>(Lcom/waze/view/popups/SystemMessageWeb;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient;->this$0:Lcom/waze/view/popups/SystemMessageWeb;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/view/popups/SystemMessageWeb;Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient;-><init>(Lcom/waze/view/popups/SystemMessageWeb;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient;->this$0:Lcom/waze/view/popups/SystemMessageWeb;

    #getter for: Lcom/waze/view/popups/SystemMessageWeb;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/popups/SystemMessageWeb;->access$0(Lcom/waze/view/popups/SystemMessageWeb;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->stop()V

    .line 128
    iget-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient;->this$0:Lcom/waze/view/popups/SystemMessageWeb;

    #getter for: Lcom/waze/view/popups/SystemMessageWeb;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/popups/SystemMessageWeb;->access$0(Lcom/waze/view/popups/SystemMessageWeb;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient;->this$0:Lcom/waze/view/popups/SystemMessageWeb;

    #getter for: Lcom/waze/view/popups/SystemMessageWeb;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/waze/view/popups/SystemMessageWeb;->access$1(Lcom/waze/view/popups/SystemMessageWeb;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 132
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient;->this$0:Lcom/waze/view/popups/SystemMessageWeb;

    #getter for: Lcom/waze/view/popups/SystemMessageWeb;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/popups/SystemMessageWeb;->access$0(Lcom/waze/view/popups/SystemMessageWeb;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->start()V

    .line 118
    iget-object v0, p0, Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient;->this$0:Lcom/waze/view/popups/SystemMessageWeb;

    #getter for: Lcom/waze/view/popups/SystemMessageWeb;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/popups/SystemMessageWeb;->access$0(Lcom/waze/view/popups/SystemMessageWeb;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 122
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    .line 95
    const-string v3, "tel:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 98
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient$1;-><init>(Lcom/waze/view/popups/SystemMessageWeb$SystemMessageWebViewClient;Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v5

    .line 105
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    .line 107
    .local v2, mgr:Lcom/waze/NativeManager;
    invoke-virtual {v2, p2}, Lcom/waze/NativeManager;->UrlHandler(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
