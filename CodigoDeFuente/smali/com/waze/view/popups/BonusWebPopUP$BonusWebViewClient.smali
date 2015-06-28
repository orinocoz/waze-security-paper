.class final Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BonusWebPopUP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/view/popups/BonusWebPopUP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BonusWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/BonusWebPopUP;


# direct methods
.method private constructor <init>(Lcom/waze/view/popups/BonusWebPopUP;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;->this$0:Lcom/waze/view/popups/BonusWebPopUP;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/view/popups/BonusWebPopUP;Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;-><init>(Lcom/waze/view/popups/BonusWebPopUP;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;->this$0:Lcom/waze/view/popups/BonusWebPopUP;

    #getter for: Lcom/waze/view/popups/BonusWebPopUP;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/popups/BonusWebPopUP;->access$0(Lcom/waze/view/popups/BonusWebPopUP;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->stop()V

    .line 154
    iget-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;->this$0:Lcom/waze/view/popups/BonusWebPopUP;

    #getter for: Lcom/waze/view/popups/BonusWebPopUP;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/popups/BonusWebPopUP;->access$0(Lcom/waze/view/popups/BonusWebPopUP;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;->this$0:Lcom/waze/view/popups/BonusWebPopUP;

    #getter for: Lcom/waze/view/popups/BonusWebPopUP;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/waze/view/popups/BonusWebPopUP;->access$1(Lcom/waze/view/popups/BonusWebPopUP;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 158
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;->this$0:Lcom/waze/view/popups/BonusWebPopUP;

    #getter for: Lcom/waze/view/popups/BonusWebPopUP;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/popups/BonusWebPopUP;->access$0(Lcom/waze/view/popups/BonusWebPopUP;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/view/map/ProgressAnimation;->start()V

    .line 144
    iget-object v0, p0, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;->this$0:Lcom/waze/view/popups/BonusWebPopUP;

    #getter for: Lcom/waze/view/popups/BonusWebPopUP;->mProgressAnimation:Lcom/waze/view/map/ProgressAnimation;
    invoke-static {v0}, Lcom/waze/view/popups/BonusWebPopUP;->access$0(Lcom/waze/view/popups/BonusWebPopUP;)Lcom/waze/view/map/ProgressAnimation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 146
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 148
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    .line 121
    const-string v3, "tel:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 123
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 124
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient$1;-><init>(Lcom/waze/view/popups/BonusWebPopUP$BonusWebViewClient;Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 137
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v5

    .line 131
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    .line 133
    .local v2, mgr:Lcom/waze/NativeManager;
    invoke-virtual {v2, p2}, Lcom/waze/NativeManager;->UrlHandler(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
